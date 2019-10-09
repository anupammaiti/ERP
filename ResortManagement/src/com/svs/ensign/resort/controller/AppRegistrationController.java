package com.svs.ensign.resort.controller;



import com.svs.ensign.resort.bean.AppRegistarionBean;
import com.svs.ensign.resort.util.AppTrack;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *   Document   : AppRegistrationController
 *   Created on : 26 Jun, 2016, 7:28:38 PM
 *   Author     : RAVI KIRAN
 * 
 */
@Controller
public class AppRegistrationController {
    
    

    @RequestMapping(value="appRegistration.res",method={RequestMethod.GET,RequestMethod.POST})
    public String genAppRegistration(ModelMap model){
        AppTrack.info("::::::::::::::::Application Registration::::::::::::::");
        model.addAttribute(new AppRegistarionBean());
        return "appRegistration";
    }
    @RequestMapping(value="appRegistrationForm.res",method={RequestMethod.GET,RequestMethod.POST})
    public String genrationAppRegistration(@ModelAttribute AppRegistarionBean appregi,ModelMap model){
        AppTrack.info(":::::::::::::::::::App Registration Form:::::::::::::::");
        return "redirect:appRegistration.res";
    }
}
