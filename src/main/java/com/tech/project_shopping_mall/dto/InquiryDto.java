package com.tech.project_shopping_mall.dto;

import java.sql.Date;

public class InquiryDto {
	private String inum;
	private String iselect1;
	private String ititle;
	private String icontent;
	private String ifile;
	private String iselect2;
	private Date idate;
	
	public InquiryDto() {

	}
	
	public InquiryDto(String inum,String iselect1,String ititle,String icontent,String ifile,String iselect2,Date idate) {
		this.inum=inum;
		this.iselect1=iselect1;
		this.ititle=ititle;
		this.icontent=icontent;
		this.ifile=ifile;
		this.iselect2=iselect2;
	}

	public String getInum() {
		return inum;
	}

	public void setInum(String inum) {
		this.inum = inum;
	}

	public String getIselect1() {
		return iselect1;
	}

	public void setIselect1(String iselect1) {
		this.iselect1 = iselect1;
	}

	public String getItitle() {
		return ititle;
	}

	public void setItitle(String ititle) {
		this.ititle = ititle;
	}

	public String getIcontent() {
		return icontent;
	}

	public void setIcontent(String icontent) {
		this.icontent = icontent;
	}

	public String getIfile() {
		return ifile;
	}

	public void setIfile(String ifile) {
		this.ifile = ifile;
	}

	public String getIselect2() {
		return iselect2;
	}

	public void setIselect2(String iselect2) {
		this.iselect2 = iselect2;
	}

	public Date getIdate() {
		return idate;
	}

	public void setIdate(Date idate) {
		this.idate = idate;
	}

}
