package com.miris.project.dto;

import java.util.Date;

public class Paging {
	private int currentPage = 1;
	private int rowPage = 10;
	private int pageBlock = 5;
	private int start;
	private int end;
	private int startPage;
	private int endPage;
	private int total;
	private int totalPage;
	
	//일별 조회성
	private String dw_status;
	private String searchDate;
	private String m_name;
	private String d_code;
	
	//월별 조회성
	private String mw_year;
	private String mw_month;
	//private String m_name;
	private String m_position;
	private String w_name;
	private String m_gubun;
	
	
	public Paging(int total, String currentPage1) {
		this.total = total;
		if(currentPage1 != null) {
			this.currentPage = Integer.parseInt(currentPage1);
		}
		if(currentPage < 1) {
			currentPage = 1;
		}
		start = (currentPage - 1) * rowPage + 1;
		end = start + rowPage - 1;
		totalPage = (int)Math.ceil((double)total/rowPage);
		startPage = currentPage-3;
		if( startPage < 1) {
			startPage = 1;
		}
		endPage = currentPage+3;
		if(endPage > totalPage) {
			endPage = totalPage;
		}

	}

	
	
	
	public String getMw_year() {
		return mw_year;
	}




	public void setMw_year(String mw_year) {
		this.mw_year = mw_year;
	}




	public String getMw_month() {
		return mw_month;
	}




	public void setMw_month(String mw_month) {
		this.mw_month = mw_month;
	}




	public String getM_position() {
		return m_position;
	}




	public void setM_position(String m_position) {
		this.m_position = m_position;
	}




	public String getW_name() {
		return w_name;
	}




	public void setW_name(String w_name) {
		this.w_name = w_name;
	}




	public String getM_gubun() {
		return m_gubun;
	}




	public void setM_gubun(String m_gubun) {
		this.m_gubun = m_gubun;
	}




	public String getD_code() {
		return d_code;
	}
	public void setD_code(String d_code) {
		this.d_code = d_code;
	}
	public String getDw_status() {
		return dw_status;
	}
	public void setDw_status(String dw_status) {
		this.dw_status = dw_status;
	}
	public String getSearchDate() {
		return searchDate;
	}
	public void setSearchDate(String searchDate) {
		this.searchDate = searchDate;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getRowPage() {
		return rowPage;
	}

	public void setRowPage(int rowPage) {
		this.rowPage = rowPage;
	}

	public int getPageBlock() {
		return pageBlock;
	}

	public void setPageBlock(int pageBlock) {
		this.pageBlock = pageBlock;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	
	
}
