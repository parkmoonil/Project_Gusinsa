package com.tech.project_shopping_mall.dto;

import java.sql.Date;

public class MembersDto {
	
	private String mid;
	private String mpw;
	private String mpwc;
	private String mname;
	private String mgender;
	private Date mbirth;
	private String mphone;
	private String maddr;
	private String memail;
	private String kakaologin;
	
	public MembersDto() {
		// TODO Auto-generated constructor stub
	}

	public MembersDto(String mid, String mpw, String mpwc, String mname, String mgender, Date mbirth, String mphone,
			String maddr, String memail, String kakaologin) {
		this.mid = mid;
		this.mpw = mpw;
		this.mpwc = mpwc;
		this.mname = mname;
		this.mgender = mgender;
		this.mbirth = mbirth;
		this.mphone = mphone;
		this.maddr = maddr;
		this.memail = memail;
		this.kakaologin = kakaologin;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpw() {
		return mpw;
	}

	public void setMpw(String mpw) {
		this.mpw = mpw;
	}

	public String getMpwc() {
		return mpwc;
	}

	public void setMpwc(String mpwc) {
		this.mpwc = mpwc;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMgender() {
		return mgender;
	}

	public void setMgender(String mgender) {
		this.mgender = mgender;
	}

	public Date getMbirth() {
		return mbirth;
	}

	public void setMbirth(Date mbirth) {
		this.mbirth = mbirth;
	}

	public String getMphone() {
		return mphone;
	}

	public void setMphone(String mphone) {
		this.mphone = mphone;
	}

	public String getMaddr() {
		return maddr;
	}

	public void setMaddr(String maddr) {
		this.maddr = maddr;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getKakaologin() {
		return kakaologin;
	}

	public void setKakaologin(String kakaologin) {
		this.kakaologin = kakaologin;
	}
	
	
}
