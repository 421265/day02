package com.document.dao;

import com.document.pojo.gouwuche;
import com.document.pojo.msginfo;
import com.document.pojo.sp_two;
import com.document.pojoExt.gw_sp;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class gouwuchedao {
    public msginfo addgwc(Integer uid, Integer spid, Integer num){
        msginfo msg=new msginfo();
        msg.setStatus(0);
        try {
            if(spid!=null&&num!=null){
                if(selspidj(uid,spid)){
                    //insert into
                    gouwuche gwc=new gouwuche();
                    gwc.setUid(uid);
                    gwc.setSpid(spid);
                    gwc.setNum(num);
                    if(jdbc.add(gwc)){
                        msg.setStatus(1);
                    }
                }else{
                    //update
                    String sql="update gouwuche set num=num+? where uid=? and spid=?;";
                    ArrayList<Object> ls=new ArrayList<>();
                    ls.add(num);
                    ls.add(uid);
                    ls.add(spid);
                    if(jdbc.fn(sql,ls)){
                        msg.setStatus(1);
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return msg;
    }

    /**
     * 查询当前用户是否存在该商品
     *
     * @param uid  用户id
     * @param spid  商品
     * @return true 不存在  false 存在
     * @throws Exception
     */
    private boolean selspidj(Integer uid,Integer spid)throws Exception{
        String sql="select * from gouwuche where uid="+uid+" and spid="+spid;
        List<gouwuche> ls=jdbc.select(sql,null,gouwuche.class);
        if(ls!=null&&ls.size()>0){
            return false;
        }
        return true;
    }


    public List<gw_sp> selgwc(Integer uid){
        String sql="select * from gouwuche a inner join sp_two b on a.spid=b.spid where a.uid="+uid;
        return jdbc.select(sql,null,gw_sp.class);
    }
}
