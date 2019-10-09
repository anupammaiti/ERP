/**
 * 
 */
package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.PhoneBillExpencesesBean;
import net.sf.json.JSONObject;

/**
 * @author ravikiran
 *
 */
public interface IN_PhoneBillExpensesDAO {
	
	public boolean generatePhoneBillExpenses(PhoneBillExpencesesBean phonebill);
	public JSONObject viewPhoneBillExpensesByExecutive(String username);
	
}
