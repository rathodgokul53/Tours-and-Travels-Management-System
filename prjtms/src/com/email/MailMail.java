package com.email; 
import org.springframework.mail.MailSender;  
import org.springframework.mail.SimpleMailMessage;  
   
public class MailMail{  
    private MailSender mailSender;  
   
    public void setMailSender(MailSender mailSender) {  
        this.mailSender = mailSender;  
        
    }  
   
    public void sendMail(String from, String to, String subject, String password) {  
        //creating message  
        SimpleMailMessage message = new SimpleMailMessage();  
       
        message.setFrom(from);  
        message.setTo(to);  
        message.setSubject(subject);  
        message.setText(password);  
        //sending message  
        mailSender.send(message);     
    }  
}  
