package com.tech.project_shopping_mall.dto;

import java.sql.Date;

public class FaqDto {
	private int fnum;
	private String fheader;
	private String ftitle;
	private String fcontent;
	private Date fdate;
	
	public FaqDto() {
		
	}
	
	public FaqDto(int fnum, String ftitle, String fheader, String fcontent, Date fdate) {
		this.fnum=fnum;
		this.fheader=fheader;
		this.ftitle=ftitle;
		this.fcontent=fcontent;
		this.fdate=fdate;
	}

	public int getFnum() {
		return fnum;
	}

	public void setFnum(int fnum) {
		this.fnum = fnum;
	}

	public String getFheader() {
		return fheader;
	}

	public void setFheader(String fheader) {
		this.fheader = fheader;
	}

	public String getFtitle() {
		return ftitle;
	}

	public void setFtitle(String ftitle) {
		this.ftitle = ftitle;
	}

	public String getFcontent() {
		return fcontent;
	}

	public void setFcontent(String fcontent) {
		this.fcontent = fcontent;
	}

	public Date getFdate() {
		return fdate;
	}

	public void setFdate(Date fdate) {
		this.fdate = fdate;
	}

}
