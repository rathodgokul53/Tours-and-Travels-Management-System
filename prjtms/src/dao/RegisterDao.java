package dao;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import pojo.CustomerPojo;

public class RegisterDao {


	HibernateTemplate template;
	public HibernateTemplate getTemplate() {
		return template;
	}


	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}



public void saveCustomer(CustomerPojo e){  
  template.save(e);  
}  
public CustomerPojo getById(String username){  
	CustomerPojo e=(CustomerPojo)template.get(CustomerPojo.class,username);  
    return e;  
}


public List<CustomerPojo> loadAll() {
	// TODO Auto-generated method stub
	List<CustomerPojo> list = template.loadAll(CustomerPojo.class);
	return list;
}


public List<CustomerPojo> getRow(String userid) {
	// TODO Auto-generated method stub
	List<CustomerPojo> list = template.find("from CustomerPojo where email=?",userid);
	return list;
}


public void updateProfile(CustomerPojo cust) {
	// TODO Auto-generated method stub
	template.update(cust);
}



	
}






