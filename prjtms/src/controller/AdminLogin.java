package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import dao.AdminDao;
import dao.AgentDao;
import pojo.AdminPojo;
import pojo.TravelPojo;

public class AdminLogin implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		
		ApplicationContext obj=new ClassPathXmlApplicationContext("Bean.xml");
		AdminDao dao =(AdminDao)obj.getBean("admin");  
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		 
		HttpSession session=req.getSession(); 
		session.setAttribute("aemail", email);
		 System.out.println("inside adminlogin");
		
		
		 try {
		AdminPojo admin=dao.getByEmail(email);
			if(email.equals(admin.getUserid()) && pass.equals(admin.getPassword())) {
				
				
				return new ModelAndView("adminhome","msg","Welcome "+email);		
			}
			else
			{
				return new ModelAndView("adminlogin","agentmsg","Invalid Username/Password");		
	
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			return new ModelAndView("adminlogin","agentmsg","some problem occurs...!");		
}
	}
}
	
