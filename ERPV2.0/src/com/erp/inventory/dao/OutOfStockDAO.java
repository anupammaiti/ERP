package com.erp.inventory.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.inventory.bean.OutOfStockNoticeBean;

public class OutOfStockDAO {
	private HibernateTemplate ht;
	private List outofstockreport;
@Autowired
public void setSessionFactory(SessionFactory session){
	ht=new HibernateTemplate(session);
}

public void createOutOfStock(OutOfStockNoticeBean outofstock){
	ht.save(outofstock);
}
public List viewOutOfStock(){
	outofstockreport=ht.find("from OutOfStockNoticeBean");
	return outofstockreport;
}

}
