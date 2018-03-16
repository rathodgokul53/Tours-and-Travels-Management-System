package pojo;

import java.util.Set;

public class PackagePojo {
	int pid;
	String pname;
	String duration;
	String dod;
	String amt;
	String source;
	String dest;
	String img;
    TravelPojo email;
    public PackagePojo(){
    	
    }
	public PackagePojo(String pname, String duration, String dod, String amt, String source, String dest, String img,
			TravelPojo email) {
		super();
		this.pname = pname;
		this.duration = duration;
		this.dod = dod;
		this.amt = amt;
		this.source = source;
		this.dest = dest;
		this.img = img;
		this.email = email;
	}
	public PackagePojo(int pid, String pname, String duration, String dod, String amt, String source, String dest,
			String img, TravelPojo email) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.duration = duration;
		this.dod = dod;
		this.amt = amt;
		this.source = source;
		this.dest = dest;
		this.img = img;
		this.email = email;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getDod() {
		return dod;
	}
	public void setDod(String dod) {
		this.dod = dod;
	}
	public String getAmt() {
		return amt;
	}
	public void setAmt(String amt) {
		this.amt = amt;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDest() {
		return dest;
	}
	public void setDest(String dest) {
		this.dest = dest;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public TravelPojo getEmail() {
		return email;
	}
	public void setEmail(TravelPojo email) {
		this.email = email;
	}
	
	
    
	
}
