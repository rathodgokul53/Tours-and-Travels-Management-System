package pojo;

public class CustomerPojo {

String email;
String passWord;
String fname;
String lname;
String mobile;
String city;
String pcode;
String addr;

public String getPassWord() {
	return passWord;
}
public void setPassWord(String passWord) {
	this.passWord = passWord;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
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
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getPcode() {
	return pcode;
}
public void setPcode(String pcode) {
	this.pcode = pcode;
}
public String getAddr() {
	return addr;
}
public void setAddr(String addr) {
	this.addr = addr;
}
public CustomerPojo(String email, String passWord, String fname, String lname, String mobile, String city,
		String pcode, String addr) {
	super();
	
	this.passWord = passWord;
	this.email = email;
	this.fname = fname;
	this.lname = lname;
	this.mobile = mobile;
	this.city = city;
	this.pcode = pcode;
	this.addr = addr;
}
public CustomerPojo() {
	super();
	// TODO Auto-generated constructor stub
}

	
}
