package com.document.controller;


import com.document.dao.jdbc;
import com.document.dao.userdao;
import com.document.pojo.*;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.net.URLDecoder;
import java.util.ArrayList;

@Controller
@RequestMapping("/user")
public class userController {
    userdao udao = new userdao();
    @RequestMapping(value = "/adduser",method = RequestMethod.POST)
    public ResponseEntity<msginfo> setuser(user uu){
        try {
            return ResponseEntity.ok(udao.adduser(uu));
        }catch (Exception e){
            return ResponseEntity.ok(null);
        }
    }

    @RequestMapping(value = "/updateuser",method = RequestMethod.POST)
    public ResponseEntity<msginfo> updateuser(Integer updateid,user us){
        try {
            return ResponseEntity.ok(udao.adduser(us));
        }catch (Exception e){
            return ResponseEntity.ok(null);
        }
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public ResponseEntity<msginfo> login(HttpServletRequest request, String user, String pwd){
        try {
            return ResponseEntity.ok(udao.login(request,user,pwd));
        }catch (Exception e){
            return ResponseEntity.ok(null);
        }
    }
    @RequestMapping(value = "/getuser",method = RequestMethod.POST)
    public ResponseEntity<user> getuser(HttpServletRequest request){
        try {
            user us=(user)request.getSession().getAttribute("user");
            return ResponseEntity.ok(us);
        }catch (Exception e){
            return ResponseEntity.ok(null);
        }
    }





    @RequestMapping(value = "/member_info",method = RequestMethod.POST)
    public ResponseEntity<ArrayList<? extends user>> member(Integer uid){
        try {
            return ResponseEntity.ok(udao.mem(uid));
        }catch (Exception e){
            return ResponseEntity.ok(null);
        }
    }


}
