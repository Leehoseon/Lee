package com.java96.dto;

import java.util.Date;

import lombok.Data;


@Data
public class TodoDTO {

	
	private Long tno;
	private String title;
	private String writer;
	private Date regdate;
	private int replycnt;
	
	
}
