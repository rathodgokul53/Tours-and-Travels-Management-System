package dao;

import org.springframework.orm.hibernate3.HibernateTemplate;

import pojo.AdminPojo;
import pojo.TravelPojo;

public class AdminDao {

	HibernateTemplate template;
	public HibernateTemplate getTemplate() {
		return template;
	}


	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}


	public AdminPojo getByEmail(String email) {
		System.out.println("inside admin dao");
		AdminPojo admin =(AdminPojo) template.get(AdminPojo.class,email);  
		return admin;
	}



}
