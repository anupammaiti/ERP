package com.svs.ensign.resort.resources.reports;

import static com.svs.ensign.resort.resources.reports.C_FinanceReportController.logger;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperRunManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.svs.ensign.resort.util.AppTrack;
import com.svs.ensign.resort.util.C_Util_Misleneous;

@Controller
public class C_SalesReportController {

    @Autowired
    DataSource ds;
    @Value("${logo.folder}")
    String logofolder;
    String imagename = "svs_logo.gif";

    //Report For Ledger Details By Manager.
    @RequestMapping(value = "rep_fn_invoice_details_by_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateLedgerDetailsReportForManager(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            AppTrack.info("::Start of generateLedgerDetailsReportForManager method::");
            String username = request.getSession().getAttribute("username").toString();
            AppTrack.debug("::UserName::: for generateLedgerDetailsReportForManager method::: " + username);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_invoice_by_executive1.jasper");//Mapping jasper file to InputStream.
            /* URL url = new URL("svs_logo.gif");
		InputStream imagestream=url.openStream();
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        int n = 0;
        while (-1 != (n = imagestream.read(buffer))) {
            baos.write(buffer, 0, n);
        }
        baos.flush();
        byte[] imageInByte = baos.toByteArray();
        baos.close();
        InputStream in = new ByteArrayInputStream(imageInByte);
        BufferedImage bImageFromConvert = ImageIO.read(in);*/
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            //parameters.put("logo",bImageFromConvert);
            parameters.put("deltby", username);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);

            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            AppTrack.error("Error in C_SalesReportController ",sqlex);

        }
    }
    //Manager Task By Manager for a client.

    @RequestMapping(value = "rep_sl_taskmanager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateSalesManagerTask(HttpServletRequest request, HttpServletResponse response) {

        try {

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_sl_manager_task_by_manager.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("currentdate", request.getParameter("date1"));
            parameters.put("deltby", request.getParameter("deltby"));
            parameters.put("clientname", request.getParameter("clientname"));
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
             C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            AppTrack.error("Error in C_SalesReportController ",sqlex);

        }
    }

    //Manager task By Admin
    @RequestMapping(value = "rep_sl_taskmanager_by_admin.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateSalesManagerTaskByAdmin(HttpServletRequest request, HttpServletResponse response) {

        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_sl_manager_task_by_admin.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("currentdate", request.getParameter("date1"));
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            AppTrack.error("Error in C_SalesReportController ",sqlex);

        }
    }

    //Manager Daily Task by Manager
    @RequestMapping(value = "rep_sl_manager_daily_task.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateSalesManagerDailyTask(HttpServletRequest request, HttpServletResponse response) {

        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_sl_manager_daily_task_by_manager.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("currentdate", request.getParameter("date1"));
            parameters.put("deltby", request.getParameter("deltby"));
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
             C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            AppTrack.error("Error in C_SalesReportController ",sqlex);

        }
    }

    //Executive List.
    @RequestMapping(value = "rep_executive_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateExcutiveList(HttpServletRequest request, HttpServletResponse response, @RequestParam("uname") String managername) {

        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_executive_list.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("managername", managername);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            AppTrack.error("Error in C_SalesReportController ",sqlex);

        }
    }

    //Sales Customer List.
    @RequestMapping(value = "rep_sl_customers_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateSLCustomerList(HttpServletRequest request, HttpServletResponse response, @RequestParam("custid") String slcustid) {

        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_sl_customer.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("slcustid", slcustid);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            AppTrack.error("Error in C_SalesReportController ",sqlex);

        }
    }

    //Invoice Report By Executive.
    @RequestMapping(value = "rep_sl_invoice_by_executive_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateSLInvoiceByExcecutiveList(HttpServletRequest request, HttpServletResponse response,
            @RequestParam("invoiceno") String invoiceno, @RequestParam("srlno") String srlno,
            @RequestParam("name") String name) {

        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_sl_invoice_by_executive.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("invoiceno", invoiceno);
            parameters.put("srlno", srlno);
            parameters.put("name", name);
            String username = (String) request.getSession().getAttribute("username");
            parameters.put("deltby", username);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
           C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            AppTrack.error("Error in C_SalesReportController ",sqlex);

        }
    }
    //Invoice Report By Manager.

    @RequestMapping(value = "rep_sl_invoice_by_manager_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateSLInvoiceByManagerList(HttpServletRequest request, HttpServletResponse response,
            @RequestParam("invoiceno") String invoiceno) {

        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_sl_invoice_by_manager.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("invoiceno", invoiceno);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
             C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            AppTrack.error("Error in C_SalesReportController ",sqlex);

        }
    }

    //Invoice Report By Director.
    @RequestMapping(value = "rep_sl_invoice_by_director_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateSLInvoiceByDirectorList(HttpServletRequest request, HttpServletResponse response,
            @RequestParam("invoiceno") String invoiceno) {

        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_sl_invoice_by_manager.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("invoiceno", invoiceno);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
             C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            AppTrack.error("Error in C_SalesReportController ",sqlex);

        }
    }

    //ApprisalForm Report By Executive.
    @RequestMapping(value = "rep_sl_apprisal_by_executive_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateSLApprisalFormByExcecutiveList(HttpServletRequest request, HttpServletResponse response,
            @RequestParam("sno") long sno) {

        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_sl_ex_apprisalform.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("sno", sno);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            AppTrack.error("Error in C_SalesReportController ",sqlex);

        }
    }

    //OrderForm Report By Executive.
    @RequestMapping(value = "rep_sl_orderform_by_executive_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateSLOrderFormByExcecutiveList(HttpServletRequest request, HttpServletResponse response,
            @RequestParam("sno") long sno) {

        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_sl_ex_orderform.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("sno", sno);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            AppTrack.error("Error in C_SalesReportController ",sqlex);

        }
    }
    //OrderForm Report By Executive.

    @RequestMapping(value = "rep_sl_PurchaseOrder_by_executive_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateSLPurchaseOrderByExcecutiveList(HttpServletRequest request, HttpServletResponse response,
            @RequestParam("sno") long sno) {

        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_sl_ex_PurchaseOrder.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("sno", sno);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            AppTrack.error("Error in C_SalesReportController ",sqlex);

        }
    }
    //OrderForm Report By Executive.

    @RequestMapping(value = "rep_sl_SalesOrder_by_executive_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateSLSalesOrderByExcecutiveList(HttpServletRequest request, HttpServletResponse response,
            @RequestParam("sno") long sno) {

        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_sl_ex_salesorder.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("sno", sno);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            AppTrack.error("Error in C_SalesReportController ",sqlex);

        }
    }

    //OrderForm Report By Executive.
    @RequestMapping(value = "rep_sl_TelephoneSalesOrder_by_executive_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateSLTelephoneSalesOrderByExcecutiveList(HttpServletRequest request, HttpServletResponse response,
            @RequestParam("sno") long sno) {

        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_sl_ex_salesorder.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("sno", sno);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
             C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            AppTrack.error("Error in C_SalesReportController ",sqlex);

        }
    }

    //OrderForm Report By Executive.
    @RequestMapping(value = "rep_sl_SalesLogList_by_executive_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateSLSalesLogListByExcecutiveList(HttpServletRequest request, HttpServletResponse response,
            @RequestParam("sno") long sno) {

        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_sl_ex_saleslog.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("sno", sno);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
             C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            AppTrack.error("Error in C_SalesReportController ",sqlex);

        }
    }

    //OrderForm Report By Executive.
    @RequestMapping(value = "rep_sl_PettyCashJournal_by_executive_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateSLPettyCashJournalByExcecutiveList(HttpServletRequest request, HttpServletResponse response,
            @RequestParam("sno") long sno) {

        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_sl_ex_saleslog.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("sno", sno);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            AppTrack.error("Error in C_SalesReportController ",sqlex);

        }
    }

}
