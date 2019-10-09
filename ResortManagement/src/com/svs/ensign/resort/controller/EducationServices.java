/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.svs.ensign.resort.controller;

import com.svs.ensign.resort.service.SchoolSystemService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author RAVI KIRAN
 */
@Controller

public class EducationServices {

    @Autowired
    SchoolSystemService schoolsystemservice;

    JSONObject resObject = new JSONObject();

    @RequestMapping(value = "SchoolService.res/{uid}", method = {RequestMethod.GET, RequestMethod.POST})
    public JSONObject fetchEmployeeDetailsWithUserId(@PathVariable("uid") String uid) {
        System.out.println("userId:::::\t"+uid);
        schoolsystemservice.getGroupList(uid);
        return resObject;
    }

}
