package com.svs.util;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.svs.erp.company.DAO.CompanyRegistrationDAO;


/**
 * Servlet implementation class UploadLogos
 */
public class UploadLogos extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Properties_Util util_prop=new Properties_Util();
	
	
	
    private static final int THRESHOLD_SIZE     = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
    private boolean directorycreated=false;
   
    private String fileName =null;
    private String filePath=null;
    DiskFileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload=null;
    String uploadPath =null;
    File uploadDir=null;
	
    private CompanyRegistrationDAO compregdao=new CompanyRegistrationDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadLogos() {
        super();
        // TODO Auto-generated constructor stub
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
		String companyname=(String)request.getSession().getAttribute("companyname");
        //////System.out.println("CompanyName\t"+companyname);
		try{
			Properties prop=new Properties();
			prop=util_prop.getMessageUpload();
			 String UPLOAD_DIRECTORY =prop.getProperty("uploadlogo") ;		
			
			
			if (!ServletFileUpload.isMultipartContent(request)) {
	            PrintWriter writer = response.getWriter();
	            writer.println("Request does not contain upload data");
	            writer.flush();
	           
	        }
			
			 //////System.out.println("File Path"+UPLOAD_DIRECTORY);
		        factory.setSizeThreshold(THRESHOLD_SIZE);
		        factory.setRepository(new File(UPLOAD_DIRECTORY));
		        upload = new ServletFileUpload(factory);
		        upload.setFileSizeMax(MAX_FILE_SIZE);
		        upload.setSizeMax(MAX_REQUEST_SIZE);
		         
		        // constructs the directory path to store upload file
		        uploadPath =UPLOAD_DIRECTORY;
		       
		        // creates the directory if it does not exist
		        uploadDir= new File(uploadPath);
		        //////System.out.println("Upload Directory"+uploadDir);
		       if (!uploadDir.exists()) {
		        	
		            uploadDir.mkdir();
		            //////System.out.println("Directory Created");
		        }
			}catch(Exception e){
				e.printStackTrace();
			}
		        try {
		            // parses the request's content to extract file data
		            List formItems = upload.parseRequest(request);
		            Iterator iter = formItems.iterator();
		             
		            // iterates over form's fields
		            while (iter.hasNext()) {
		                FileItem item = (FileItem) iter.next();
		                // processes only fields that are not form fields
		                if (!item.isFormField()) {
		                     fileName = new File(item.getName()).getName();
		                     filePath = uploadPath + fileName;
		                    File storeFile = new File(filePath);
		                   //////System.out.println("File Saving Path\t"+filePath);
		                    // saves the file on disk
		                      item.write(storeFile);
		                   //////System.out.println("File Shifted");
		            
		                }
		            }
		            //////System.out.println("File Shifted to\t"+filePath);
		            compregdao.updateLogo(companyname, fileName);
		          
		            request.setAttribute("message", "Upload has been done successfully!");
		        } catch (Exception ex) {
		            request.setAttribute("message", "There was an error: " + ex.getMessage());	       
		           ex.printStackTrace();
		            
		        }
		        response.sendRedirect("index");
		       
	}

}
