package com.java96.dto;

import java.sql.Date;

public class MemberDTO {

	String uid,upw,auto;
	Date regdate;

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUpw() {
		return upw;
	}

	public void setUpw(String upw) {
		this.upw = upw;
	}

	public String getAuto() {
		return auto;
	}

	public void setAuto(String auto) {
		this.auto = auto;
	}

	@Override
	public String toString() {
		return "MemberDTO [uid=" + uid + ", upw=" + upw + ", auto=" + auto + ", regdate=" + regdate + "]";
	}

	


	
	
}
