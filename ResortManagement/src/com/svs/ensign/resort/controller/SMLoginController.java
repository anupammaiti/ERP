/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.svs.ensign.resort.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONObject;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Document : SMLoginController Created on : 20 Jun, 2016, 9:59:50 PM Author :
 * RAVI KIRAN
 *
 */
@Controller
public class SMLoginController {
    
     final static Logger logger = Logger.getLogger(SMLoginController.class);
     
    @RequestMapping(value = "SMClientLogin.res/{data}", method = {RequestMethod.GET, RequestMethod.POST})
    public JSONObject thickLoginCheck(ModelMap model, HttpServletRequest request, HttpServletResponse response,@PathVariable String data ) {
        JSONObject responseObj=new JSONObject();
        try {
            System.out.println("Hello You had enter into SMClient Login");
            String userName="sm_ravi";
            String password="sm_ravi";
            if(userName.equalsIgnoreCase(""))
                response.getWriter().println("You Hit the Server");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        }
        return responseObj;
    }
    
    @RequestMapping(value="logihit.res",method={RequestMethod.GET,RequestMethod.POST})
    public @ResponseBody JSONObject gettingData(@RequestParam(value="" , required=false,defaultValue="New") String name){
        JSONObject jobj=new JSONObject();
        
        return jobj;
    }

}
