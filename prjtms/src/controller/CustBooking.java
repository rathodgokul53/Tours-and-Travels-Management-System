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

public class CustBooking implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		ApplicationContext obj=new ClassPathXmlApplicationContext("Bean.xml");
		BookingDao dao =(BookingDao)obj.getBean("b");  
				
		
		HttpSession ses=req.getSession();
		String uemail =(String) ses.getAttribute("userid");
		
		int i=1;
		List<BookingPojo> list=dao.getByUemail(uemail);
		for (Iterator iterator = list.iterator(); iterator.hasNext();) {
			BookingPojo BookingPojo = (BookingPojo) iterator.next();
			
			ses.setAttribute("pname"+i, BookingPojo.getFname());
			ses.setAttribute("pid"+i, BookingPojo.getBid());
			ses.setAttribute("amt"+i, BookingPojo.getContact());
			ses.setAttribute("source"+i,BookingPojo.getNop());
		    ses.setAttribute("dest"+i,BookingPojo.getTname());
		    ses.setAttribute("dod"+i,BookingPojo.getDod());
		    ses.setAttribute("duration"+i,BookingPojo.getUemail());			
			i++;		
			
		}
		
		ses.setAttribute("size", i);

		 
		return new ModelAndView("custBook");
	}

}
