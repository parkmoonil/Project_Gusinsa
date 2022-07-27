package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.BrandDto;

public interface BrandDao {
	
	ArrayList<BrandDto> brand(String brand_name);
}
