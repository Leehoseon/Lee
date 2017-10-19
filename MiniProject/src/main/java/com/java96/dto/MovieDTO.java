package com.java96.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class MovieDTO {

	private String title,writer;
	private int tno;
	private Date regdate;
	private int replycnt;
	
}
