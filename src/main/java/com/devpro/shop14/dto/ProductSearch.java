package com.devpro.shop14.dto;

public class ProductSearch {
	
	private int page;
	
	public String keyword;
	
	public String title;
	
	public String name;

	public String seo;


	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
