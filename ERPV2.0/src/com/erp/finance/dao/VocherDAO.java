package com.erp.finance.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.VocherTypeBean;

public class VocherDAO {

	private HibernateTemplate ht;
	List vocherlist;
	boolean status=false;
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}
	
	public void generateVocher(VocherTypeBean vochertype){
		ht.save(vochertype);
	}
	public boolean getVocherByName(String vname){
		List ll;
		
		ll=ht.find("from VocherTypeBean vtb where vtb.vochername=?",vname);
		if(ll.size()==0){
			status=true;
		}else
		{
			status=false;
		}
		return status;
	}
	public List getVocher(){
		vocherlist=ht.find("from VocherTypeBean");
		return vocherlist;
	}
}
