package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.EmployeeBean;
import com.svs.ensign.resort.dao.IN_EmployeeDAO;
import com.svs.ensign.resort.util.AppTrack;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;
import org.apache.log4j.Logger;

/**
 * C_EmployeeDAOImpl.java
 *
 * @author RaviKiran, Feb 3, 2014
 * @version 1.0
 *
 * Operations on C_EmployeeDAOImpl.java class.
 *
 * It will communicate with the tl_employee table in database.
 */
@Repository
public class C_EmployeeDAOImpl implements IN_EmployeeDAO {

    private HibernateTemplate ht;//HibernateTemplate Class Declaration 
    private List employeelist;
    private Session session;
    private boolean insertorupdate = false;
    final static Logger logger = Logger.getLogger(C_EmployeeDAOImpl.class.getName());
    JSONObject respObj = new JSONObject();

    /**
     * @param session autowiring the sessionfactory to the class by using
     * settermethod.
     *
     */
    @Autowired
    public void setSessionFactory(SessionFactory session1) {
        ht = new HibernateTemplate(session1);
        session = session1.openSession();
    }

    /**
     * @param EmployeeBean Getting from service class Saving the data in MySQL
     * by using hibernate temple Object.
     */
    @Override
    public boolean createEmployeeDetails(EmployeeBean cl_employeebean) {
        // TODO Auto-generated method stub
        long id = 0;

        id = (Long) ht.save(cl_employeebean);
        if (id != 0) {
            insertorupdate = true;
        }
        return insertorupdate;
    }

    @SuppressWarnings("unchecked")
    @Transactional
    @Override
    public JSONObject viewEmployees() {
        // TODO Auto-generated method stub
        employeelist = ht.find("from EmployeeBean");
        //System.out.println("Employee Bean List Size"+employeelist.size());
        respObj = C_Util_Misleneous.convBeanToJSNArray(employeelist);
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject checkForDesignation(String username) {
        // TODO Auto-generated method stub
        employeelist = ht.find("select eb.designation from EmployeeBean eb where eb.username=?", username);
        respObj = C_Util_Misleneous.convBeanToJSNArray(employeelist);
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewEmployeeById(long id) {
        // TODO Auto-generated method stub
        employeelist = ht.find("from EmployeeBean empb where empb.empno=?", id);
        respObj = C_Util_Misleneous.convBeanToJSNArray(employeelist);
        //System.out.println("Size is\t"+ employeelist.size());
        return respObj;
    }

    @SuppressWarnings("unchecked")
    @Transactional
    @Override
    public JSONObject getEmployeeDeptDes(String username) {
        // TODO Auto-generated method stub

        employeelist = ht.find("select empbean.department,empbean.designation from EmployeeBean empbean where empbean.username=?", username);
        respObj = C_Util_Misleneous.convBeanToJSNArray(employeelist);
        //System.out.println("Employee List"+employeelist.size());
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject allotedEmployees(String username) {
        // TODO Auto-generated method stub
        employeelist = ht.find("from EmployeeBean empbean where empbean.reportingto=(select emp.designation from EmployeeBean emp where emp.username=?)", username);
        respObj = C_Util_Misleneous.convBeanToJSNArray(employeelist);
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject getTeleCallerByDirectorId(String username) {
        // TODO Auto-generated method stub
        employeelist = ht.find("from EmployeeBean e1 where e1.reportingto=(select DISTINCT(e2.designation) from EmployeeBean e2 where e2.reportingto=(select e3.designation from EmployeeBean e3 where e3.username=?))", username);
        //System.out.println("Employee List"+employeelist.size());
        respObj = C_Util_Misleneous.convBeanToJSNArray(employeelist);
        return respObj;
    }

    @Override
    public boolean updateAllotment(long empno, String manager, String status) {
        // TODO Auto-generated method stub
        int updated = 0;
        Query updatequery = session.createQuery("update EmployeeBean emp set emp.manager=:manager ,emp.status=:status where emp.empno=:empno");
        updatequery.setString("manager", manager);
        updatequery.setString("status", status);
        updatequery.setLong("empno", empno);
        updated = updatequery.executeUpdate();
        //System.out.println("Updated "+updated);
        if (updated != 0) {
            insertorupdate = true;
        } else {

        }
        return insertorupdate;
    }

    @Transactional
    @Override
    public JSONObject viewByManagerId(String username) {
        // TODO Auto-generated method stub
        employeelist = ht.find("from EmployeeBean empbean where empbean.manager=?", username);
        //System.out.println("Employee List"+employeelist.size());
        respObj = C_Util_Misleneous.convBeanToJSNArray(employeelist);
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewSalesEmployeeByDirector(String username) {
        // TODO Auto-generated method stub
        employeelist = ht.find("from EmployeeBean e1 where e1.reportingto=(select distinct(e2.designation) from EmployeeBean e2 where e2.reportingto=(select e3.designation from EmployeeBean e3 where e3.username=?))", username);
        //System.out.println("Employee List"+employeelist.size());
        respObj = C_Util_Misleneous.convBeanToJSNArray(employeelist);
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewDirectorsByAdmin(String department, String reportingto) {
        // TODO Auto-generated method stub
        employeelist = ht.find("from EmployeeBean e1 where e1.department=? and e1.reportingto=?", department, reportingto);
        //System.out.println("Employee List"+employeelist.size());
        respObj = C_Util_Misleneous.convBeanToJSNArray(employeelist);
        return respObj;
    }

    @Override
    public JSONObject viewEmployeeList(String empid) {
        // TODO Auto-generated method stub
        employeelist = ht.find("from EmployeeBean emp where emp.username=?", empid);
        //System.out.println("Employee List\t"+employeelist.size());
        respObj = C_Util_Misleneous.convBeanToJSNArray(employeelist);
        return respObj;
    }

    @Override
    public boolean updateEmployeeDetails(EmployeeBean empbean) {
        // TODO Auto-generated method stub
        ht.update(empbean);

        return true;
    }

    @Override
    public JSONObject viewEmployeeByHRExecutive(String username) {
        // TODO Auto-generated method stub
        employeelist = ht.find("from EmployeeBean ");
        respObj = C_Util_Misleneous.convBeanToJSNArray(employeelist);
        return null;
    }

    @Override
    public JSONObject viewEmployee(String username) {

        try {
            logger.info("::Enter to EMployee Dao for username" + username);
            employeelist = ht.find("from EmployeeBean e where e.username=?", username);
            respObj = C_Util_Misleneous.convBeanToJSNArray(employeelist);
        } catch (Exception e) {
            AppTrack.error("Error in viewEmployee:::", e);
        }
        return respObj;
    }

}
