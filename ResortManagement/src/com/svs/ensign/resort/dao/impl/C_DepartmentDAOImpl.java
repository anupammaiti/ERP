package com.svs.ensign.resort.dao.impl;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.DepartmentBean;
import com.svs.ensign.resort.dao.IN_DepartmentDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import java.util.List;
import net.sf.json.JSONObject;
@Repository
public class C_DepartmentDAOImpl implements IN_DepartmentDAO {

	private HibernateTemplate ht;
	private boolean insertorupdate;
	JSONObject respObj=new JSONObject();
        List<DepartmentBean> deptList=null;
	@Autowired
	public void setSessionFactory(SessionFactory session) {
		ht=new HibernateTemplate(session);
	}
	
	@Override
	public boolean generateDepartment(DepartmentBean departmentbean) {
		// TODO Auto-generated method stub
		long id=0;
		
		id=(Long)ht.save(departmentbean);
		if(id!=0){
			insertorupdate=true;
		}
		else{
			insertorupdate=false;
		}
		return insertorupdate;
	}
	@Transactional
	@Override
	public JSONObject viewDepartment() {
		// TODO Auto-generated method stub
                deptList=ht.find("from DepartmentBean");
                respObj = C_Util_Misleneous.convBeanToJSNArray(deptList);
		return respObj;
	}
}
