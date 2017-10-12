package com.java96.dto;

public class Criteria {

	private int page;
	private int total;//2017-09-21+ ���ͼ���
		
	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Criteria() {

		this(1);// �����ڿ��� �����ڸ� ȣ���ϴ� ����; �˾ƺ���
	}
	
	public int getPage() {
		return page;
	}

	//list�뵵�� ���� (������ Ȯ���غ��� �Ѵ�)
	public void setPage(int page) {
		 if(page <=0) {
			 page =1;
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

	//���̹�Ƽ������ �̳��� �Ķ���ͷ� �޴´�
	
	public String getURI() {
		return "page="+this.page;
		
	}
	
	
}
