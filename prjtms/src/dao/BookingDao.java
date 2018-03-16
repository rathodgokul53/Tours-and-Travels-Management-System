package dao;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import pojo.BookingPojo;

public class BookingDao {
	HibernateTemplate template;
	public HibernateTemplate getTemplate() {
		return template;
	}


	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	public void saveBill(BookingPojo e){  
		  template.save(e);  
		}


	public List<BookingPojo> getById(String id) {
		// TODO Auto-generated method stub
		List<BookingPojo> list = template.find("from BookingPojo b where aemail=?",id);
		return list;
	} 
	public List<BookingPojo> getByUemail(String uemail) {
		// TODO Auto-generated method stub
		List<BookingPojo> list = template.find("from BookingPojo b where uemail=?",uemail);
		return list;
		
	}




}
