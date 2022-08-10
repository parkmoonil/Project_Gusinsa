package com.tech.project_shopping_mall.dto;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

public class ReviewDto {
	
	private int r_num;
	private int p_code;
	private int r_starpoint;
	private String r_title;
	private String r_contents;
	private String r_img;
	private int r_likepoint;
	private String mid;
	private Timestamp r_date;	
	private int r_hit;
	private int o_code;
		
	public ReviewDto() {
		// TODO Auto-generated constructor stub
		
	}

	public int getR_num() {
		return r_num;
	}

	public void setR_num(int r_num) {
		this.r_num = r_num;
	}

	public int getP_code() {
		return p_code;
	}

	public void setP_code(int p_code) {
		this.p_code = p_code;
	}

	public int getR_starpoint() {
		return r_starpoint;
	}

	public void setR_starpoint(int r_starpoint) {
		this.r_starpoint = r_starpoint;
	}

	public String getR_title() {
		return r_title;
	}

	public void setR_title(String r_title) {
		this.r_title = r_title;
	}

	public String getR_contents() {
		return r_contents;
	}

	public void setR_contents(String r_contents) {
		this.r_contents = r_contents;
	}

	public String getR_img() {
		return r_img;
	}

	public void setR_img(String r_img) {
		this.r_img = r_img;
	}

	public int getR_likepoint() {
		return r_likepoint;
	}

	public void setR_likepoint(int r_likepoint) {
		this.r_likepoint = r_likepoint;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public Timestamp getR_date() {
		return r_date;
	}

	public void setR_date(Timestamp r_date) {
		this.r_date = r_date;
	}
	public int getR_hit() {
		return r_hit;
	}

	public void setR_hit(int r_hit) {
		this.r_hit = r_hit;
	}
	public int getO_code() {
		return o_code;
	}

	public void setO_code(int o_code) {
		this.o_code = o_code;
	}
}
