package com.tech.project_shopping_mall.dto;

import java.sql.Timestamp;

public class Order_ProductDto {
	private int o_code;
	private String p_name;
	private String p_color;
	private String p_size;
	private int o_count;
	private String mid;
	private String mname;
	private String mfender;
	private int o_age;
	private String o_phone;
	private String o_add;
	private String o_quest;
	private int o_price;
	private Timestamp o_date;
	private String o_state;
	
	public Order_ProductDto() {
		// TODO Auto-generated constructor stub
	}

	
	
	
	public Order_ProductDto(int o_code, String p_name, String p_color, String p_size, int o_count, String mid,
			String mname, String mfender, int o_age, String o_phone, String o_add, String o_quest, int o_price,
			Timestamp o_date, String o_state) {
		super();
		this.o_code = o_code;
		this.p_name = p_name;
		this.p_color = p_color;
		this.p_size = p_size;
		this.o_count = o_count;
		this.mid = mid;
		this.mname = mname;
		this.mfender = mfender;
		this.o_age = o_age;
		this.o_phone = o_phone;
		this.o_add = o_add;
		this.o_quest = o_quest;
		this.o_price = o_price;
		this.o_date = o_date;
		this.o_state = o_state;
	}




	public int getO_code() {
		return o_code;
	}

	public void setO_code(int o_code) {
		this.o_code = o_code;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
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

	public int getO_count() {
		return o_count;
	}

	public void setO_count(int o_count) {
		this.o_count = o_count;
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

	public String getMfender() {
		return mfender;
	}

	public void setMfender(String mfender) {
		this.mfender = mfender;
	}

	public int getO_age() {
		return o_age;
	}

	public void setO_age(int o_age) {
		this.o_age = o_age;
	}

	public String getO_phone() {
		return o_phone;
	}

	public void setO_phone(String o_phone) {
		this.o_phone = o_phone;
	}

	public String getO_add() {
		return o_add;
	}

	public void setO_add(String o_add) {
		this.o_add = o_add;
	}

	public String getO_quest() {
		return o_quest;
	}

	public void setO_quest(String o_quest) {
		this.o_quest = o_quest;
	}

	public int getO_price() {
		return o_price;
	}

	public void setO_price(int o_price) {
		this.o_price = o_price;
	}

	public Timestamp getO_date() {
		return o_date;
	}

	public void setO_date(Timestamp o_date) {
		this.o_date = o_date;
	}

	public String getO_state() {
		return o_state;
	}

	public void setO_state(String o_state) {
		this.o_state = o_state;
	}
	
	
	

	
	
	
	
	
	
	
	
	
}
