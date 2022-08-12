package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.CMDto;
import com.tech.project_shopping_mall.dto.IMDto;
import com.tech.project_shopping_mall.dto.InquiryDto;

import com.tech.project_shopping_mall.dto.OrderinfoDto;
import com.tech.project_shopping_mall.dto.ReviewDto;
import com.tech.project_shopping_mall.dto.Review_Written_Dto;

public interface MyPageDao {
	
	public ArrayList<OrderinfoDto> order_p();
	
	public ArrayList<OrderinfoDto> orderlist(int rowStart, int rowEnd, String mid);
	public int orderlistCount_total(String mid);
	
	public ArrayList<InquiryDto> Inqlist(int rowStart, int rowEnd, String mid);
	public int Inqlist_Count_total(String mid);
	
	// 내가 작성가능한 리뷰
	public ArrayList<OrderinfoDto> mypage_possible_review(int rowStart, int rowEnd, String mid);
	public int mypage_possible_review_total(String mid);
	
	// 내가 작성한 리뷰
	public ArrayList<Review_Written_Dto> mypage_written_review(int rowStart, int rowEnd, String mid);
	public int mypage_written_review_total(String mid);
	
	public ArrayList<OrderinfoDto> mypage_possible_review(String mid);
	
	
	
	
	
	public ArrayList<IMDto> MypageIM(String mid,int start, int end);
	public ArrayList<CMDto> MypageCM(String mid,int start, int end);

	public int MypageIMBoardTotCount(String mid);
	public int MypageCMBoardTotCount(String mid);

}
