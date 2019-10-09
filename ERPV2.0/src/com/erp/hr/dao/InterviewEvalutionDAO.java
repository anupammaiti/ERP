package com.erp.hr.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.hr.bean.InterviewEvalutionBean;

public class InterviewEvalutionDAO {

	HibernateTemplate ht;
	List interviewevalution;
	
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}

	public void createInterviewEvalution(InterviewEvalutionBean interviewevalution){
		ht.save(interviewevalution);
	}
	
	public List viewInterviewEvalution(){
		
		interviewevalution=ht.find("from InterviewEvalutionBean");
		return interviewevalution;
	}
}
