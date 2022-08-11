package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.CMDto;
import com.tech.project_shopping_mall.dto.IMDto;
import com.tech.project_shopping_mall.dto.InquiryDto;

import com.tech.project_shopping_mall.dto.OrderinfoDto;

public interface MyPageDao {
	
	public ArrayList<OrderinfoDto> order_p();
	
	public ArrayList<OrderinfoDto> orderlist(int rowStart, int rowEnd, String mid);
	public int orderlistCount_total(String mid);
	
	public ArrayList<InquiryDto> Inqlist(int rowStart, int rowEnd, String mid);
	public int Inqlist_Count_total(String mid);
	
	
	
	
	
	
	
	
	
	
	
	public ArrayList<IMDto> MypageIM(String mid,int start, int end);
	public ArrayList<CMDto> MypageCM(String mid,int start, int end);

	public int MypageIMBoardTotCount(String mid);
	public int MypageCMBoardTotCount(String mid);

}
