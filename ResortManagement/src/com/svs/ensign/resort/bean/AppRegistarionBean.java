/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.svs.ensign.resort.bean;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *   Document   : AppRegistarionBean
 *   Created on : 26 Jun, 2016, 7:36:04 PM
 *   Author     : RAVI KIRAN
 * 
 */
@Entity
@Table(name="tl_appRegistration")
public class AppRegistarionBean implements Serializable {
    @Id
    @GeneratedValue
    @Column(name="firstName")
    private String firstName;
    @Column(name="lastName")
    private String lastName;
    @Column(name="userName")
    private String userName;
    @Column(name="officeName")
    private String officeName;
    @Column(name="address")
    private String address;
    @Column(name="leaseTime")
    private String leaseTime;
    @Column(name="regDate")
    private String regDate;
    
    
}
