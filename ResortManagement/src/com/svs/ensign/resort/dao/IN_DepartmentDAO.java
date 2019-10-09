package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.DepartmentBean;
import net.sf.json.JSONObject;

public interface IN_DepartmentDAO {

	public boolean generateDepartment(DepartmentBean departmentbean);
	public JSONObject viewDepartment();
}
