package com.tech.project_shopping_mall.dto;

public class NorderinfoDto {
	String n_name;
	String n_number;
	String n_email;
	String n_addr;
	String n_request;

	
	public NorderinfoDto() {
		// TODO Auto-generated constructor stub
	}
	
	public NorderinfoDto(String n_name,String n_number,String n_email,String n_addr,String n_request) {
			this.n_name=n_name;
			this.n_number=n_number;
			this.n_email=n_email;
			this.n_addr=n_addr;
			this.n_request=n_request;
		
	}
	
	
	public String getN_name() {
		return n_name;
	}

	public void setN_name(String n_name) {
		this.n_name = n_name;
	}

	public String getN_number() {
		return n_number;
	}

	public void setN_number(String n_number) {
		this.n_number = n_number;
	}

	public String getN_email() {
		return n_email;
	}

	public void setN_email(String n_email) {
		this.n_email = n_email;
	}

	public String getN_addr() {
		return n_addr;
	}

	public void setN_addr(String n_addr) {
		this.n_addr = n_addr;
	}

	public String getN_request() {
		return n_request;
	}

	public void setN_request(String n_request) {
		this.n_request = n_request;
	}


}