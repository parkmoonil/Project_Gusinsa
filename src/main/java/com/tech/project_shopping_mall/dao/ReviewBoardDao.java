package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.ReviewBoardDto;

public interface ReviewBoardDao {
	public ArrayList<ReviewBoardDto> reviewboard_list(int rowStart, int rowEnd);
	public void reviewboard_upHit(String rh_num);
	public ReviewBoardDto reviewboard_view(String r_num);
	public int selectReviewBoardTotCount();
		
}
