package com.svs.ensign.resort.service.impl;

import java.util.List;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.svs.ensign.resort.bean.ApprisialFormBean;
import com.svs.ensign.resort.bean.InvoiceFormBean;
import com.svs.ensign.resort.bean.OrderFormBean;
import com.svs.ensign.resort.bean.PettyCashBean;
import com.svs.ensign.resort.bean.PurchaseOrderBean;
import com.svs.ensign.resort.bean.SalesCallLog;
import com.svs.ensign.resort.bean.SalesCustomerBean;
import com.svs.ensign.resort.bean.SalesManagerTastBean;
import com.svs.ensign.resort.bean.SalesOrderBean;
import com.svs.ensign.resort.bean.TelephoneSalesOderBean;
import com.svs.ensign.resort.dao.IN_ApprisialFormDAO;
import com.svs.ensign.resort.dao.IN_InvoiceDAO;
import com.svs.ensign.resort.dao.IN_OrderFormDAO;
import com.svs.ensign.resort.dao.IN_PettyCashJournalDAO;
import com.svs.ensign.resort.dao.IN_PurchaseOrderDAO;
import com.svs.ensign.resort.dao.IN_SalesCallLogDAO;
import com.svs.ensign.resort.dao.IN_SalesCustomerDAO;
import com.svs.ensign.resort.dao.IN_SalesManagerTaskDAO;
import com.svs.ensign.resort.dao.IN_SalesOrderDAO;
import com.svs.ensign.resort.dao.IN_TelephoneSalesDAO;
import com.svs.ensign.resort.service.IN_SalesService;
import com.svs.ensign.resort.util.C_Util_Date;

/**
 * C_SalesService.java
 *
 * @author SVS
 * @version 1.0
 *
 * It have the Logic about Sales Service.
 *
 */
@Service
public class C_SalesServiceImpl implements IN_SalesService {

    @Autowired
    IN_SalesCustomerDAO in_salescustdao;
    private boolean insertorupdate = false;
    @Autowired
    C_Util_Date util_date;
    @Autowired
    IN_InvoiceDAO in_invoicedao;
    @Autowired
    IN_PurchaseOrderDAO in_purchaseorderdao;
    @Autowired
    IN_ApprisialFormDAO in_apprisialformdao;
    @Autowired
    IN_OrderFormDAO in_orderformdao;
    @Autowired
    IN_SalesOrderDAO in_salesorderdao;
    @Autowired
    IN_TelephoneSalesDAO in_telephonesalesdao;
    @Autowired
    IN_SalesCallLogDAO in_salescalllogdao;
    @Autowired
    IN_PettyCashJournalDAO in_pettycashjournaldao;
    @Autowired
    IN_SalesManagerTaskDAO in_salesmanagerdao;
    JSONObject respObj = new JSONObject();
    private List slaeslist = null;

    /**
     * Generating Customer By Sales
     *
     * @param salescustomer Save the details of customer in sales department.
     * @param util_date this object is used for generating today's date.
     */
    @Override
    public boolean createCustomerBySales(SalesCustomerBean salescustomer) {
        // TODO Auto-generated method stub
        salescustomer.setGendate(C_Util_Date.generateDate());
        salescustomer.setStatus("NEW");
        insertorupdate = in_salescustdao.createSalesCustomer(salescustomer);
        return insertorupdate;
    }

    @Override
    public JSONObject viewSLCustomersByAdmin() {
        // TODO Auto-generated method stub

        return in_salescustdao.viewSLCustomerByAdmin();
    }

    @Override
    public JSONObject viewSLCustomerByManagerID(String username) {
        // TODO Auto-generated method stub

        return in_salescustdao.viewSLCustomerByManagerID(username);
    }

    @Override
    public JSONObject viewSLCustomerByExecuticeID(String username) {
        // TODO Auto-generated method stub

        return in_salescustdao.viewSLCustomerByExecutiveID(username);
    }

    /**
     * @param invoiceform Inserting data to database.
     * @param util_data By using this object we generated Today's Date.
     */
    @Override
    public boolean createInvoiceForm(InvoiceFormBean invoiceform) {
        // TODO Auto-generated method stub
        invoiceform.setGendate(C_Util_Date.generateDate());
        return in_invoicedao.createInvoice(invoiceform);
    }

    /**
     * @param username Getting user name from controller and display invoice for
     * that User Created.
     */
    @Override
    public JSONObject viewSLInvoiceByExecutiveID(String username) {
        // TODO Auto-generated method stub

        return in_invoicedao.viewInvoiceByExecutiveID(username);
    }

    @Override
    public JSONObject viewSLInvoiceByManagerID(String username) {
        // TODO Auto-generated method stub

        return in_invoicedao.viewInvoiceByManagerID(username);
    }

    @Override
    public JSONObject viewSLInvoiceByDirectorID(String username) {
        // TODO Auto-generated method stub

        return in_invoicedao.viewInvoiceByDirector(username);
    }

    @Override
    public JSONObject viewSLInvoiceByAdmin() {
        // TODO Auto-generated method stub

        return in_invoicedao.viewInvoiceByAdmin();
    }

    @Override
    public boolean createPurchaseOrder(PurchaseOrderBean purchaseorder) {
        // TODO Auto-generated method stub
        purchaseorder.setGendate(C_Util_Date.generateDate());
        return in_purchaseorderdao.createPurchaseOrder(purchaseorder);
    }

    @Override
    public boolean allottingCustomerToFnManager(SalesCustomerBean slcust, long id) {
        // TODO Auto-generated method stub
        long custid = id;
        String department = "Finance";
        String manager = slcust.getFnmanager();

        return in_salescustdao.allottingCustomerToFnManager(custid, department, manager);
    }

    @Override
    public JSONObject viewCustomerById(long id) {
        // TODO Auto-generated method stub

        return in_salescustdao.viewSLCustomerByID(id);
    }

    @Override
    public JSONObject viewSLCustomerListByFnManager(String username) {
        // TODO Auto-generated method stub

        return in_salescustdao.viewSLCustomerByFnManager(username);
    }

    @Override
    public JSONObject viewSLCustomerListByFnExecutor(String ussername) {
        // TODO Auto-generated method stub

        return null;
    }

    @Override
    public boolean allottedExecutiveToCustomer(SalesCustomerBean slc, long id) {
        // TODO Auto-generated method stub
        String fnexecutive = slc.getFnexecutive();

        return in_salescustdao.allottingExecutiveToCustomer(id, fnexecutive);
    }

    @Override
    public JSONObject viewCustomerByFnExecutive(String username) {
        // TODO Auto-generated method stub

        return in_salescustdao.viewSLCustomerByFnExecutor(username);
    }

    @Override
    public JSONObject viewSLCustomerByID(long id) {
        // TODO Auto-generated method stub

        return in_salescustdao.viewSLCustomerByID(id);
    }

    @Override
    public boolean createApprisialForm(ApprisialFormBean apprisial) {
        // TODO Auto-generated method stub
        apprisial.setGendate(C_Util_Date.generateDate());
        return in_apprisialformdao.createApprisialForm(apprisial);
    }

    @Override
    public boolean createOrderForm(OrderFormBean orderform) {
        // TODO Auto-generated method stub

        return in_orderformdao.createOrderForm(orderform);
    }

    @Override
    public boolean createTelephoneSalesOrder(
            TelephoneSalesOderBean telephonesalesorder) {
        // TODO Auto-generated method stub
        telephonesalesorder.setGendate(C_Util_Date.generateDate());
        return in_telephonesalesdao.createTelephoneSalesOrder(telephonesalesorder);
    }

    @Override
    public JSONObject viewApprisalFormByExecutive(String username) {
        // TODO Auto-generated method stub

        return in_apprisialformdao.viewApprisialFormByExecutive(username);
    }

    @Override
    public JSONObject viewApprisalFormBySLManager(String username) {
        // TODO Auto-generated method stub

        return in_apprisialformdao.viewApprisialFormByManager(username);
    }

    @Override
    public JSONObject viewApprisalFormByDirector() {
        // TODO Auto-generated method stub

        return in_apprisialformdao.viewApprisalFormByDirector();
    }

    @Override
    public JSONObject viewOrderFormByExecutive(String username) {
        // TODO Auto-generated method stub

        return in_orderformdao.viewOrderFormByExecutive(username);
    }

    @Override
    public JSONObject viewOrderByManager(String username) {
        // TODO Auto-generated method stub
        //System.out.println("Sales Order List\t"+slaeslist.size());
        return in_orderformdao.viewOrderFormByManager(username);
    }

    @Override
    public JSONObject viewOrderByDirector() {
        // TODO Auto-generated method stub
        return in_orderformdao.viewOrderFormByDirector();
    }

    @Override
    public JSONObject viewPurchaseOrderByExecutive(String username) {
        // TODO Auto-generated method stub

        return in_purchaseorderdao.viewPurchaseOrderByExecutive(username);
    }

    @Override
    public JSONObject viewPurchaseOrderByManager(String username) {
        // TODO Auto-generated method stub

        return in_purchaseorderdao.viewPurchaseOrderByManager(username);
    }

    @Override
    public JSONObject viewPurchaseOrderByDirector() {
        // TODO Auto-generated method stub

        return in_purchaseorderdao.viewPurchaseOrderByDirector();
    }

    @Override
    public JSONObject viewTelephoneSalesOrderByExecutive(String username) {
        // TODO Auto-generated method stub

        return in_telephonesalesdao.viewTelephoneSalesOrderByExecutive(username);
    }

    @Override
    public JSONObject viewTelephoneSalesOrderByManager(String username) {
        // TODO Auto-generated method stub

        return in_telephonesalesdao.viewTelephoneSalesOrderByManager(username);
    }

    @Override
    public JSONObject viewTelephoneSalesOderByDirector() {
        // TODO Auto-generated method stub

        return in_telephonesalesdao.viewTelephoneSalesOrderByDirector();
    }

    @Override
    public boolean createSalesOrder(SalesOrderBean salesoder) {
        // TODO Auto-generated method stub
        salesoder.setGendate(C_Util_Date.generateDate());
        return in_salesorderdao.createSalesOrder(salesoder);
    }

    @Override
    public JSONObject viewSalesOrderByExecutive(String username) {
        // TODO Auto-generated method stub
        return in_salesorderdao.viewSalesOrderByExecutive(username);
    }

    @Override
    public JSONObject viewSalesOrderByManager(String username) {
        // TODO Auto-generated method stub
        return in_salesorderdao.viewSalesOrderByManager(username);
    }

    @Override
    public JSONObject viewSalesOrderByDirector() {
        // TODO Auto-generated method stub
        return in_salesorderdao.viewSalesOrderByDirector();
    }

    @Override
    public boolean createSalesCallLog(SalesCallLog salescalllog) {
        // TODO Auto-generated method stub
        salescalllog.setGendate(C_Util_Date.generateDate());
        return in_salescalllogdao.createSalesCallLog(salescalllog);
    }

    @Override
    public JSONObject viewSalesCallLogByExecutive(String username) {
        // TODO Auto-generated method stub

        return in_salescalllogdao.viewSalesCallLogByExecutive(username);
    }

    @Override
    public JSONObject viewSalesCallLogByManager(String username) {
        // TODO Auto-generated method stub
        return in_salescalllogdao.viewSalesCallLogByManager(username);
    }

    @Override
    public JSONObject viewSalesCallLogByDirector() {
        // TODO Auto-generated method stub
        return in_salescalllogdao.viewSalesCallLogByDirector();
    }

    @Override
    public boolean createPettyCashJournal(PettyCashBean pettycashjournal) {
        // TODO Auto-generated method stub
        pettycashjournal.setGendate(C_Util_Date.generateDate());
        return in_pettycashjournaldao.createPettyCashJournal(pettycashjournal);
    }

    @Override
    public JSONObject viewPettyCashJournalByExecutive(String username) {
        // TODO Auto-generated method stub
        return in_pettycashjournaldao.viewPettyCashJournalByExecutive(username);
    }

    @Override
    public JSONObject viewPettyCashJournalByManager(String username) {
        // TODO Auto-generated method stub
        return in_pettycashjournaldao.viewPettyCashJournalByManager(username);
    }

    @Override
    public JSONObject viewPettyCashJournalByDirector() {
        // TODO Auto-generated method stub
        return in_pettycashjournaldao.viewPettyCashJournalByDirector();
    }

    @Override
    public JSONObject viewFnInvoiceByExecutive(String username) {
        // TODO Auto-generated method stub
        in_invoicedao.viewInvoiceByExecutiveID(username);
        return in_invoicedao.viewInvoiceByExecutiveID(username);
    }

    @Override
    public JSONObject viewFnInvoiceByManager(String username) {
        // TODO Auto-generated method stub

        return in_invoicedao.viewInvoiceByManagerID(username);
    }

    @Override
    public JSONObject viewFnInvoiceByDirector() {
        // TODO Auto-generated method stub
        String username = null;
        return in_invoicedao.viewInvoiceByDirector(username);
    }

    @Override
    public boolean generateSalesManagerTask(
            SalesManagerTastBean salesmanagertask) {
        // TODO Auto-generated method stub
        salesmanagertask.setDate1(C_Util_Date.generateDate());
        return in_salesmanagerdao.generateSalesManagerTask(salesmanagertask);
    }

    @Override
    public JSONObject viewSalesManagerTaskByAdmin() {
        // TODO Auto-generated method stub

        return in_salesmanagerdao.viewSalesManagerTaskAdmin();
    }

    @Override
    public JSONObject loadInvoiceGrid() {
        // TODO Auto-generated method stub

        return null;
    }

}
