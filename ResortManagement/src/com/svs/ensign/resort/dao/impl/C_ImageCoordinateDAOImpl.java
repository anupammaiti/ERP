package com.svs.ensign.resort.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.svs.ensign.resort.bean.ImageCoordinatesBean;
import com.svs.ensign.resort.dao.IN_ImageCoordinateDAO;
@Repository
public class C_ImageCoordinateDAOImpl implements IN_ImageCoordinateDAO {

	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
	}
	
	@Override
	public void createImageCoordinates(ImageCoordinatesBean imagecoordinate) {
		// TODO Auto-generated method stub
		ht.save(imagecoordinate);
	}

}
