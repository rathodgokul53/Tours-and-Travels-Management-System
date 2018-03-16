package pojo;

public class BookingPojo {
int bid;
String aemail;
String fname;
String lname;
String uemail;
String contact;
String tname;
String dod;
String nop;
String bill;

public BookingPojo() {
	super();
	// TODO Auto-generated constructor stub
}

public BookingPojo(int bid, String aemail, String fname, String lname, String uemail, String contact, String tname,
		String dod, String nop, String bill) {
	super();
	this.bid = bid;
	this.aemail = aemail;
	this.fname = fname;
	this.lname = lname;
	this.uemail = uemail;
	this.contact = contact;
	this.tname = tname;
	this.dod = dod;
	this.nop = nop;
	this.bill = bill;
}

public int getBid() {
	return bid;
}
public void setBid(int bid) {
	this.bid = bid;
}
public String getAemail() {
	return aemail;
}
public void setAemail(String aemail) {
	this.aemail = aemail;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
}
public String getUemail() {
	return uemail;
}
public void setUemail(String uemail) {
	this.uemail = uemail;
}
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}
public String getTname() {
	return tname;
}
public void setTname(String tname) {
	this.tname = tname;
}
public String getDod() {
	return dod;
}
public void setDod(String dod) {
	this.dod = dod;
}
public String getNop() {
	return nop;
}
public void setNop(String nop) {
	this.nop = nop;
}
public String getBill() {
	return bill;
}
public void setBill(String bill) {
	this.bill = bill;
}
public BookingPojo(String aemail, String fname, String lname, String uemail, String contact, String tname,
		String dod, String nop, String bill) {
	super();
	
	this.aemail = aemail;
	this.fname = fname;
	this.lname = lname;
	this.uemail = uemail;
	this.contact = contact;
	this.tname = tname;
	this.dod = dod;
	this.nop = nop;
	this.bill = bill;
}


}
