package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.Infodto;
import com.tech.project_shopping_mall.dto.MainPageSearchDto;
import com.tech.project_shopping_mall.dto.MainPageSearch_ProductsDto;

public interface MainPageDao {
	// 검색해서 다시 받아오는게 2개 이상이라 리스트 형태로 받아야함
	public ArrayList<MainPageSearchDto> search (String keyword);
	public ArrayList<MainPageSearchDto> searchtest (String keyword);
	public void  searchcount(String keyword);
	
	
	
	public ArrayList<Infodto> recent_products();
	
	public ArrayList<Infodto> SearchProduct(int rowStart, int rowEnd,String keyword);
	public ArrayList<Infodto> testSearchProduct(String keyword);
	
	public void search_write(String search_word);
	public void modify_search(String sbid,String bname,
			String btitle,String bcontent);
	public int selectBoardTotCount_search(String keyword);
	
	
	
	public Infodto search_prouct_detail(int pcode);



	
}
