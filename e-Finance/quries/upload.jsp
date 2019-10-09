<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%!
private byte[] getImage(String filename) {
byte[] result = null;
String fileLocation = filename;
File f = new File(fileLocation);
result = new byte[(int)f.length()];
try {
FileInputStream in = new FileInputStream(fileLocation);
in.read(result);
}
catch(Exception ex) {
System.out.println("GET IMAGE PROBLEM :: "+ex);
ex.printStackTrace();
}
return result;
}
%>
<%
String saveFile="";
String contentType = request.getContentType();
if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();

response.reset();
response.setHeader("Content-Disposition", "inline");
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Expires", "0");
response.setContentType("image/jpg");
byte[] image = getImage(saveFile);
OutputStream outputStream = response.getOutputStream();
outputStream.write(image);
outputStream.close();
}
%>