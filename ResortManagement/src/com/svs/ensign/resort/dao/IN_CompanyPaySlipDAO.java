/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.svs.ensign.resort.dao;

import com.svs.ensign.resort.bean.CompanyPaySlip;
import java.util.List;
import net.sf.json.JSONObject;

/**
 *
 * @author RAVIKIRAN
 */
public interface IN_CompanyPaySlipDAO {
    
    public JSONObject fetchCompanyPaySlip();
    public JSONObject generateCompanyPaySlip(CompanyPaySlip comppaySlip);
}
