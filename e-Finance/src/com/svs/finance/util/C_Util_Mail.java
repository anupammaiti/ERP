package com.svs.finance.util;



import java.util.Properties;

import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
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
	private MailSender mailSender;
	@Value("${mail.username}") String fromaddress;
	
	
	@Autowired
	public void setMailSender(MailSender mailsender){
	this.mailSender=mailsender;	
	}
	
	public void sendMail(String toaddress,String mailTest,String bodytext){
		 
			SimpleMailMessage message = new SimpleMailMessage();
			
			String toAddress =toaddress;
			String body=bodytext;
			message.setTo(toAddress);
			message.setSubject("Meeting Pepole After One Week ");//Subject for the Mail.
			
			message.setText(body);//Test that to be displayed in the Mail.
			
	
            System.out.println("Mail Sended ....");
            
            mailSender.send(message);
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
			        
			    }
		
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
	
public boolean sendingMailWithAttachment(String sendto,String textmessage,String subject){
	
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
	
	

}
