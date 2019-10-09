package com.svs.finance.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.StudentBean;
import com.svs.finance.dao.IN_StudentDAO;

public class C_StudentDAOImpl implements IN_StudentDAO {

	private HibernateTemplate ht;
	private List<StudentBean> stlist=new ArrayList();
	private boolean insertorupdate=false;
	private Session session;
	
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	@Override
	public boolean generateStudent(StudentBean studenbean) {
		// TODO Auto-generated method stub
		long id=(Long)ht.save(studenbean);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

	@Override
	public List<StudentBean> viewResultStudent(StudentBean stud) {
		// TODO Auto-generated method stub
		Query selectq=session.createQuery("from StudentBean st where st.entrollno=:enrl or st.rcno=:rcno or st.name=:name or phoneno=:phoneno or email=:email or course=:course or university=:university");
		selectq.setString("enrl", stud.getEntrollno());
		selectq.setString("rcno", stud.getRcno());
		selectq.setString("name", stud.getName());
		selectq.setString("phoneno", stud.getPhoneno());
		selectq.setString("email",stud.getEmail());
		selectq.setString("course",stud.getCourse());
		selectq.setString("university", stud.getUniversity());
		stlist=selectq.list();
		System.out.println("Studen List\t"+stlist.size());
		return stlist;
	}

	@Override
	public boolean uploadMemoImages(String collegename, String imagePath,
			String imageName,String id1) {
		// TODO Auto-generated method stub
		Query updatequery=session.createQuery("update StudentBean sb set sb.collegename=:comp,sb.imagePath=:imgpath,sb.filename=:imgname where sb.entrollno=:id");
		updatequery.setString("comp",collegename);
		updatequery.setString("imgpath", imagePath);
		updatequery.setString("imgname",imageName);
		updatequery.setString("id", id1);
		long id=updatequery.executeUpdate();
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

	@Override
	public boolean uploadStudentImage(String collegename, String imagePath,
			String imageName, String id1) {
		// TODO Auto-generated method stub
		Query updatequery=session.createQuery("update StudentBean sb set sb.collegename=:comp,sb.studentImage=:imgname where sb.entrollno=:id");
		updatequery.setString("comp",collegename);
		updatequery.setString("imgname",imageName);
		updatequery.setString("id", id1);
		long id=updatequery.executeUpdate();
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

	@Override
	public List<StudentBean> viewResultPaid(StudentBean stbean) {
		// TODO Auto-generated method stub
		Query selectquery=session.createQuery("from StudentBean st where st.entrollno=:enroll or st.rcno=:rcno or course=:course or university=:university");
		selectquery.setString("enroll",stbean.getEntrollno() );
		selectquery.setString("rcno", stbean.getRcno());
		selectquery.setString("course", stbean.getCourse());
		selectquery.setString("university", stbean.getUniversity());
		stlist=selectquery.list();
		return stlist;
	}

	@Override
	public List getRemainingPay(String enrollno) {
		// TODO Auto-generated method stub
		System.out.println("Enroll No\t"+enrollno);
		Query amountpay=session.createSQLQuery("select SUM(totalpaid),SUM(paid),SUM(balance) from tl_student  where entrollno=:entroll");
		amountpay.setString("entroll", enrollno);
		List paylist=amountpay.list();
		
		StudentBean stbean=new StudentBean();
		System.out.println("PayList Size\t"+paylist.size());
		for(int i=0;i<paylist.size();i++){
		paylist.get(i);
		}
		return paylist;
	}

}
