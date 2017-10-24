package com.java96.dto;

import java.sql.Date;

public class UploadDTO {

	private String original,uploadName,thumbName;
	private Date regdate;
	private int tno;
	public String getOriginal() {
		return original;
	}
	public void setOriginal(String original) {
		this.original = original;
	}
	public String getUploadName() {
		return uploadName;
	}
	public void setUploadName(String uploadName) {
		this.uploadName = uploadName;
	}
	public String getThumbName() {
		return thumbName;
	}
	public void setThumbName(String thumbName) {
		this.thumbName = thumbName;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}
	@Override
	public String toString() {
		return "UploadDTO [original=" + original + ", uploadName=" + uploadName + ", thumbName=" + thumbName
				+ ", regdate=" + regdate + ", tno=" + tno + "]";
	}
	
	
	
}
