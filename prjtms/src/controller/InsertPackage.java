package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import dao.PackageDao;
import pojo.PackagePojo;
import pojo.TravelPojo;

public class InsertPackage implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		ApplicationContext obj=new ClassPathXmlApplicationContext("Bean.xml");
		PackageDao dao =(PackageDao)obj.getBean("p");  
		
		//String pid = req.getParameter("pid");
		String pname = req.getParameter("pname");
		String duration = req.getParameter("duration");
		String dest = req.getParameter("dest");
		String amt = req.getParameter("amt");
		String source = req.getParameter("source");
		String dod = req.getParameter("dod");
		String img = req.getParameter("img");
		
		
		
		
		HttpSession session=req.getSession(); 
		String forkey =(String) session.getAttribute("key");

		
		PackagePojo pkc=new PackagePojo(pname, duration, dod, amt, source, dest, img, new TravelPojo(forkey));

			try {
				dao.savePackage(pkc);
				return new ModelAndView("addpackage","success","Package Successfully Inserted..!!");
			} catch (Exception e1) {
				// TODO Auto-generated catch block
	
				e1.printStackTrace();
				return new ModelAndView("addpackage","success","Error in inserting package..!!");

			}
}
}
