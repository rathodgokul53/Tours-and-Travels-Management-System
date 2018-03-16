package com.email;  
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;  
public class CustomerForget implements Controller{   
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception{
		// TODO Auto-generated method stub
Resource r=new ClassPathResource("Bean.xml");  
BeanFactory b=new XmlBeanFactory(r);  

String remail=req.getParameter("email");



try {
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3308/gokul","root","root");  
	
	System.out.println("inside customerforget");
	
	
	//Statement stmt=con.createStatement();  
	PreparedStatement stmt=con.prepareStatement("update customerpojo set password=(SELECT SUBSTRING(MD5(RAND()) FROM 1 FOR 6) AS password) where email=?;"); 
	System.out.println("after preparestatement");
	stmt.setString(1,remail);  
	stmt.executeUpdate();   
	
	PreparedStatement stm=con.prepareStatement("select password from customerpojo where email=?"); 
	stm.setString(1,remail);  
	String pass=null;
	ResultSet rs = stm.executeQuery();
	while(rs.next())
	pass = rs.getString(1);  
	 
	con.close();  
	String password=new String("New Password :");
	String password1 = password.concat(pass);
	MailMail m=(MailMail)b.getBean("mailMail");  
	
	String sender="tourstravels35@gmail.com";//write here sender gmail id  
	String receiver=remail;//write here receiver id  
	m.sendMail(sender,receiver,"Forget Password",password1);
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	return new ModelAndView("forgetpass","msg","this email is not registered..!");  
}  
    

return new ModelAndView("login");  
}  
}  