package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import dao.AgentDao;
import pojo.TravelPojo;

public class InsertAgent implements Controller {

	
		@Override
		public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
			// TODO Auto-generated method stub
			ApplicationContext obj=new ClassPathXmlApplicationContext("Bean.xml");
			AgentDao dao =(AgentDao)obj.getBean("a");  

			
			String name=req.getParameter("name");
			String mobile=req.getParameter("mobile");
			String email=req.getParameter("email");
			String pass=req.getParameter("pass");
		
		     
			 TravelPojo tra=new TravelPojo(email,name,mobile,pass);
			 
			 try {
				dao.saveAgent(tra);
			} catch (Exception e) {
				return new ModelAndView("agentlogin","agentmsg",e.getMessage());		
				}
			return new ModelAndView("agentlogin","agentmsg","Successfully Registered..!!");
		}
}	

