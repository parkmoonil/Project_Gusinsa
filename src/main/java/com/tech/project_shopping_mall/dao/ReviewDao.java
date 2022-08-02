package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.ReviewDto;

public interface ReviewDao {
	public ArrayList<ReviewDto> review_list(int start, int end, String sk, String selNum);
	public void review_write(String r_starpoint,String r_title, String r_contents, String fname);
	public void review_upHit(String sr_num);
	public ReviewDto reviewView(String sr_num);
	public void review_modify(String sr_num,String mid,
			String r_title,String r_contents);
	public void review_delete(String sn_num);
	
	public void download(String path, String fname, String r_num);
	
	
	public int selectReviewTotCount();
		
}
