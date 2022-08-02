package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.BrandDto;
import com.tech.project_shopping_mall.dto.Infodto;

public interface BrandDao {
	
	public ArrayList<BrandDto> brand_ga(String brand_name);
	public ArrayList<BrandDto> brand_gga(String brand_name);
	public BrandDto brand(String brand_name);

	public int selectBoardTotCount();
	public ArrayList<Infodto> brand1(int rowStart, int rowEnd, String p_img);
}
