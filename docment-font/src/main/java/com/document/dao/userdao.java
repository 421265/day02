package com.document.dao;

import com.document.pojo.*;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

public class userdao {
    //注册接口
    public msginfo adduser(user us) throws InvocationTargetException, IllegalAccessException {
        msginfo m = new msginfo();
        m.setStatus(0);
        m.setMsg("注册失败");
        if(jdbc.add(us)){
            m.setStatus(1);
            m.setMsg("注册成功");
        }
        return m;
    }

    //登录接口
    public msginfo login(HttpServletRequest request,String name,String pwd){
        //select * from user where name=? and pwd=?

        msginfo msg=new msginfo();
        if(name!=null&&!name.equals("")&&pwd!=null&&!pwd.equals("")){
            String sql="select * from user where uname=? and password=?;";
            //select * from user WHERE uname='齐' and `password`='123456'
            List<Object> lst=new ArrayList<>();
            lst.add(name);
            lst.add(pwd);
            List<user> ls=jdbc.select(sql,lst,user.class);
            if(ls!=null&&ls.size()>0){
                //将登录对象0存到session中保存的key为'user'
                request.getSession().setAttribute("user",ls.get(0));
                msg.setStatus(1);
            }
        }
        return msg;
    }


    public ArrayList<? extends user> mem(Integer uid){
        user u = new user();
        ArrayList<? extends user> arr = jdbc.select("select * from user where uid="+uid+"",null,u.getClass());
        return arr;
    }


}
