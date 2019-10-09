package com.svs.ensign.resort.util;



import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;



public class C_Util_Mail {
	
	/*@Autowired
	private JavaMailSender mailSender;*/
	private static MailSender mailSender;
	@Value("${mail.username}") String fromaddress;
	@Value("${mail.password}") String password;
	@Value("${mail.smtp.host}") String host; 
	@Value("${mail.smtp.auth}") String authentication;
	@Value("${mail.debug}") String debug;
	@Value("${mail.smtp.port}")String post;
	
	
	
	private static final String SMTP_HOST_NAME = "smtp.gmail.com";
	private static final String SMTP_PORT = "465";
	private static String emailMsgTxt =null;
	private static String emailSubjectTxt = null;
	private static String emailFromAddress = null;
	private static final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
	private static final String[] sendTo ={"rayaprolu.ravikiran@gmail.com"};

	
	
	
	
	
	
	/*@Autowired
	public void setMailSender(MailSender mailsender){
	this.mailSender=mailsender;	
	}*/
	
	public static void sendMail(String toaddress,String mailTest,String bodytext){
		 
			SimpleMailMessage message = new SimpleMailMessage();
			
			String toAddress =toaddress;
			String body=bodytext;
			message.setTo(toAddress);
			message.setSubject("Meeting Pepole After One Week ");//Subject for the Mail.
			
			message.setText(body);//Test that to be displayed in the Mail.
			
	
            
            
            mailSender.send(message);
		
            //System.out.println("Mail Sended ....");
			    }
		
	/*
	mailSender.send(new MimeMessagePreparator() {

		@Override
		public void prepare(MimeMessage mimeMessage) throws Exception {
		MimeMessageHelper messageHelper = new MimeMessageHelper(
		mimeMessage, true, "UTF-8");
		messageHelper.setTo(emailTo);
		messageHelper.setSubject(subject);
		messageHelper.setReplyTo(yourmailid);
		messageHelper.setText(message);
		// determines if there is an upload file, attach it to the e-mail
		String attachName = attachFile.getOriginalFilename();
		if (!attachFile.equals("")) {

		messageHelper.addAttachment(attachName, new InputStreamSource() {
		@Override
		public InputStream getInputStream() throws IOException {
		return attachFile.getInputStream();
		}
		});
		}
		}

		});*/	
	
	
/*	public void sendMultiMessage(){
		
		MimeMessagePreparator messagePreparator = new MimeMessagePreparator() {  
            
            public void prepare(MimeMessage mimeMessage) throws Exception {  
               mimeMessage.setRecipient(Message.RecipientType.TO,new InternetAddress(to));  
               mimeMessage.setFrom(new InternetAddress(from));  
               mimeMessage.setSubject(subject);  
               mimeMessage.setText(msg);  
            }  
    };  
    mailSender.send(messagePreparator);  
	}*/
	
public static boolean sendingMailWithAttachment(String sendto,String textmessage,String subject){
	
		String htmlbody=textmessage;
		byte[] attachmentData=null;
		Multipart mp = new MimeMultipart();
		MimeBodyPart htmlPart = new MimeBodyPart();
		Properties props = new Properties();

        Session session = Session.getDefaultInstance(props, null);
		Message message = new MimeMessage(session);
		try{
			htmlPart.setContent(htmlbody, "text/html");
			mp.addBodyPart(htmlPart);
			MimeBodyPart attachment = new MimeBodyPart();
			attachment.setFileName("manual.pdf");
	        attachment.setContent(attachmentData, "application/pdf");
	        mp.addBodyPart(attachment);
	       
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
	return false;
}
	
public static void sendSSLMessage(String recipients[],String subject,String message) throws MessagingException{
	boolean debug = true;
	//System.out.println("From Address\t"+fromaddress);
	
	
	Properties props = new Properties();
	props.put("mail.smtp.host", SMTP_HOST_NAME);
	props.put("mail.smtp.auth", "true");
	props.put("mail.debug", "true");
	props.put("mail.smtp.port", SMTP_PORT);
	props.put("mail.smtp.socketFactory.port", SMTP_PORT);
	props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
	props.put("mail.smtp.socketFactory.fallback", "false");

	Session session = Session.getDefaultInstance(props,
	new javax.mail.Authenticator() {

	protected PasswordAuthentication getPasswordAuthentication() {
	return new PasswordAuthentication("rrkravikiranrrk@gmail.com","r31031985");//Supporting Username and Password
	}
	});

	session.setDebug(debug);

	Message msg = new MimeMessage(session);//For Sending Mail
	InternetAddress addressFrom = new InternetAddress("rrkravikiranrrk@gmail.com");
	msg.setFrom(addressFrom);
	String file="<font color=black size=2 face=verdana>"+message+"</font><br><br>";
	InternetAddress[] addressTo = new InternetAddress[recipients.length];
	for (int i = 0; i < recipients.length; i++) {
	addressTo[i] = new InternetAddress(recipients[i]);
	}
	msg.setRecipients(Message.RecipientType.TO, addressTo);

	// Setting the Subject and Content Type
	msg.setSubject(subject);
	//msg.setDisposition("INLINE");
	msg.setText("Please Go Through THe link");
	msg.setContent(file,"text/html");
	//msg.setText("http://corporatelawconsultants.in/images/logo.jpg");
	//msg.setDescription("http://corporatelawconsultants.in/images/logo.jpg");
	//msg.setFileName(file);
	//msg.setContent(message, "text/plain");
	Transport.send(msg);
}

}
