package com.svs.ensign.resort.service.impl;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.svs.ensign.resort.bean.LoginBean;
import com.svs.ensign.resort.dao.IN_LoginDAO;
import com.svs.ensign.resort.service.IN_LoginService;
import com.svs.ensign.resort.util.AppTrack;
import net.sf.json.JSONObject;

@Service
public class C_LoginServiceImpl implements IN_LoginService {

	@Autowired
	IN_LoginDAO in_logindao;
	List loginstatus;
	int loginresult;
	Iterator<String> iter;
	private boolean insertorupdate=false;
        JSONObject respObj=new JSONObject();
	@Override
	public JSONObject checkLogin(String username, String password) {
		// TODO Auto-generated method stub
		
		String username1=null;
		////System.out.println("Sub String \t:"+username.substring(0, 5));
		//System.out.println("UserName\t:"+username);
		//System.out.println("Password\t:"+password);
                AppTrack.info("Login Service with username::::\t"+username+"Password::::\t"+password);
		respObj=in_logindao.checkLogin(username, password);
		
	//System.out.println("Login Status:\t"+loginstatus.size());
	
	return respObj;
	}

	@Override
	public boolean changePassword(LoginBean loginbean) {
		// TODO Auto-generated method stub
		//System.out.println(loginbean.getUsername());
		//System.out.println(loginbean.getPassword());
		//System.out.println(loginbean.getNewpassword());
		String username=loginbean.getUsername();
		String password=loginbean.getPassword();
		String newpassword=loginbean.getNewpassword();
		boolean iscorrect=in_logindao.passwordCheck(username, password);
		if(iscorrect){
			//System.out.println("Password To be changed");
			insertorupdate=in_logindao.edingLogin(username, password, newpassword);	
		}
		
		return insertorupdate;
	}
}
