package dao;
import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import pojo.CustomerPojo;
import pojo.TravelPojo;
public class AgentDao {
		HibernateTemplate template;
		public HibernateTemplate getTemplate() {
			return template;
		}


		public void setTemplate(HibernateTemplate template) {
			this.template = template;
		}



	public void saveAgent(TravelPojo e){  
	  template.save(e);  
	}


	public TravelPojo getById(String email) {
		TravelPojo tra=(TravelPojo)template.get(TravelPojo.class,email);  
	    return tra;  
	}


	public void updateProfile(TravelPojo cust) {
		// TODO Auto-generated method stub
		template.update(cust);
	}


	public List<TravelPojo> getRow(String email) {
		List<TravelPojo> list = template.find("from TravelPojo where email=?",email);
			return list;
	}   
}  


