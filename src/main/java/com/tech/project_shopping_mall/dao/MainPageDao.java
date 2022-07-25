package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.MainPageSearchDto;
import com.tech.project_shopping_mall.dto.MainPageSearch_ProductsDto;

public interface MainPageDao {
	// 검색해서 다시 받아오는게 2개 이상이라 리스트 형태로 받아야함
	public ArrayList<MainPageSearchDto> search (String keyword);
	public ArrayList<MainPageSearch_ProductsDto> SearchProduct(String keyword_product);

}
