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

public class UpdatePackage implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		ApplicationContext obj=new ClassPathXmlApplicationContext("Bean.xml");
		PackageDao dao =(PackageDao)obj.getBean("p");  
		
		String pid1 = req.getParameter("pid");
		String pname = req.getParameter("pname");
		String duration = req.getParameter("duration");
		String dest = req.getParameter("dest");
		String amt = req.getParameter("amt");
		String source = req.getParameter("source");
		String dod = req.getParameter("dod");
		String img = req.getParameter("img");
		
		
		System.out.println(pname);
		System.out.println(duration);
		System.out.println(dest);
		System.out.println(amt);
		System.out.println(source);
		System.out.println(dod);
		System.out.println("img"+img+"cool");
		
		int pid=Integer.parseInt(pid1);
		System.out.println(pid);
		
		HttpSession session=req.getSession(); 
		String forkey =(String) session.getAttribute("key");
		
System.out.println(forkey);
		
		PackagePojo pkc=new PackagePojo(pid,pname, duration, dod, amt, source, dest, img, new TravelPojo(forkey));

			try {
				dao.updatePackage(pkc);
				return new ModelAndView("showpack","success","Package Successfully Updated..!!");
			} catch (Exception e1) {
				// TODO Auto-generated catch block
	
				ShowPackage sp=new ShowPackage();
				sp.handleRequest(req, arg1);
				return new ModelAndView("showpack","success","Error in inserting package..!!");

			}
}
}
