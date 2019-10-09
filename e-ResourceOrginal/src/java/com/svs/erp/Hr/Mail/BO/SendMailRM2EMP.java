package com.svs.erp.Hr.Mail.BO;


import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import java.security.Security;
import java.util.*;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Service.*;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.svs.util.ConvertStackTracetoString;

import java.util.*;


public class SendMailRM2EMP {
	
	static Logger logger = Logger.getLogger(SendMailRM2EMP.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();

//	private static final String SMTP_HOST_NAME = "smtp.gmail.com";
	private static final String SMTP_HOST_NAME = "smtpout.secureserver.net";
	private static final String SMTP_PORT = "465";
	private static String emailMsgTxt =null;
	private static String emailSubjectTxt = null;
	private static String emailFromAddress = null;
	private static final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
	private static String[] sendTo =new String[1000];
	private ArrayList coll=new ArrayList();
	
	public  static String fromid=null;
	public static String password1=null;
	private  static String[] addressCC=new String[1000];
	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public String sendmail2emp(String emailid,String from1,String password,String sub,String body)throws Exception
	{

//////System.out.println("from ..mail.........."+from1);
//////System.out.println("to mail.........."+emailid);
fromid=from1;
////////System.out.println("FROMID........."+from1);
password1=password;

//emailMsgTxt=request.getParameter("msgbody");
emailMsgTxt=body;
//emailSubjectTxt=request.getParameter("subject");
emailSubjectTxt=sub;
//emailFromAddress=request.getParameter("from");
//emailFromAddress="sumanvadde999@gmail.com";
emailFromAddress=from1;
//String toaddress=request.getParameter("to");
String toaddress=emailid;////////System.out.println("body........."+emailMsgTxt);
////////System.out.println("Body.........."+emailMsgTxt);
////////System.out.println("from............."+emailFromAddress);
////////System.out.println("to..........."+toaddress);
////////System.out.println("FROM..........."+emailFromAddress);
String tocc="leaveadmin@kvkenergy.com"; 

 String[] arr=toaddress.split(" ");
 		sendTo=arr;
		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~for cc code
		String[] arr1=tocc.split(" ");
 		addressCC=arr1;
		////////System.out.println("SEND TO.........................."+sendTo);
//String[] arr1=fromid.split("@");
//fromid=arr1[0];
//String val=arr1[1];

		/*coll.add(toaddress);
		
		try
		{

			for(int i=0;i<=coll.size();i++)
			{
				sendTo[i]=(String)coll.get(i);
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}*/



		
	/*
	Calling the Mail
	*/


String s=null;
	try
	{

new SendMailRM2EMP().sendSSLMessage(sendTo,emailSubjectTxt,emailMsgTxt,emailFromAddress,addressCC);//calling the mail function
		//////System.out.println("Sucessfully Mail Sent  To Employeeeeeee");
		//request.setAttribute("msg","Mail Sent Successfully");
		//RequestDispatcher dispatcher = request.getRequestDispatcher("/leavesearch.jsp");
      // dispatcher.forward(request, response);
		//response.sendRedirect("leavesearch.jsp");
		s="Mail Sent Successfully";
	}
	catch(Exception e)
	{
		logger.error(util_stacktrace.sendingErrorAsString(e));
		s="Due to internet traffic problem, mail have not sent.";
	}
return s;
	}







public void sendSSLMessage(String recipients[], String subject,	String message, String from,String addressCC1[]) throws MessagingException {
	boolean debug = true;

	Properties props = new Properties();
	props.put("mail.smtp.host", SMTP_HOST_NAME);
	props.put("mail.smtp.auth", "true");
	props.put("mail.debug", "true");
	props.put("mail.smtp.port", SMTP_PORT);
	props.put("mail.smtp.socketFactory.port", SMTP_PORT);
	props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
	props.put("mail.smtp.socketFactory.fallback", "false");
//props.put( "proxyHost", SMTP_HOST_NAME);
 //props.put( "proxyPort", SMTP_PORT);
//////System.out.println("MAIL ID IS*************"+fromid);
	
	Session session = Session.getDefaultInstance(props,new javax.mail.Authenticator() {protected PasswordAuthentication getPasswordAuthentication() {return new PasswordAuthentication(fromid, password1);}});//Supporting Username and Password

	
	session.setDebug(debug);

	Message msg = new MimeMessage(session);//For Sending Mail
	InternetAddress addressFrom = new InternetAddress(from);
	msg.setFrom(addressFrom);
	String file="<font color=black size=2 face=verdana>"+message+"</font><br><br>";
	InternetAddress[] addressTo = new InternetAddress[recipients.length];
	for (int i = 0; i < recipients.length; i++) {
	addressTo[i] = new InternetAddress(recipients[i]);
	
	}
	//~~~~~~~~~~~~~~~~code for cc
		InternetAddress[] addressCc = new InternetAddress[addressCC1.length];
	for (int j= 0; j < addressCC1.length; j++) {
	addressCc[j] = new InternetAddress(addressCC1[j]);
	}
	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	msg.setRecipients(Message.RecipientType.TO, addressTo);
	msg.setRecipients(Message.RecipientType.CC, addressCc);

	// Setting the Subject and Content Type
	msg.setSubject(subject);
	//msg.setDisposition("INLINE");
	msg.setText("Please Go Through The link");
	msg.setContent(file,"text/html");
	
/* message Attachment
	
	
	MimeBodyPart mbp1 = new MimeBodyPart();
	mbp1.setText(this.message);

	// create the second message part
	MimeBodyPart mbp2 = new MimeBodyPart();

	// attach the file to the message
	javax.activation.DataSource fds = new FileDataSource(attach);
	mbp2.setDataHandler(new DataHandler(fds));
	mbp2.setFileName(fds.getName());

	// create the Multipart and its parts to it
	Multipart mp = new MimeMultipart();
	mp.addBodyPart(mbp1);
	mp.addBodyPart(mbp2);

	// add the Multipart to the message
	message.setContent(mp);
	message.setText(this.message);
	

	

		
	
	//msg.setText("http://corporatelawconsultants.in/images/logo.jpg");
	//msg.setDescription("http://corporatelawconsultants.in/images/logo.jpg");
	//msg.setFileName(file);
	//msg.setContent(message, "text/plain");*/
	//~~~~~~~~~~~~~~~~~~~~~~~code to store sessions in file
	/* this is to be after send method which below this
	Store store = mail_session.getStore();

   store.connect();

   Folder f = store.getFolder("Sent");

   if (!f.exists()) f.create(Folder.HOLDS_MESSAGES);

   f.appendMessages(new Message[] {msg});
	*/
	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	/*The following is roughly equivalent to the static Transport send method, but supplies the needed username and password:

Transport tr = session.getTransport("smtp");
tr.connect(smtphost, username, password);
msg.saveChanges();	// don't forget this
tr.sendMessage(msg, msg.getAllRecipients());
tr.close();*/
	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	Transport.send(msg);
	
	
}
}
