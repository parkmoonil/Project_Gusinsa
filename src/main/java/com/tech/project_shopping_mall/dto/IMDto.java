package com.tech.project_shopping_mall.dto;

import java.sql.Date;

public class IMDto {
	private String mid;
	private String mname;
	private String mphone;
	private String memail;
	private String iselect1;
	private String inum;
	private String ititle;
	private String icontent;
	private String ifile;
	private String iselect2;
	private Date idate;
	private String istate;
	private String ireply;
	
	public IMDto() {
		
	}
	
	public IMDto(String mid,String mname,String mphone,
			String memail,String iselect1,String inum,String ititle
			,String icontent,String ifile,String iselect2,Date idate,String istate,String ireply) {
		this.mid=mid;
		this.mname=mname;
		this.mphone=mphone;
		this.memail=memail;
		this.iselect1=iselect1;
		this.inum=inum;
		this.ititle=ititle;
		this.icontent=icontent;
		this.ifile=ifile;
		this.iselect2=iselect2;
		this.idate=idate;
		this.istate=istate;
		this.ireply=ireply;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMphone() {
		return mphone;
	}

	public void setMphone(String mphone) {
		this.mphone = mphone;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getIselect1() {
		return iselect1;
	}

	public void setIselect1(String iselect1) {
		this.iselect1 = iselect1;
	}

	public String getInum() {
		return inum;
	}

	public void setInum(String inum) {
		this.inum = inum;
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

	public String getIstate() {
		return istate;
	}

	public void setIstate(String istate) {
		this.istate = istate;
	}

	public String getIreply() {
		return ireply;
	}

	public void setIreply(String ireply) {
		this.ireply = ireply;
	}
	
}
