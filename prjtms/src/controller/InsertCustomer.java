package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import dao.RegisterDao;
import pojo.CustomerPojo;

public class InsertCustomer implements Controller{

	

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		ApplicationContext obj=new ClassPathXmlApplicationContext("Bean.xml");
		RegisterDao dao =(RegisterDao)obj.getBean("d");  

		
		
		String passWord=req.getParameter("passWord");
		String email=req.getParameter("email");
		String fname=req.getParameter("fname");
		String lname=req.getParameter("lname");
		String mobile=req.getParameter("mobile");
		String city=req.getParameter("city");
		String pcode=req.getParameter("pcode");
		String addr=req.getParameter("addr");		 
		
	     
		 CustomerPojo cust=new CustomerPojo(email,passWord,fname,lname,mobile,city,pcode,addr);
		 
		 try {
			dao.saveCustomer(cust);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return new ModelAndView("custregister","msg","User Already Registered");		
			}
		return new ModelAndView("customerlogin","msg","Successfully Registered..!!");
	}  
}