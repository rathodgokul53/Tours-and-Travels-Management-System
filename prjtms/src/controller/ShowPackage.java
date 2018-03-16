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
import pojo.PackagePojo;

public class ShowPackage implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		ApplicationContext obj=new ClassPathXmlApplicationContext("Bean.xml");
		PackageDao dao =(PackageDao)obj.getBean("p");  
				
		
		HttpSession ses=req.getSession();
		String id =(String) ses.getAttribute("key");
		
		int i=1;
		List<PackagePojo> list=dao.getById(id);
		for (Iterator iterator = list.iterator(); iterator.hasNext();) {
			PackagePojo PackagePojo = (PackagePojo) iterator.next();
			
			ses.setAttribute("pname"+i, PackagePojo.getPname());
			ses.setAttribute("pid"+i, PackagePojo.getPid());
			ses.setAttribute("amt"+i, PackagePojo.getAmt());
			ses.setAttribute("source"+i,PackagePojo.getSource());
		    ses.setAttribute("dest"+i,PackagePojo.getDest());
		    ses.setAttribute("dod"+i,PackagePojo.getDod());
		    ses.setAttribute("duration"+i,PackagePojo.getDuration());		
		    ses.setAttribute("img"+i,PackagePojo.getImg());		
			i++;		
		}
		
		ses.setAttribute("size", i);

		 
		return new ModelAndView("showpack");
	}

}
