package com.document.controller;

import com.document.dao.gouwuchedao;
import com.document.pojo.msginfo;
import com.document.pojo.user;
import com.document.pojoExt.gw_sp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/gwc")
public class gouwucheController {
    @Autowired
    private gouwuchedao gwcdao;
    //gouwuchedao gwcdao=new gouwuchedao()
    @RequestMapping(value = "/addgwc",method = RequestMethod.POST)
    public ResponseEntity<msginfo> getuser(HttpServletRequest request, Integer spid, Integer num){
        try {
            user us=(user)request.getSession().getAttribute("user");
            return ResponseEntity.ok(gwcdao.addgwc(us.getUid(),spid,num));
        }catch (Exception e){
            return ResponseEntity.ok(null);
        }
    }

    @RequestMapping(value = "/selgwsp",method = RequestMethod.POST)
    public ResponseEntity<List<gw_sp>> selgwsp(HttpServletRequest request){
        try {
            user us=(user)request.getSession().getAttribute("user");
            return ResponseEntity.ok(gwcdao.selgwc(us.getUid()));
        }catch (Exception e){
            return ResponseEntity.ok(null);
        }
    }
}
