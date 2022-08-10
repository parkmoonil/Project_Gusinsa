package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.ReviewDto;

public interface ReviewDao {
	public ArrayList<ReviewDto> review_list(int rowStart, int rowEnd);
	public void review_write(int pcode, String mid, String r_starpoint
	,String r_title, String r_contents, String fname, int ocode);
	/* public void review_upHit(String rh_num); */
	public ReviewDto review_view(String r_num);
	public void review_modify(String r_num,String r_starpoint,
			String r_title,String r_contents);
	public void review_delete(String r_num);
	
	public void download(String path, String fname, String r_num);
	
//	public void review_staravg(String avgstar);
	public int selectReviewTotCount();
		
}
