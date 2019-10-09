package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.SalesManagerTastBean;
import com.svs.ensign.resort.dao.IN_SalesManagerTaskDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;
@Repository
public class C_SalesManagerDAOImpl implements IN_SalesManagerTaskDAO {

	private HibernateTemplate ht;
	private Session session;
	private boolean insertorupdate=false;
	private List managertasklist;
        JSONObject respObj=new JSONObject();
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	@Override
	public boolean generateSalesManagerTask(
			SalesManagerTastBean salesmanagertask) {
		// TODO Auto-generated method stub
		long id=(Long)ht.save(salesmanagertask);
		if(id!=0){
			insertorupdate=true;
		}
		else{
			insertorupdate=false;
		}
		return insertorupdate;
	}
	@Transactional
	@Override
	public JSONObject viewSalesManagerTaskAdmin() {
		// TODO Auto-generated method stub
		managertasklist=ht.find("from SalesManagerTastBean");
                respObj=C_Util_Misleneous.convBeanToJSNArray(managertasklist);
		//System.out.println("SalesManager DAO");
		return respObj;
	}
	@Transactional
	@Override
	public JSONObject viewSalesManagerTaskByAdmin() {
		// TODO Auto-generated method stub
		managertasklist=ht.find("from SalesManagerTastBean");
		//System.out.println("SalesManager task\t"+managertasklist.size());
		respObj=C_Util_Misleneous.convBeanToJSNArray(managertasklist);
		return respObj;
	}

	@Override
	public int updateAccessController(String deltby, String accessby) {
		// TODO Auto-generated method stub
		Query updatequery=session.createQuery("update SalesManagerTastBean smb set smb.deltby=:accessby where smb.deltby=:deltby");
		updatequery.setString("accessby", accessby);
		updatequery.setString("deltby",deltby);
		int i=updatequery.executeUpdate();
		
		return i;
	}

}
