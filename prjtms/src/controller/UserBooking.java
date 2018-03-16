package controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.email.MailMail;

import dao.BookingDao;
import dao.PackageDao;
import pojo.BookingPojo;
import pojo.PackagePojo;
import pojo.TravelPojo;


//sms_api packages
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
public class UserBooking implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		ApplicationContext obj=new ClassPathXmlApplicationContext("Bean.xml");
		BookingDao bdao =(BookingDao)obj.getBean("b");
	PackageDao dao =(PackageDao)obj.getBean("p");
	
	Resource r=new ClassPathResource("Bean.xml");  
	BeanFactory b=new XmlBeanFactory(r); 
		HttpSession se = req.getSession();
		String fname =(String) se.getAttribute("fname");
	    String lname =(String) se.getAttribute("lname");
	    String email=(String) se.getAttribute("email");
	    String contact =(String) se.getAttribute("contact");
/*System.out.println(fname);
System.out.println(lname);
System.out.println(contact);  
*/


	    HttpSession bok = req.getSession();
	    String pid=bok.getAttribute("pid").toString();
	    String tname=(String) bok.getAttribute("tname");
	    String dod=(String) bok.getAttribute("dod");
	    String bill=bok.getAttribute("bill").toString();
		String nop=bok.getAttribute("nop").toString();

/*System.out.println(pid);
System.out.println(tname);
System.out.println(nop);
System.out.println(bill);
System.out.println(pid);*/
List<PackagePojo> tra=dao.getByPid(pid);
		for (Iterator iterator = tra.iterator(); iterator.hasNext();) {
			PackagePojo PackagePojo = (PackagePojo) iterator.next();
			TravelPojo str =PackagePojo.getEmail();
			
			String abc=str.getEmail();
		
	
BookingPojo bpojo=new BookingPojo(abc, fname, lname, email, contact, tname, dod, nop, bill);
		
		try {
			bdao.saveBill(bpojo);
			  String newLine = System.getProperty("line.separator");
			String bookingMai=new String("Thank you for Booking Tours.."+newLine+newLine+"Tours Booking Details :"+newLine+newLine);
			String bookingMail =bookingMai.concat(newLine+"Name          :"+fname+" "+lname+newLine+"Tour Name    :"+tname+newLine+"Mobile No     :"+contact+
					newLine+"No Of Person :"+nop+newLine+"Total Bill     :"+bill);
			MailMail m=(MailMail)b.getBean("mailMail");  
			
			String senders="tourstravels35@gmail.com";//write here sender gmail id  
			String receiver=email;//write here receiver id
			
			m.sendMail(senders,receiver,"Tours Billing Details",bookingMail);  
			    
			
			
			
			
	
			 
		try {
						// Construct data
			String apiKey = "apikey=" + "3YiboSoJFg8-cyACNUJC2LBLWrsQ4GijmuHRZvtHyl";
			String message = "&message=" + ""+bookingMail+"";
			String sender = "&sender=" + "TXTLCL";
			String numbers = "&numbers=" + ""+contact+"";
			
						
						// Send data
						HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
						String data = apiKey + numbers + message + sender;
						conn.setDoOutput(true);
						conn.setRequestMethod("POST");
						conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
						conn.getOutputStream().write(data.getBytes("UTF-8"));
						final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
						final StringBuffer stringBuffer = new StringBuffer();
						String line;
						while ((line = rd.readLine()) != null) {
							stringBuffer.append(line);
							System.out.println("sms_send_successfully");
						}
						rd.close();
						
						
					} catch (Exception e) {
						System.out.println("Error SMS "+e);
						
					}

		
			
			
			return new ModelAndView("mailSend","keey","Tour successfull Booked.!!");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return new ModelAndView("custHome","keey","Sorry...Torur Not Book");
		}
		
		
		
	}
		return new ModelAndView("custHome","keey","Sorry...Torur Not Book");
	}
}
