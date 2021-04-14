package com.document.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/")
public class index {
    @RequestMapping(value = "",method = RequestMethod.GET)
    public String index(){
        return  "index";
    }

    @RequestMapping(value = "address",method = RequestMethod.GET)
    public String getaddress(){
        return  "address";
    }

    @RequestMapping(value = "address_edit",method = RequestMethod.GET)
    public String getaddressit(){
        return  "address_edit";
    }

    @RequestMapping(value = "comment",method = RequestMethod.GET)
    public String getcomment(){
        return  "comment";
    }

    @RequestMapping(value = "error",method = RequestMethod.GET)
    public String geterror(){
        return  "error";
    }

    @RequestMapping(value = "favorite",method = RequestMethod.GET)
    public String getfavorite(){
        return  "favorite";
    }
    @RequestMapping(value = "flow",method = RequestMethod.GET)
    public String getflow(){
        return  "flow";
    }

    @RequestMapping(value = "flow2",method = RequestMethod.GET)
    public String getflow2(){
        return  "flow2";
    }
    @RequestMapping(value = "goods",method = RequestMethod.GET)
    public String getgoods(){
        return  "goods";
    }

    @RequestMapping(value = "list",method = RequestMethod.GET)
    public String getlist(){
        return  "list";
    }

    @RequestMapping(value = "login",method = RequestMethod.GET)
    public String getlogin(){
        return  "login";
    }

    @RequestMapping(value = "member",method = RequestMethod.GET)
    public String getmember(){
        return  "member";
    }

    @RequestMapping(value = "member_info",method = RequestMethod.GET)
    public String getmemberInfo(){
        return  "member_info";
    }

    @RequestMapping(value = "order",method = RequestMethod.GET)
    public String getorder(){
        return  "order";
    }

    @RequestMapping(value = "password_eidt",method = RequestMethod.GET)
    public String getpasswordEidt(){
        return  "password_eidt";
    }

    @RequestMapping(value = "register",method = RequestMethod.GET)
    public String getregister(){
        return  "register";
    }

    @RequestMapping(value = "okcc",method = RequestMethod.GET)
    public String getokcc(){
        return  "okcc";
    }
}
