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

import dao.BookingDao;
import pojo.BookingPojo;

public class ShowTicket implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		ApplicationContext obj=new ClassPathXmlApplicationContext("Bean.xml");
		BookingDao bdao =(BookingDao)obj.getBean("b");

	
	    
		HttpSession ses2=req.getSession();
		String id =(String) ses2.getAttribute("key");
	   
	    int i=1;
		List<BookingPojo> list=bdao.getById(id);
		for (Iterator iterator = list.iterator(); iterator.hasNext();) {
			BookingPojo BookingPojo = (BookingPojo) iterator.next();
		
			
			ses2.setAttribute("fname"+i,BookingPojo.getFname());
			ses2.setAttribute("lname"+i,BookingPojo.getLname());
			ses2.setAttribute("uemail"+i,BookingPojo.getUemail());
			ses2.setAttribute("contact"+i,BookingPojo.getContact());
			ses2.setAttribute("tname"+i,BookingPojo.getTname());
			ses2.setAttribute("dod"+i,BookingPojo.getDod());
			ses2.setAttribute("nop"+i,BookingPojo.getNop());
			ses2.setAttribute("bill"+i,BookingPojo.getBill());
			
			i++;
		}
				
		
		ses2.setAttribute("size", i);
		return new ModelAndView("showTicket");	    
	}

}
