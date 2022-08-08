package com.tech.project_shopping_mall.dto;

public class CMDto {
	private String cnum;
	private String fk_mid;
	private String mname;
	private String mphone;
	private String memail;
	private String cselect1;
	private String cselect2;
	private String cselect3;
	private String cselect4;
	private String ctitle;
	private String ccontent;
	private String cfile;
	
	public CMDto() {
		// TODO Auto-generated constructor stub
	}
	
	public CMDto(String cnum,String fk_mid,String mname,String mphone,
			String memail,String cselect1,String cselect2,String cselect3,
			String cselect4,String ctitle,String ccontent,String cfile) {
		this.cnum=cnum;
		this.fk_mid=fk_mid;
		this.mname=mname;
		this.mphone=mphone;
		this.memail=memail;
		this.cselect1=cselect1;
		this.cselect2=cselect2;
		this.cselect3=cselect3;
		this.cselect4=cselect4;
		this.ctitle=ctitle;
		this.ccontent=ccontent;
//		this.cfile=cfile;
	}

	public String getCnum() {
		return cnum;
	}

	public void setCnum(String cnum) {
		this.cnum = cnum;
	}

	public String getFk_mid() {
		return fk_mid;
	}

	public void setFk_mid(String fk_mid) {
		this.fk_mid = fk_mid;
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

	public String getCselect1() {
		return cselect1;
	}

	public void setCselect1(String cselect1) {
		this.cselect1 = cselect1;
	}

	public String getCselect2() {
		return cselect2;
	}

	public void setCselect2(String cselect2) {
		this.cselect2 = cselect2;
	}

	public String getCselect3() {
		return cselect3;
	}

	public void setCselect3(String cselect3) {
		this.cselect3 = cselect3;
	}

	public String getCselect4() {
		return cselect4;
	}

	public void setCselect4(String cselect4) {
		this.cselect4 = cselect4;
	}

	public String getCtitle() {
		return ctitle;
	}

	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}

	public String getCcontent() {
		return ccontent;
	}

	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}

	public String getCfile() {
		return cfile;
	}

	public void setCfile(String cfile) {
		this.cfile = cfile;
	}
	
}
