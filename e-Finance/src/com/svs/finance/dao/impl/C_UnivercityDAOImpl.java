package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.UniversityBean;
import com.svs.finance.dao.IN_UniversityDAO;

public class C_UnivercityDAOImpl implements IN_UniversityDAO {

	private HibernateTemplate ht;
	private Session session;
	private List<UniversityBean> unilist;
	private boolean insertorupdate=false;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	
	@Override
	public boolean generateUniversity(UniversityBean uni) {
		// TODO Auto-generated method stub
		long id=(Long)ht.save(uni);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<UniversityBean> viewUniversityByCollege(String collegeName) {
		// TODO Auto-generated method stub
		
		unilist=ht.find("from UniversityBean ub where ub.collegename=?",collegeName);
		System.out.println("University List Size\t"+unilist.size());
		
		return unilist;
	}


	@Override
	public List<UniversityBean> viewUniversityById(long id) {
		// TODO Auto-generated method stub
		unilist=ht.find("from UniversityBean ub where ub.id=?",id);
		System.out.println("University List Size\t"+unilist.size());
		return unilist;
	}


	@Override
	public boolean updateUniversity(UniversityBean univ) {
		// TODO Auto-generated method stub
		Query updatequery=session.createQuery("update UniversityBean ub set ub.universityname=:uname,ub.course=:course,ub.fees=:fees,ub.collegename=:cname where ub.sno=:sno");
		updatequery.setString("uname", univ.getUniversityname());
		updatequery.setString("course", univ.getCourse());
		updatequery.setString("fees", univ.getFees());
		updatequery.setString("cname", univ.getCollegename());
		updatequery.setLong("sno", univ.getSno());
		
		int id=updatequery.executeUpdate();
		
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		
		return insertorupdate;
	}

}
