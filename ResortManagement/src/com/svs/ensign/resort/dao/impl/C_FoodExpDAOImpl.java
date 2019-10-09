package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.svs.ensign.resort.bean.FoodExcepensesBean;
import com.svs.ensign.resort.dao.IN_FoodExpDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import com.svs.ensign.resort.util.ConvertStackTracetoString;
import net.sf.json.JSONObject;
@Repository
public class C_FoodExpDAOImpl implements IN_FoodExpDAO {

	private HibernateTemplate ht;
	private Session session;
	private List pcjlist;
	private boolean insertorupdate=false;
	@Autowired
	ConvertStackTracetoString util_stos;
	final static Logger logger = Logger.getLogger(C_FoodExpDAOImpl.class.getName());
	private List<FoodExcepensesBean> foodexplist;
	JSONObject respObj=new JSONObject();
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	@Override
	public boolean generateFoodExp(FoodExcepensesBean foodexp) {
		// TODO Auto-generated method stub
		long id=(Long)ht.save(foodexp);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

	@Override
	public JSONObject viewFoodExpensesByExecutive(String username) {
		// TODO Auto-generated method stub
		try{
			foodexplist=ht.find("from FoodExcepensesBean feb where feb.deltby=?",username);
			//System.out.println("Food Expenses List\t"+foodexplist.size());
                        respObj=C_Util_Misleneous.convBeanToJSNArray(foodexplist);
		}catch(Exception e){
			logger.error(util_stos.sendingErrorAsString(e));
		}
		return respObj;
	}

}
