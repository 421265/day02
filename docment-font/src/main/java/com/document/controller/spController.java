package com.document.controller;

import com.document.dao.sp_twodao;
import com.document.pojo.sp_two;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/sp")
public class spController {
    sp_twodao spdao=new sp_twodao();
    @RequestMapping(value = "/getsplist",method = RequestMethod.POST)
    public ResponseEntity<List<sp_two>> getsplist(){
        try{
            return ResponseEntity.ok(spdao.getsplals());
        }catch (Exception e){
            return ResponseEntity.ok(null);
        }
    }

    @RequestMapping(value = "/getsp",method = RequestMethod.POST)
    public ResponseEntity<sp_two> getsp(Integer id){
        try{
            return ResponseEntity.ok(spdao.getsp(id));
        }catch (Exception e){
            return ResponseEntity.ok(null);
        }
    }
}

