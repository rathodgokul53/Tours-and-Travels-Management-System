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

import dao.AgentDao;
import dao.RegisterDao;
import pojo.CustomerPojo;
import pojo.TravelPojo;

public class UpdateAgent implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {

		ApplicationContext obj=new ClassPathXmlApplicationContext("Bean.xml");
		AgentDao dao =(AgentDao)obj.getBean("a"); 

		HttpSession se=req.getSession();
		
		String email=req.getParameter("email");
		String name=req.getParameter("name");
		String pass=req.getParameter("pass");
		String mobile=req.getParameter("mobile");
	
		
		
		 TravelPojo cust=new TravelPojo(email,name,mobile,pass);

		
	   try {
			System.out.println("inside try");
			
		dao.updateProfile(cust);
		
	} catch (Exception e) {
	
		return new ModelAndView("agentProfile","msg","failed to upadate");

	}

		
		List<TravelPojo> list1=dao.getRow(email);
		for (Iterator iterator = list1.iterator(); iterator.hasNext();) {
			TravelPojo Pojo = (TravelPojo) iterator.next();
			
			se.setAttribute("mobile", Pojo.getMobile());
			se.setAttribute("name", Pojo.getName());
			se.setAttribute("email", Pojo.getEmail());
			se.setAttribute("pass", Pojo.getPass());
			
				
	
			
		}

		
		return new ModelAndView("agentProfile","msg","Successfully Updated..!!");
	}
	
	
}
