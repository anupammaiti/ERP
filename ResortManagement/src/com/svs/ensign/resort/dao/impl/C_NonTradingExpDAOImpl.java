package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.svs.ensign.resort.bean.NonTradingExpencesesBean;
import com.svs.ensign.resort.dao.IN_NonTradingExpDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import com.svs.ensign.resort.util.ConvertStackTracetoString;
import net.sf.json.JSONObject;
@Repository
public class C_NonTradingExpDAOImpl implements IN_NonTradingExpDAO {

	private HibernateTemplate ht;
	private Session session;
	private boolean insertorupdate=false;
	private List entertainmentexplist;
	private long id=0;
	private List<NonTradingExpencesesBean> nontradinglist;
        JSONObject respObj=new JSONObject();
	@Autowired
	ConvertStackTracetoString util_stos;
	final static Logger logger = Logger.getLogger(C_NonTradingExpDAOImpl.class.getName());
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		try{
			 ht = new HibernateTemplate(sessionfactory);
			 session=sessionfactory.openSession();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	@Override
	public boolean generateNonTradingExp(NonTradingExpencesesBean nontradingexp) {
		// TODO Auto-generated method stub
		Long id=(Long)ht.save(nontradingexp);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

	@Override
	public JSONObject viewNonTradingExpByExecutive(
			String username) {
		// TODO Auto-generated method stub
		try{
			
			nontradinglist=ht.find("from NonTradingExpencesesBean nteb where nteb.sno=?",username);
                       respObj= C_Util_Misleneous.convBeanToJSNArray(nontradinglist);
			//System.out.println("NontradingExp\t"+nontradinglist.size());
		}catch(Exception e){
			logger.error(util_stos.sendingErrorAsString(e));
		}
		return respObj;
	}

}
