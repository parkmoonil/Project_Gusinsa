package com.tech.project_shopping_mall.dto;

import java.sql.Timestamp;

public class Cartdto{

	private int cart_id;
	private String mid;
	private String mname;
	private int p_code;
	private String p_name;
	private int cprice;
	private int money;
	private int amount;
	private String p_img;

	

	
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
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
	public int getP_code() {
		return p_code;
	}
	public void setP_code(int p_code) {
		this.p_code = p_code;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getCprice() {
		return cprice;
	}
	public void setCprice(int cprice) {
		this.cprice = cprice;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	
	
	@Override
    public String toString() {
        return "Cartdto [CART_ID=" + cart_id + ", MID=" + mid + ", MNAME=" + mname + ", P_CODE=" + p_code
                + ", P_NAME=" + p_name + ", P_PRICE=" + cprice + ", money=" + money + ", amount=" + amount + "]";
    }
   
	
	public Cartdto() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
}


