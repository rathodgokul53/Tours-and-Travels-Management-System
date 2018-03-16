package dao;
import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import pojo.PackagePojo;
public class PackageDao {
		HibernateTemplate template;
		public HibernateTemplate getTemplate() {
			return template;
		}


		public void setTemplate(HibernateTemplate template) {
			this.template = template;
		}


	public void savePackage(PackagePojo pk1) {
		// TODO Auto-generated method stub
		template.save(pk1);
	}


	public List<PackagePojo> getById(String id) {
		// TODO Auto-generated method stub
		List<PackagePojo> list = template.find(" from PackagePojo where email='"+id+"'");
		return list;
		
	}
	//PackagePojo p=(PackagePojo)template.get(PackagePojo.class,id); 
		
		public List<PackagePojo> loadAll() {
			List<PackagePojo> list = template.loadAll(PackagePojo.class);
			return list;
	}
		public List<PackagePojo> getByPid(String id) {
			// TODO<p Auto-generated method stub
			String s=null;
			PackagePojo p= new PackagePojo();
			
			List<PackagePojo> list = template.find(" from PackagePojo where pid='"+id+"'");
		
			return list;
			
		}


		public void updatePackage(PackagePojo pkc) {
			
			template.update(pkc);
		}
}

