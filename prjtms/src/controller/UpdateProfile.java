package controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import dao.RegisterDao;
import pojo.CustomerPojo;

public class UpdateProfile implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {

		ApplicationContext obj=new ClassPathXmlApplicationContext("Bean.xml");
		RegisterDao dao =(RegisterDao)obj.getBean("d"); 

		HttpSession se=req.getSession();
		
		String email=req.getParameter("email");
		String fname=req.getParameter("fname");
		String lname=req.getParameter("lname");
		String pcode=req.getParameter("pcode");
		String city=req.getParameter("city");
		String addr=req.getParameter("addr");
		String mobile =req.getParameter("mobile");
		String pass=req.getParameter("passWord");
		
		
		 CustomerPojo cust=new CustomerPojo(email,pass,fname,lname,mobile,city,pcode,addr);

		
	   try {
			System.out.println("inside try");
			
		dao.updateProfile(cust);
		
	} catch (Exception e) {
	
		return new ModelAndView("viewprofile","msg","failed to upadate");

	}

		
		List<CustomerPojo> list1=dao.getRow(email);
		for (Iterator iterator = list1.iterator(); iterator.hasNext();) {
			CustomerPojo Pojo = (CustomerPojo) iterator.next();
			
			se.setAttribute("fname", Pojo.getFname());
			se.setAttribute("lname", Pojo.getLname());
			se.setAttribute("email", Pojo.getEmail());
			se.setAttribute("contact", Pojo.getMobile());
			
			se.setAttribute("addr", Pojo.getAddr());
			se.setAttribute("city", Pojo.getCity());
			se.setAttribute("pcode", Pojo.getPcode());
			se.setAttribute("pass", Pojo.getPassWord());
			
	
			
		}

		
		return new ModelAndView("viewprofile","msg","Successfully Updated..!!");
	}
	
	
}
