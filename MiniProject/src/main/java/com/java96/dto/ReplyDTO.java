package com.java96.dto;

import java.sql.Date;

public class ReplyDTO {
	
	private int rno,tno;
	private String reply,replyer;
	private Date replydate;
	
	
	@Override
	public String toString() {
		return "ReplyDTO [rno=" + rno + ", tno=" + tno + ", reply=" + reply + ", replyer=" + replyer + ", replydate="
				+ replydate + "]";
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getReplyer() {
		return replyer;
	}
	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}
	public Date getReplydate() {
		return replydate;
	}
	public void setReplydate(Date replydate) {
		this.replydate = replydate;
	}

}
