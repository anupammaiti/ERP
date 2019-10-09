package com.svs.finance.dao;

import java.util.List;

import com.svs.finance.bean.StudentBean;

public interface IN_StudentDAO {
	
	public boolean generateStudent(StudentBean studenbean);
	
	public List<StudentBean> viewResultStudent(StudentBean stud);
	public boolean uploadMemoImages(String collegename,String imagePath,String imageName,String id);
	public boolean uploadStudentImage(String collegename,String imagePath,String imageName,String id);
	public List<StudentBean> viewResultPaid(StudentBean stbean);
	
	public List getRemainingPay(String enrollno);
	
	
}
