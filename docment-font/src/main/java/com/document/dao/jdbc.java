package com.document.dao;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class jdbc {
    private final static String mysqlUser="root";  //数据库的用户名;

    private final static String mysqlPassword="2826132321"; //数据库的密码;


    private final static String mysqlUrl="localhost:3306/sc1902";//主机地址，主机端口，数据库名；

    //添加
    public static <T> boolean add(T obj) throws InvocationTargetException, IllegalAccessException {
        String c1 = obj.getClass().getName();
        c1 = c1.substring(c1.lastIndexOf(".")+1,c1.length());
        String sql = "insert into "+c1+" (";
        ArrayList<Object> arr = new ArrayList<>();
        Method[] m = obj.getClass().getMethods();
        String zd = "";
        String we ="";
        for (int i = 0; i < m.length; i++) {
            if(m[i].getName().indexOf("get")>=0&&!m[i].getName().equals("getClass")){
                Object v = null;
               v= m[i].invoke(obj);
               if(v!=null){
                    zd+=m[i].getName().replace("get","")+",";
                    we+="?,";
                    arr.add(v);
               }
            }
        }
        sql=sql+zd.substring(0,zd.length()-1)+") "+"values ("+we.substring(0,we.length()-1)+");";
        return fn(sql,arr);
    }

    //删除
    public static <T> boolean dele(Integer id,Class<T> obj){
        String strd = obj.getName();//com.kkkkk.lkkk类
        strd = "delete from "+strd.substring(strd.lastIndexOf(".") + 1, strd.length())+" where id=?";
        ArrayList<Object> ls= new ArrayList<>();
        ls.add(id);
        return fn(strd,ls);
    }

    //修改
    public static <T> boolean up(Integer id,T obj) throws InvocationTargetException, IllegalAccessException {
        String c1 = obj.getClass().getName();
        String c2 = c1.substring(c1.lastIndexOf(".")+1,c1.length());
        String sql="update "+c2+" set ";
        System.out.println(c2);
        ArrayList<Object> op = new ArrayList<>();
        Method[] m = obj.getClass().getMethods();
        for (int i = 0; i < m.length; i++) {
            if(m[i].getName().indexOf("get")>=0&&!m[i].getName().equals("getClass")){
                System.out.println(m[i].getName());
                Object val = null;
                val=m[i].invoke(obj);
                if(val!=null){
                    sql+=m[i].getName().replace("get","")+"=?,";
                    op.add(val);
                }
            }
        }
        sql=sql.substring(0,sql.length()-1)+" where id=?;";
        op.add(id);
        return fn(sql,op);
    }

    //查看
    public static <T> ArrayList<T> select(String sql, List<Object> arr,Class<T> obj){
        ArrayList<T> arr1 = new ArrayList<>();
        Connection conn = getConnection();
        PreparedStatement stmt;
        try {
            if (sql==null||sql.equals("")){
                return null;
            }
            stmt = conn.prepareStatement(sql);
            if(arr!=null&&arr.size()>0){
                for (int i = 1; i <= arr.size(); i++) {
                    stmt.setObject(i,arr.get(i-1));
                }
            }
            ResultSet resultSet = stmt.executeQuery();//执行查询指令
            ResultSetMetaData m = stmt.getMetaData();//获取 列信息
            while (resultSet.next()){
                T t = obj.newInstance();
                Method[] meth = t.getClass().getMethods();
                for (int i = 1; i < m.getColumnCount()+1; i++) {
                    String str = "set"+m.getColumnName(i);
                    for (int i1 = 0; i1 < meth.length; i1++) {
                        if(str.toUpperCase().equals(meth[i1].getName().toUpperCase())){
                            meth[i1].invoke(t,resultSet.getObject(i));
                            break;
                        }
                    }
                }
                arr1.add(t);
            }
        }catch (Exception e){
            System.out.println("查询数据失败" + e.getMessage());
        }
        return arr1;
    }
    //mysql链接
    public static Connection getConnection(){
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(
                    "jdbc:mysql://"+mysqlUrl+"?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC",mysqlUser,mysqlPassword);
        }catch(Exception e){
            System.out.println("数据库链接失败"+e.getMessage());
        }
        return con;
    }

    //封装公有

    public static Boolean fn(String sql,ArrayList<Object> ls){
        Connection conn = getConnection();
        PreparedStatement stmt;
        try {
            stmt = conn.prepareStatement(sql);
            if (ls != null && ls.size() > 0) {
                for (int i = 1; i <= ls.size(); i++) {
                    stmt.setObject(i, ls.get(i - 1));
                }
            }
            int count = stmt.executeUpdate();
            conn.close();    //关闭数据库连接
            return count > 0;
        }catch (Exception e){
            System.out.println("失败");
        }
        return false;
    }

}
