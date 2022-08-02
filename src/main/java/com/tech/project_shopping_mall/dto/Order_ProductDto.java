package com.tech.project_shopping_mall.dto;

import java.sql.Timestamp;

public class Order_ProductDto {
	private int O_CODE;
	private String P_NAME;
	private String P_COLOR;
	private String P_SIZE;
	private int O_COUNT;
	private String MID;
	private String MNAME;
	private String MFENDER;
	private int O_AGE;
	private String O_PHONE;
	private String O_ADD;
	private String O_QUEST;
	private int O_PRICE;
	private Timestamp O_DATE;
	private String O_STATE;
	
	public Order_ProductDto() {
		// TODO Auto-generated constructor stub
	}
	
	public Order_ProductDto(int O_CODE, String P_NAME, String P_COLOR,String P_SIZE
			,int O_COUNT,String MID,String MNAME,String MFENDER,int O_AGE,String O_PHONE
			,String O_ADD,String O_QUEST,int O_PRICE,Timestamp O_DATE,String O_STATE) {
		this.O_CODE = O_CODE;
		this.P_NAME = P_NAME;
		this.P_COLOR = P_COLOR;
		this.P_SIZE = P_SIZE;
		this.O_COUNT = O_COUNT;
		this.MID = MID;
		this.MNAME = MNAME;
		this.MFENDER =MFENDER;
		this.O_AGE = O_AGE;
		this.O_PHONE = O_PHONE;
		this.O_ADD = O_ADD;
		this.O_QUEST = O_QUEST;
		this.O_PRICE = O_PRICE;
		this.O_DATE = O_DATE;
		this.O_STATE = O_STATE;
	}
	
	
	public int getO_CODE() {
		return O_CODE;
	}
	public void setO_CODE(int o_CODE) {
		O_CODE = o_CODE;
	}
	public String getP_NAME() {
		return P_NAME;
	}
	public void setP_NAME(String p_NAME) {
		P_NAME = p_NAME;
	}
	public String getP_COLOR() {
		return P_COLOR;
	}
	public void setP_COLOR(String p_COLOR) {
		P_COLOR = p_COLOR;
	}
	public String getP_SIZE() {
		return P_SIZE;
	}
	public void setP_SIZE(String p_SIZE) {
		P_SIZE = p_SIZE;
	}
	public int getO_COUNT() {
		return O_COUNT;
	}
	public void setO_COUNT(int o_COUNT) {
		O_COUNT = o_COUNT;
	}
	public String getMID() {
		return MID;
	}
	public void setMID(String mID) {
		MID = mID;
	}
	public String getMNAME() {
		return MNAME;
	}
	public void setMNAME(String mNAME) {
		MNAME = mNAME;
	}
	public String getMFENDER() {
		return MFENDER;
	}
	public void setMFENDER(String mFENDER) {
		MFENDER = mFENDER;
	}
	public int getO_AGE() {
		return O_AGE;
	}
	public void setO_AGE(int o_AGE) {
		O_AGE = o_AGE;
	}
	public String getO_PHONE() {
		return O_PHONE;
	}
	public void setO_PHONE(String o_PHONE) {
		O_PHONE = o_PHONE;
	}
	public String getO_ADD() {
		return O_ADD;
	}
	public void setO_ADD(String o_ADD) {
		O_ADD = o_ADD;
	}
	public String getO_QUEST() {
		return O_QUEST;
	}
	public void setO_QUEST(String o_QUEST) {
		O_QUEST = o_QUEST;
	}
	public int getO_PRICE() {
		return O_PRICE;
	}
	public void setO_PRICE(int o_PRICE) {
		O_PRICE = o_PRICE;
	}
	public Timestamp getO_DATE() {
		return O_DATE;
	}
	public void setO_DATE(Timestamp o_DATE) {
		O_DATE = o_DATE;
	}
	public String getO_STATE() {
		return O_STATE;
	}
	public void setO_STATE(String o_STATE) {
		O_STATE = o_STATE;
	}
	
	
	
	
	
}
