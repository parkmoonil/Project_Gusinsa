package com.tech.project_shopping_mall.dto;

public class IMDto {
	private String fk_mid;
	private String mname;
	private String mphone;
	private String memail;
	private String iselect1;
	private String inum;
	private String ititle;
	private String icontent;
	private String ifile;
	private String iselect2;
	
	public IMDto() {
		
	}
	
	public IMDto(String fk_mid,String mname,String mphone,
			String memail,String iselect1,String inum,String ititle
			,String icontent,String ifile,String iselect2) {
		this.fk_mid=fk_mid;
		this.mname=mname;
		this.mphone=mphone;
		this.memail=memail;
		this.iselect1=iselect1;
		this.inum=inum;
		this.ititle=ititle;
		this.icontent=icontent;
		this.ifile=ifile;
		this.iselect2=iselect2;
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
	
}
