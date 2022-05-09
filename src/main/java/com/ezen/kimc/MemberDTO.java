package com.ezen.kimc;

public class MemberDTO {
 String id,pw,admin,nomal;

public MemberDTO() {
	super();
	// TODO Auto-generated constructor stub
}

public MemberDTO(String id, String pw, String admin, String nomal) {
	super();
	this.id = id;
	this.pw = pw;
	this.admin = admin;
	this.nomal = nomal;
}

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public String getPw() {
	return pw;
}

public void setPw(String pw) {
	this.pw = pw;
}

public String getAdmin() {
	return admin;
}

public void setAdmin(String admin) {
	this.admin = admin;
}

public String getNomal() {
	return nomal;
}

public void setNomal(String nomal) {
	this.nomal = nomal;
}
 
}
