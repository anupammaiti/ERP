package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.svs.ensign.resort.bean.EntertainmentExpencesesBean;
import com.svs.ensign.resort.dao.IN_EntertainmentExpDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import com.svs.ensign.resort.util.ConvertStackTracetoString;
import net.sf.json.JSONObject;
@Repository
public class C_EntertainmentExpDAOImpl implements IN_EntertainmentExpDAO {

	private HibernateTemplate ht;
	private Session session;
	private boolean insertorupdate=false;
	private List entertainmentexplist;
	private long id=0;
	private List<EntertainmentExpencesesBean> entertainexp;
	JSONObject respObj=new JSONObject();
	
	
	@Autowired
	ConvertStackTracetoString util_stos;
	final static Logger logger = Logger.getLogger(C_EntertainmentExpDAOImpl.class.getName());
	
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
	public boolean generateEntertainmentExp(
			EntertainmentExpencesesBean entertainmentexp) {
		// TODO Auto-generated method stub
		try{
				ht.save(entertainmentexp);
		if(id!=0){
			insertorupdate=true;
			
		}else{
			insertorupdate=false;
		}}catch(Exception e){
			
		}
		return insertorupdate;
	}


	@Override
	public JSONObject viewEntertainmentExpByExecutive(
			String username) {
		// TODO Auto-generated method stub
		entertainexp=ht.find("from EntertainmentExpencesesBean exb where exb.deltby=?",username);
		//System.out.println("EntertainExpense Size\t"+entertainexp.size());
                respObj=C_Util_Misleneous.convBeanToJSNArray(entertainexp);
		return respObj;
	}

}
