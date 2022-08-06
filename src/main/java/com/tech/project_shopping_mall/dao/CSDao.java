package com.tech.project_shopping_mall.dao;

import java.sql.Date;
import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.CMDto;
import com.tech.project_shopping_mall.dto.CommuDto;
import com.tech.project_shopping_mall.dto.FaqDto;
import com.tech.project_shopping_mall.dto.IMDto;
import com.tech.project_shopping_mall.dto.InquiryDto;
import com.tech.project_shopping_mall.dto.MembersDto;
import com.tech.project_shopping_mall.dto.NoticeDto;

public interface CSDao {

	public ArrayList<NoticeDto> noticeboard(int start, int end, String sk, String selNum);
	public ArrayList<NoticeDto> noticeboard2(int nnum,String ntitle, String ncontent, Date ndate);
	public void write(String ntitle,String ncontent);
	public NoticeDto contentView(int snnum);
	public void modify(int nnum, String ntitle, String ncontent);
	public void delete(int snnum);
	
	public ArrayList<FaqDto> faqboard(int start, int end);
	public ArrayList<FaqDto> faqboard2();
	public void faq_write(String fheader, String ftitle, String fcontent);
	public void faqdelete(int snnum);
	
	public ArrayList<CommuDto> Commuboard();
	public void Commu_write(String cselect1,String cselect2,String cselect3,String cselect4,String ctitle,String ccontent,String cfile,String mid);
	
	public ArrayList<InquiryDto> inquiryboard(int start, int end, String sk, String selNum);
	public void Inquiry_write(String iselect1,String ititle,String icontent,String ifile,String iselect2,String mid);
	
	public MembersDto CSMembers(String mid);
	public MembersDto CSMembers2(String mid);
	
	public ArrayList<IMDto> InquiryMembers(int start, int end); 
	public ArrayList<IMDto> InquiryMembers2(); 
	public void Manager_Inquiry(String fk_mid);
	
	public ArrayList<CMDto> CommuMembers(int start, int end);
	public ArrayList<CMDto> CommuMembers2();
	
	public void Manager_Commu(String fk_mid);
	
	
	public int noticeboardTotCount1(String searchKeyword);
	public int noticeboardTotCount2(String searchKeyword);
	public int noticeboardTotCount3(String searchKeyword);
	public int noticeboardTotCount4(String searchKeyword);
	
	public int InquiryBoardTotCount();
	public int CommuMembersBoardTotCount();
	public int selectBoardTotCount3();
}
 