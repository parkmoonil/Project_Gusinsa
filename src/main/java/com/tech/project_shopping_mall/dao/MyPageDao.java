package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.CMDto;
import com.tech.project_shopping_mall.dto.IMDto;
import com.tech.project_shopping_mall.dto.InquiryDto;
import com.tech.project_shopping_mall.dto.Order_ProductDto;

public interface MyPageDao {
	
	public ArrayList<Order_ProductDto> order_p();
	
	public ArrayList<Order_ProductDto> orderlist(String mid);
	
	public ArrayList<InquiryDto> Inqlist(String mid);
	
	public ArrayList<IMDto> MypageIM(String mid,int start, int end);
	public ArrayList<CMDto> MypageCM(String mid,int start, int end);

	public int MypageIMBoardTotCount(String mid);
	public int MypageCMBoardTotCount(String mid);

}
