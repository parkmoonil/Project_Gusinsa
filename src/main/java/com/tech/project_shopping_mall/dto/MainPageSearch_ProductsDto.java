package com.tech.project_shopping_mall.dto;

public class MainPageSearch_ProductsDto {

	private int pid;
	private String pname;
	private String pcontent;
	private String pprice;
	
	
	
	public MainPageSearch_ProductsDto() {
		// TODO Auto-generated constructor stub
	}
	
	public MainPageSearch_ProductsDto(int pid, String pname, String pcontent, String pprice) {
		this.pid = pid;
		this.pname = pname;
		this.pcontent = pcontent;
		this.pprice = pprice;
	}
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public String getPprice() {
		return pprice;
	}
	public void setPprice(String pprice) {
		this.pprice = pprice;
	}
	
	
	
	
}
