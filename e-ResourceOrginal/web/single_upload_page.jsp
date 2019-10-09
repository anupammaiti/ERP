<%@ page import="java.io.*" %>
<%
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
		FileOutputStream fileOut = new FileOutputStream("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/e-Resource/csv/"+""+saveFile);
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
		%><Br><table border="2"><tr><td><b>You have successfully upload the file by the name of:</b>
		<% //out.println(saveFile); %></td></tr></table> <%
		session.setAttribute("sheetname",saveFile);
		response.sendRedirect("loadtomysqlinout1");
		}
%>
