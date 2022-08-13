package com.tech.project_shopping_mall.dto;

import java.sql.Date;

public class StorageDto {
	private int s_code;
	private int p_code;
	private String p_color;
	private String p_size;
	private int p_amount;
	private Date p_date;
	
	
	public StorageDto() {
		// TODO Auto-generated constructor stub
	}

	
	public StorageDto(int s_code, int p_code, String p_color, String p_size, int p_amount, Date p_date) {
		super();
		this.s_code = s_code;
		this.p_code = p_code;
		this.p_color = p_color;
		this.p_size = p_size;
		this.p_amount = p_amount;
		this.p_date = p_date;
	}

	public int getS_code() {
		return s_code;
	}


	public void setS_code(int s_code) {
		this.s_code = s_code;
	}


	public int getP_code() {
		return p_code;
	}


	public void setP_code(int p_code) {
		this.p_code = p_code;
	}


	public String getP_color() {
		return p_color;
	}


	public void setP_color(String p_color) {
		this.p_color = p_color;
	}


	public String getP_size() {
		return p_size;
	}


	public void setP_size(String p_size) {
		this.p_size = p_size;
	}


	public int getP_amount() {
		return p_amount;
	}


	public void setP_amount(int p_amount) {
		this.p_amount = p_amount;
	}


	public Date getP_date() {
		return p_date;
	}


	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}


	
	
}
