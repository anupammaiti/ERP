package com.svs.ensign.resort.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

public class C_ResortHelper {

	@Autowired
	DataSource ds;
	private Connection con;	

	public int generateEmployeeId() {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String last_number=null;
		int counter=0;
		try {
		con=ds.getConnection();
		
		pr=con.prepareStatement("select MAX(empno) from tl_employee");
		rs=pr.executeQuery();
		while(rs.next()) {
			last_number=rs.getString(1);
			break;
		}
		if(last_number==null) {
			last_number="1";
		}
		else {
			counter=Integer.parseInt(last_number)+1;
			////System.out.println("Counter\t:\t"+counter);
		}
		////System.out.println("Last of the List:\t"+last_number);
		con.close();
		pr.close();
	}catch(Exception e) {
		e.printStackTrace();
	}
		
		return counter;
	}

	public int generateGuestId() {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String last_number=null;
		int counter=0;
		try {
		con=ds.getConnection();
		int i=0;
		pr=con.prepareStatement("select  MAX(guestid) from tl_guest_user");
		rs=pr.executeQuery();
		while(rs.next()) {
			i++;
			last_number=rs.getString(1);
			break;
		}
		
		if(last_number==null) {
			last_number="1";
		}
		else {
			counter=Integer.parseInt(last_number)+1;
			////System.out.println("Counter\t:\t"+counter);
		}
		////System.out.println("Last of the List:\t"+counter);
		con.close();
		pr.close();
	}catch(Exception e) {
		e.printStackTrace();
	}
		
		return counter;
	}
	
	public int generateVillaId() {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String last_number=null;
		int counter=0;
		try {
		con=ds.getConnection();
		
		pr=con.prepareStatement("select MAX(sno) from tl_villatype LIMIT 1");
		rs=pr.executeQuery();
		while(rs.last()) {
			last_number=rs.getString(1);
			break;
		}
		if(last_number==null) {
			last_number="1";
		}
		else {
			counter=Integer.parseInt(last_number)+1;
			////System.out.println("Counter\t:\t"+counter);
		}
		////System.out.println("Last of the List:\t"+last_number);
		con.close();
		pr.close();
	}catch(Exception e) {
		e.printStackTrace();
	}
	
		
		return counter;
	}
	
	public int generateDepartmentId() {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String last_number=null;
		int counter=0;
		try {
		con=ds.getConnection();
		
		pr=con.prepareStatement("select MAX(sno) from tl_department");
		rs=pr.executeQuery();
		while(rs.next()) {
			last_number=rs.getString(1);
			break;
		}
		if(last_number==null) {
			last_number="1";
		}
		else {
			counter=Integer.parseInt(last_number)+1;
			////System.out.println("Counter\t:\t"+counter);
		}
		////System.out.println("Last of the List:\t"+last_number);
		con.close();
		pr.close();
	}catch(Exception e) {
		e.printStackTrace();
	}
		
		return counter;
	}
	
	public boolean isVillaUnique(String serialno) {
		boolean flag=false;
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String last_number=null;
		int counter=0;
		try {
		con=ds.getConnection();
		
		pr=con.prepareStatement("select MAX(sno)from tl_villatype where villa_id=?");
		pr.setString(1, serialno);
		rs=pr.executeQuery();
		while(rs.last()) {
			last_number=rs.getString(1);
			break;
		}
		if(last_number==null) {
			flag=true;
		}
		else {
			flag=false;
			////System.out.println("Counter\t:\t"+counter);
		}
		////System.out.println("Last of the List:\t"+last_number);
		con.close();
		pr.close();
	}catch(Exception e) {
		e.printStackTrace();
	}
		
		
	return false;
	}
	
	
		
		public Connection connection1()
		{
			try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/resort","root","root");
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
	
	
}
