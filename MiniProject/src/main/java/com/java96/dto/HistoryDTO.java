package com.java96.dto;

public class HistoryDTO {
	
	String uid,connectdate,ipaddress;

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getConnectdate() {
		return connectdate;
	}

	public void setConnectdate(String connectdate) {
		this.connectdate = connectdate;
	}

	public String getIpaddress() {
		return ipaddress;
	}

	public void setIpaddress(String ipaddress) {
		this.ipaddress = ipaddress;
	}

	@Override
	public String toString() {
		return "HistoryDTO [uid=" + uid + ", connectdate=" + connectdate + ", ipaddress=" + ipaddress + "]";
	}
	

}
