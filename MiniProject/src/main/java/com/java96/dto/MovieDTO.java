package com.java96.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class MovieDTO {

	private String title,writer,content;
	private int tno;
	private Date regdate;
	private int replycnt;
	private int dbhit;
	private String filename;
	
}
