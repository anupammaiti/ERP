package com.svs.finance.dao;

import java.util.List;

import com.svs.finance.bean.UniversityBean;

public interface IN_UniversityDAO {

	public boolean generateUniversity(UniversityBean uni);
	public List<UniversityBean> viewUniversityByCollege(String collegeName);
	public List<UniversityBean> viewUniversityById(long id);
	public boolean updateUniversity(UniversityBean univ);
	
}
