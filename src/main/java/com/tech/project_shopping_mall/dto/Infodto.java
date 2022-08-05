package com.tech.project_shopping_mall.dto;

import java.sql.Timestamp;

public class Infodto {
 private int p_code;
 private String ocode;
 private String p_name;
 private int p_price;
 private String p_class;
 private String p_gender;
 private String p_img;
 private Timestamp data;
 private String p_img2;
 private String p_img3;
 private String p_img4;
 private String p_img5;
 private String brand;
 private int buynumber;
 private String p_category;
 
 
 
 
 public Infodto() {
	// TODO Auto-generated constructor stub
}
 public Infodto(int p_code,String ocode,String p_name,int p_price,String p_class,String p_gender,
		 String p_img,Timestamp data,String p_img2,String p_img3,String p_img4,String p_img5,String brand,int buynumber,String p_category) {
	 this.p_code = p_code;
	 this.ocode = ocode;
	 this.p_name = p_name;
	 this.p_price = p_price;
	 this.p_class = p_class;
	 this.p_gender = p_gender;
	 this.p_img = p_img;
	 this.p_img2 =p_img2;
	 this.p_img3 =p_img3;
	 this.p_img4 =p_img4;
	 this.p_img5 =p_img5;
	 this.brand = brand;
	 this.buynumber = buynumber;
	 this.p_category = p_category;
	 this.data = data;
	 
 }
 
public int getP_code() {
	return p_code;
}
public void setP_code(int p_code) {
	this.p_code = p_code;
}
public String getOcode() {
	return ocode;
}
public void setOcode(String ocode) {
	this.ocode = ocode;
}
public String getP_name() {
	return p_name;
}
public void setP_name(String p_name) {
	this.p_name = p_name;
}
public int getP_price() {
	return p_price;
}
public void setP_price(int p_price) {
	this.p_price = p_price;
}
public String getP_class() {
	return p_class;
}
public void setP_class(String p_class) {
	this.p_class = p_class;
}
public String getP_gender() {
	return p_gender;
}
public void setP_gender(String p_gender) {
	this.p_gender = p_gender;
}
public String getP_img() {
	return p_img;
}
public void setP_img(String p_img) {
	this.p_img = p_img;
}
public Timestamp getData() {
	return data;
}
public void setData(Timestamp data) {
	this.data = data;
}
public String getP_img2() {
	return p_img2;
}
public void setP_img2(String p_img2) {
	this.p_img2 = p_img2;
}
public String getP_img3() {
	return p_img3;
}
public void setP_img3(String p_img3) {
	this.p_img3 = p_img3;
}
public String getP_img4() {
	return p_img4;
}
public void setP_img4(String p_img4) {
	this.p_img4 = p_img4;
}
public String getP_img5() {
	return p_img5;
}
public void setP_img5(String p_img5) {
	this.p_img5 = p_img5;
}
public String getBrand() {
	return brand;
}
public void setBrand(String brand) {
	this.brand = brand;
}
public int getBuynumber() {
	return buynumber;
}
public void setBuynumber(int buynumber) {
	this.buynumber = buynumber;
}
public String getP_category() {
	return p_category;
}
public void setP_category(String p_category) {
	this.p_category = p_category;
}
 
 




}
