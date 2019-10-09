package com.svs.finance.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

import com.svs.finance.dao.IN_CompanyRegistrationDAO;

public class C_FileUploadUtil {

	@Autowired
	ServletContext servletcontext;
	@Autowired 
	IN_CompanyRegistrationDAO in_companyregdao;
	@Value("${logo.folder}")String logofolder;

	
	
	 	private String UPLOAD_DIRECTORY = logofolder;
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
	public boolean generateAndStoreImagePath(HttpServletRequest request,HttpServletResponse response,String companyname){
		try{
			
		
		
		if (!ServletFileUpload.isMultipartContent(request)) {
            PrintWriter writer = response.getWriter();
            writer.println("Request does not contain upload data");
            writer.flush();
           
        }
		
		// System.out.println("File Path"+logofolder);
	        factory.setSizeThreshold(THRESHOLD_SIZE);
	        factory.setRepository(new File(logofolder));
	        upload = new ServletFileUpload(factory);
	        upload.setFileSizeMax(MAX_FILE_SIZE);
	        upload.setSizeMax(MAX_REQUEST_SIZE);
	         
	        // constructs the directory path to store upload file
	        uploadPath =logofolder;
	       
	        // creates the directory if it does not exist
	        uploadDir= new File(uploadPath);
	        System.out.println("Upload Directory"+uploadDir);
	       if (!uploadDir.exists()) {
	        	
	            uploadDir.mkdir();
	            System.out.println("Directory Created");
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
	                   //  System.out.println("File Saving Path\t"+filePath);
	                    // saves the file on disk
	                      item.write(storeFile);
	             //      System.out.println("File Shifted");
	            
	                }
	            }
	           // System.out.println("File Shifted to\t"+filePath);
	          directorycreated= in_companyregdao.updateCompanyLogoPath(companyname, filePath, fileName);
	          
	            request.setAttribute("message", "Upload has been done successfully!");
	        } catch (Exception ex) {
	            request.setAttribute("message", "There was an error: " + ex.getMessage());	       
	           ex.printStackTrace();
	            
	        }
	       
		return directorycreated;
	}
	
	
	public void insertImage(){
		try{
		 String fileName = "digital_image_processing.jpg";
         String website = "http://tutorialspoint.com/java_dip/images/"+fileName;
         
         System.out.println("Downloading File From: " + website);
         
         URL url = new URL(website);
         InputStream inputStream = url.openStream();
         OutputStream outputStream = new FileOutputStream(fileName);
         byte[] buffer = new byte[2048];
         
         int length = 0;
         
         while ((length = inputStream.read(buffer)) != -1) {
            System.out.println("Buffer Read of length: " + length);
            outputStream.write(buffer, 0, length);
         }
         
         inputStream.close();
         outputStream.close();
		
	
		}catch(Exception e){
		e.printStackTrace();
	}
	}
	

	
	
	
	
	
	
	
	
	
}
