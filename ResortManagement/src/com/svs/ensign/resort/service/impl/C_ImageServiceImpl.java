package com.svs.ensign.resort.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.svs.ensign.resort.bean.ImageCoordinatesBean;
import com.svs.ensign.resort.dao.IN_ImageCoordinateDAO;
import com.svs.ensign.resort.service.IN_ImageService;
import com.svs.ensign.resort.util.C_Util_Date;
@Service
public class C_ImageServiceImpl implements IN_ImageService {

	@Autowired
	IN_ImageCoordinateDAO in_imagecoordinatedao;
	@Autowired
	C_Util_Date util_date;
	
	@Override
	public void createCoordinates(ImageCoordinatesBean imagecoordinates) {
		// TODO Auto-generated method stub
		imagecoordinates.setGendate(C_Util_Date.generateDate());
		
		in_imagecoordinatedao.createImageCoordinates(imagecoordinates);
	}

}
