package com.tech.project_shopping_mall.dto;

public class BrandDto {
	private String brand_name;
	private int brand_id;
	
	public BrandDto() {
		// TODO Auto-generated constructor stub
	}

	public BrandDto(String brand_name, int brand_id) {
		this.brand_name = brand_name;
		this.brand_id = brand_id;
	}
	
	public String getBrand_name() {
		return brand_name;
	}

	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}

	public int getBrand_id() {
		return brand_id;
	}

	public void setBrand_id(int brand_id) {
		this.brand_id = brand_id;
	}
	
}
