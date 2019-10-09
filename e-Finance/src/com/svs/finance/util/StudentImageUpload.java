package com.svs.finance.util;

import java.io.File;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

import com.svs.finance.dao.IN_StudentDAO;

public class StudentImageUpload {

	


		@Value("${std.folder}")String memofolder;
		@Autowired
		IN_StudentDAO in_studdao;
		
		//Memo Image.
	 	private String UPLOAD_DIRECTORY1 = memofolder;//Student Image Uploading 
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
	public boolean generateAndStoreImagePath1(HttpServletRequest request,HttpServletResponse response,String companyname,String id){
		try{
			
		
		
		if (!ServletFileUpload.isMultipartContent(request)) {
	        PrintWriter writer = response.getWriter();
	        writer.println("Request does not contain upload data");
	        writer.flush();
	       
	    }
		
		// System.out.println("File Path"+logofolder);
	        factory.setSizeThreshold(THRESHOLD_SIZE);
	        factory.setRepository(new File(memofolder));
	        upload = new ServletFileUpload(factory);
	        upload.setFileSizeMax(MAX_FILE_SIZE);
	        upload.setSizeMax(MAX_REQUEST_SIZE);
	         
	        // constructs the directory path to store upload file
	        uploadPath =memofolder;
	       
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
	                     
	                     filePath= uploadPath + fileName;
	                    File storeFile = new File(filePath);
	                   //  System.out.println("File Saving Path\t"+filePath);
	                    // saves the file on disk
	                      item.write(storeFile);
	             //      System.out.println("File Shifted");
	            
	                }
	            }
	           // System.out.println("File Shifted to\t"+filePath);
	          directorycreated=  in_studdao.uploadStudentImage(companyname, filePath, fileName,id);
	          
	          
	            request.setAttribute("message", "Upload has been done successfully!");
	        } catch (Exception ex) {
	            request.setAttribute("message", "There was an error: " + ex.getMessage());	       
	           ex.printStackTrace();
	            
	        }
	       
		return directorycreated;
	}

	}

	
	

