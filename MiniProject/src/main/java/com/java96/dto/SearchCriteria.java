package com.java96.dto;

public class SearchCriteria extends Criteria {

	private String searchType, keyword;

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	@Override
	public int getTotal() {
		// TODO Auto-generated method stub
		return super.getTotal();
	}

	@Override
	public void setTotal(int total) {
		// TODO Auto-generated method stub
		super.setTotal(total);
	}

	@Override
	public int getPage() {
		// TODO Auto-generated method stub
		return super.getPage();
	}

	@Override
	public void setPage(int page) {
		// TODO Auto-generated method stub
		super.setPage(page);
	}

	@Override
	public int getSkip() {
		// TODO Auto-generated method stub
		return super.getSkip();
	}

	@Override
	public String getURI() {
		// TODO Auto-generated method stub
		return super.getURI();
	}

	@Override
	public String toString() {
		return "SearchCriteria [searchType=" + searchType + ", keyword=" + keyword + "]";
	}
	
}
