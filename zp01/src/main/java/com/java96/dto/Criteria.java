package com.java96.dto;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class Criteria {

	// ����¡ó�� �ҷ��� ����

	private int page;
	private int total;

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Criteria() {
		this(1);
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if (page <= 0) {
			page = 1;
		}

		this.page = page;
	}

	public Criteria(int page) {

		if (page <= 0) {
			page = 1;
		}
		this.page = page;

	}

	public int getSkip() {
		return (this.page - 1) * 10;
	}

	public String getURI() {

		UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page).build();

		return uriComponents.toUriString();

	}

}
