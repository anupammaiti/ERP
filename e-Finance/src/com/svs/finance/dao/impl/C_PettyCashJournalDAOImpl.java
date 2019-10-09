package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.finance.bean.PettyCashBean;
import com.svs.finance.bean.PettycashjornalBean;
import com.svs.finance.dao.IN_PettyCashJournalDAO;
@Repository
public class C_PettyCashJournalDAOImpl implements IN_PettyCashJournalDAO {

	private HibernateTemplate ht;
	private Session session;
	private List pcjlist;
	private boolean insertorupdate=false;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	@Override
	public boolean createPettyCashJournal(PettycashjornalBean pettycashjournal) {
		// TODO Auto-generated method stub
		long id=(Long)ht.save(pettycashjournal);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}
	@Transactional
	@Override
	public List viewPettyCashJournalByExecutive(String username) {
		// TODO Auto-generated method stub
		pcjlist=ht.find("from PettyCashBean pcb where pcb.deltby=?",username);
		System.out.println("Petty Cash Journal List Size"+pcjlist.size());
		return pcjlist;
	}
	@Transactional
	@Override
	public List viewPettyCashJournalByManager(String username) {
		// TODO Auto-generated method stub
		pcjlist=ht.find("from PettyCashBean pcb where pcb.manager=?",username);
		System.out.println("Petty Cash size"+pcjlist.size());
		return pcjlist;
	}
	@Transactional
	@Override
	public List viewPettyCashJournalByDirector() {
		// TODO Auto-generated method stub
		pcjlist=ht.find("from PettyCashBean");
		System.out.println("Petty Cash "+pcjlist.size());
		return pcjlist;
	}

	@Override
	public boolean generatepettycashjournal(
			PettycashjornalBean pettycashjornalBean) {
		// TODO Auto-generated method stub
		long id=(long)ht.save(pettycashjornalBean);
		if(id!=0)
		{
			insertorupdate=true;
		}
		else
		{
			insertorupdate=false;
		}
		return insertorupdate;
	}
	}


