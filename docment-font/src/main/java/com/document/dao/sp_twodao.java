package com.document.dao;

import com.document.pojo.sp_two;

import java.util.ArrayList;
import java.util.List;

public class sp_twodao {
    public List<sp_two> getsplals(){
        List<sp_two> ls=new ArrayList<>();
        String sql="select * from sp_two limit 0,6";
        ls=jdbc.select(sql,null,sp_two.class);
        return ls;
    }

    public sp_two getsp(Integer id){
        String sql="select * from sp_two where spid=?";
        List<Object> ls=new ArrayList<>();
        ls.add(id);
        List<sp_two> lls=jdbc.select(sql,ls,sp_two.class);
        if(lls!=null&&lls.size()>0){
            return lls.get(0);
        }
        return null;
    }

}
