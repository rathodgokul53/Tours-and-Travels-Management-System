package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import dao.AgentDao;
import pojo.TravelPojo;

public class AgentValidate implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		
		ApplicationContext obj=new ClassPathXmlApplicationContext("Bean.xml");
		AgentDao dao =(AgentDao)obj.getBean("a");  
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		 
		HttpSession session=req.getSession(); 
		session.setAttribute("key", email);
		
		
		 try {
		TravelPojo tra=dao.getById(email);
	if(email.equals("admin") && pass.equals("admin")){
		return new ModelAndView("adminHome","adminmsg","Welcome "+email);		

	}
			if(email.equals(tra.getEmail()) && pass.equals(tra.getPass())) {
				
				session.setAttribute("pass", tra.getPass());
				session.setAttribute("name", tra.getName());
				session.setAttribute("mobile", tra.getMobile());
				session.setAttribute("aemail", tra.getEmail());
				
				
				return new ModelAndView("agentHome","agentmsg","Welcome "+email);		
			}
			else
			{
				return new ModelAndView("agentlogin","agentmsg","Invalid Username/Password");		
	
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			return new ModelAndView("agentlogin","agentmsg","Invalid Username/Password");		
}
	}
}
	
