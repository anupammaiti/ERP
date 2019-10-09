package com.svs.helper;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class FetchingLogo
 */
public class FetchingLogo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ConnectionUtils conn=new ConnectionUtils();
	static Logger logger = Logger.getLogger(FetchingLogo.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FetchingLogo() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    private ServletContext servletContext;

	/** Initializes the Servlet and gets the Initial parameters */
	public void init(ServletConfig Conf) throws ServletException {
		super.init(Conf);
		
		try {
			servletContext = Conf.getServletContext();
		} catch (Exception ex) {
			logger.error(util_stacktrace.sendingErrorAsString(ex));
		}
	}


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //////System.out.println("*******************************Start*******************************");
		try {
			String companyname = request.getParameter("companyname");
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			//////System.out.println("CompanyName\t" + companyname);
			con = conn.getDBConnection();
			pr = con.prepareStatement("select logo_name from companyregistration where companyname=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();

			while (rs.next()) {
				// //////System.out.println("Company Registration Path\t"+rs.getString(1));

				actual_file = rs.getString(1);
			}
			
			String logo1 = "logos/" + actual_file;
			
			//////System.out.println("Image Path\t"+logo1);
			out.print(logo1);
			con.close();
		} catch (Exception e) {
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{
				//////System.out.println("search3.jsp::ConnectionPool--Before Close --->>>>Test");
				if (conn != null) conn.setDBClose();
				//////System.out.println("search3.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (Exception e)
			{
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}

		response.setContentType("plain/text");
	}

}
