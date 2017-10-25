package com.java96.dto;

import java.sql.Date;

public class MemberVO {

	String uid,upw,auto;
	Date regdate;
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
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "MemberVO [uid=" + uid + ", upw=" + upw + ", auto=" + auto + ", regdate=" + regdate + "]";
	}
	
	
	
	
}


