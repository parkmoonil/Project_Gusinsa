package com.tech.project_shopping_mall.dto;

import java.sql.Timestamp;

public class Sumdto{

	private int sumamount;
	private int summoney;
	
	
	
	public int getSumamount() {
		return sumamount;
	}
	public void setSumamount(int sumamount) {
		this.sumamount = sumamount;
	}
	public int getSummoney() {
		return summoney;
	}
	public void setSummoney(int summoney) {
		this.summoney = summoney;
	}
	
	public Sumdto(int summoney,int sumamount ){
		this.sumamount = sumamount;
		this.summoney = summoney;

	}
	
	
	public Sumdto() {
		// TODO Auto-generated constructor stub
	}
	
}
