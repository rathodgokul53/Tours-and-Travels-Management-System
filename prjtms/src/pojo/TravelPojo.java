package pojo;
public class TravelPojo {
String email;
String name;
String mobile;
String pass;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	System.out.println("setEmail");
	this.email = email;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}

public TravelPojo(String email)
{
	this.email = email;
}
public TravelPojo(String email, String name, String mobile, String pass) {
	super();
	this.email = email;
	this.name = name;
	this.mobile = mobile;
	this.pass = pass;
}

public TravelPojo() {
	super();
	// TODO Auto-generated constructor stub
}


}
