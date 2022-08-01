package com.tech.project_shopping_mall.dao;

import java.sql.Date;
import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.FaqDto;
import com.tech.project_shopping_mall.dto.NoticeDto;

public interface CSDao {

	public ArrayList<NoticeDto> noticeboard(int start, int end, String sk, String selNum);
	public ArrayList<NoticeDto> noticeboard2(int nnum,String ntitle, String ncontent, Date ndate);
	public void write(String ntitle,String ncontent);
	public NoticeDto contentView(int snnum);
	public void modify(int nnum, String ntitle, String ncontent);
	public void delete(int snnum);
	
	public ArrayList<FaqDto> faqboard();
	public void faq_write(String fheader, String ftitle, String fcontent);
	
	
	public int noticeboardTotCount1(String searchKeyword);
	public int noticeboardTotCount2(String searchKeyword);
	public int noticeboardTotCount3(String searchKeyword);
	public int noticeboardTotCount4(String searchKeyword);
	
	
}
 