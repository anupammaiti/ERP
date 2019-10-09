package com.svs.helper;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class ClosingBalancePage
 */
public class ClosingBalancePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Logger logger = Logger.getLogger(ClosingBalancePage.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClosingBalancePage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
		HttpSession session=request.getSession();
		Properties prop=new Properties();
		String clb=prop.getProperty("clb");
		//String ss=request.getParameter("s");
		////////System.out.println("hi...........test"+ss);
			//to get the content type information from JSP Request Header
			String contentType = request.getContentType();
			//////System.out.println("hi...........1"+contentType);
			//here we are checking the content type is not equal to Null and as well as the passed data from mulitpart/form-data is greater than or equal to 0
			if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
		 		DataInputStream in = new DataInputStream(request.getInputStream());
				//we are taking the length of Content type data
				
				int formDataLength = request.getContentLength();
				//////System.out.println("hi...........2........"+formDataLength);
				byte dataBytes[] = new byte[formDataLength];
				////////System.out.println("hi...........3........"+dataBytes[].toString);
				int byteRead = 0;
				int totalBytesRead = 0;
				//this loop converting the uploaded file into byte code
				while (totalBytesRead < formDataLength) {
					byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
					totalBytesRead += byteRead;
					//////System.out.println("hi...........4........"+totalBytesRead);
					}

				String file = new String(dataBytes);
				////////System.out.println("hi...........5........"+file);
				//for saving the file name
				String saveFile = file.substring(file.indexOf("filename=\"") + 10);
				////////System.out.println("hi...........6........"+saveFile);
				saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
				//////System.out.println("hi...........5........"+saveFile);
				saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
				//////System.out.println("hi...........6........"+saveFile);
				int lastIndex = contentType.lastIndexOf("=");
				//////System.out.println("hi.......index......."+lastIndex);
				String boundary = contentType.substring(lastIndex + 1,contentType.length());
		////////System.out.println("hi..........8........"+boundary);
				int pos;
				//extracting the index of file 
				pos = file.indexOf("filename=\"");
				pos = file.indexOf("\n", pos) + 1;
				pos = file.indexOf("\n", pos) + 1;
				pos = file.indexOf("\n", pos) + 1;
				int boundaryLocation = file.indexOf(boundary, pos) - 4;
				int startPos = ((file.substring(0, pos)).getBytes()).length;
				//////System.out.println("hi...........7........"+startPos);
				int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
				//////System.out.println("hi..........8........"+endPos);
				// creating a new file with the same name and writing the content in new file
				FileOutputStream fileOut = new FileOutputStream(clb+""+saveFile);
				fileOut.write(dataBytes, startPos, (endPos - startPos));
				fileOut.flush();
			fileOut.close();
		//~~~~~~~~~~~~~~~~~~~~~~~~delete
		File f1 = new File(saveFile);
		 
		// boolean success = f1.delete();

		  //  if (!success){
		  
		  ////////System.out.println("Deletion failed.");
		 
		 //System.exit(0);
		// }
		//else{
		////////System.out.println("File deleted.");
		//}
		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		session.setAttribute("sheetnameclose",saveFile);}
			}catch(Exception e){
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
				 //out.println(saveFile); %></td></tr></table> <%
				
				response.sendRedirect("loadleavebalance");
				
	}

}
