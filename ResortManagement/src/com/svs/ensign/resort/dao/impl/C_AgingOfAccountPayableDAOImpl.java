package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.svs.ensign.resort.bean.AggingaccountpaybleBean;
import com.svs.ensign.resort.dao.IN_AgingOfAccountPayableDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;

@Repository
public class C_AgingOfAccountPayableDAOImpl implements
		IN_AgingOfAccountPayableDAO {

	private HibernateTemplate ht;
	private List apprisiallist;
	private boolean insertorupdate=false;
	private Session session;
	private List<AggingaccountpaybleBean> agingofaccountpayablelist;
	JSONObject respObj=new JSONObject();
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	
	
	@Override
	public boolean generateAgingOfAccountPayable(
			AggingaccountpaybleBean agingofaccountpayable) {
		// TODO Auto-generated method stub
		long id=(Long)ht.save(agingofaccountpayable);
		if(id!=0){
			 insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		
		return insertorupdate;
	}



	@Override
	public JSONObject viewAggingOfAccountPayableByExecutive(
			String username) {
		// TODO Auto-generated method stub
		agingofaccountpayablelist=ht.find("from AggingaccountpaybleBean agpb where deltby=?",username);
		System.out.println("Aging Of account Payable\t"+agingofaccountpayablelist.size());
                respObj=C_Util_Misleneous.convBeanToJSNArray(agingofaccountpayablelist);
		return respObj;
	}

}
