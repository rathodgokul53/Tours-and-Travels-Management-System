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

import dao.PackageDao;
import dao.RegisterDao;
import pojo.CustomerPojo;
import pojo.PackagePojo;

public class CustomerValidate implements Controller {


	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		ApplicationContext obj=new ClassPathXmlApplicationContext("Bean.xml");
		RegisterDao dao =(RegisterDao)obj.getBean("d"); 
		PackageDao packdao =(PackageDao)obj.getBean("p"); 
		
		String Email=req.getParameter("email");
		String passWord=req.getParameter("passWord");
		
		HttpSession se=req.getSession(); 
		RegisterDao rdao =(RegisterDao)obj.getBean("d");  

		
		List<CustomerPojo> list1=rdao.getRow(Email);
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

		
		
		
		
		 
		 
		 try {
		CustomerPojo cust=dao.getById(Email);
	
			if(Email.equals(cust.getEmail()) && passWord.equals(cust.getPassWord()) ) {
				HttpSession sess=req.getSession(); 
				sess.setAttribute("userid", Email);
				
				

				int i=1;
				List<PackagePojo> list=packdao.loadAll();
				for (Iterator iterator = list.iterator(); iterator.hasNext();) {
					PackagePojo PackagePojo = (PackagePojo) iterator.next();
					
					sess.setAttribute("pname"+i, PackagePojo.getPname());

					sess.setAttribute("pid"+i, PackagePojo.getPid());
					sess.setAttribute("amt"+i, PackagePojo.getAmt());
					sess.setAttribute("source"+i,PackagePojo.getSource());
				    sess.setAttribute("dest"+i,PackagePojo.getDest());
				    sess.setAttribute("dod"+i,PackagePojo.getDod());
				    sess.setAttribute("duration"+i,PackagePojo.getDuration());
				    sess.setAttribute("image"+i,PackagePojo.getImg());	
				    sess.setAttribute("email"+i, PackagePojo.getEmail());
				    sess.setAttribute("book"+i,"books"+i);
					i++;		
				}
				
				sess.setAttribute("size", i);
				
				return new ModelAndView("custHome","msg","Welcome "+Email );		
			}
			else
			{
				return new ModelAndView("customerlogin","msg","Invalid Username/Password");		
	
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			return new ModelAndView("customerlogin","msg","Invalid Username/Password");		
}
	}
}
	
