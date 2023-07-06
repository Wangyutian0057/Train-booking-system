package com.bean;

import java.util.LinkedList;
import java.util.List;

public class PageUtil {
	private int currentPage;
	private int pageCount;
	private int pageNum;
	public PageUtil() {
		currentPage = 1;
		pageCount = 3;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public int getPageNum() {
		return pageNum;
	}
	
	@SuppressWarnings("unchecked")
	public List setPage(List other) {
		List list = new LinkedList();
		int countNum = other.size();
		pageNum = (countNum + pageCount-1) / pageCount;
		int currentStart = (currentPage - 1) * pageCount;
		int currentEnd = currentPage * pageCount;
		for (int i = currentStart; i < currentEnd && i<countNum; i++) {
			list.add(other.get(i));
		}
		return list;
	}
	
}
