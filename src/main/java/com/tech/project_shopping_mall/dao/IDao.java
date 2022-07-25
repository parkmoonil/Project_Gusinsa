package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.NoticeDto;

public interface IDao {

	public ArrayList<NoticeDto> noticeboard(int start, int end, String sk, String selNum);
	public void write(String nname,String ntitle,String ncontent);
	public NoticeDto contentView(String snnum);
	public void modify(String nnum, String ntitle, String ncontent);
	public void delete(String snnum);
	
	
	
	public int noticeboardTotCount1(String searchKeyword);
	public int noticeboardTotCount2(String searchKeyword);
	public int noticeboardTotCount3(String searchKeyword);
	public int noticeboardTotCount4(String searchKeyword);
	
	
}
