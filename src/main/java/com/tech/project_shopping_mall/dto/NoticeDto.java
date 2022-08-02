package com.tech.project_shopping_mall.dto;

import java.sql.Date;

public class NoticeDto {
	private int nnum;
	private String ntitle;
	private String ncontent;
	private Date ndate;
	
	public NoticeDto() {
		// TODO Auto-generated constructor stub
	}
	
	public NoticeDto(int nnum, String ntitle, String ncontent, Date ndate) {
		this.nnum=nnum;
		this.ntitle=ntitle;
		this.ncontent=ncontent;
		this.ndate=ndate;		
	}

	public int getNnum() {
		return nnum;
	}

	public void setNnum(int nnum) {
		this.nnum = nnum;
	}

	public String getNtitle() {
		return ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNcontent() {
		return ncontent;
	}

	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}

	public Date getNdate() {
		return ndate;
	}

	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}
	
}