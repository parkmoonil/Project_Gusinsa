package com.tech.project_shopping_mall.dao;

import java.sql.Date;
import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.CMDto;
import com.tech.project_shopping_mall.dto.CommuDto;
import com.tech.project_shopping_mall.dto.EnterDto;
import com.tech.project_shopping_mall.dto.FaqDto;
import com.tech.project_shopping_mall.dto.IMDto;
import com.tech.project_shopping_mall.dto.InquiryDto;
import com.tech.project_shopping_mall.dto.MembersDto;
import com.tech.project_shopping_mall.dto.NoticeDto;

import oracle.sql.DATE;

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
	
	public IMDto inquirydetails(String sinum);
	public void Manager_Inquiry(String mid);
	public void inquirydelete(String sinum); 
	
	public ArrayList<CMDto> CommuMembers(int start, int end);
	public ArrayList<CMDto> CommuMembers2();
	public CMDto commudetails(String scnum);
	public void Manager_Commu(String mid);
	public void commudelete(String scnum);
	
	public ArrayList<EnterDto> EnterBoard(int start, int end);
	public void Enter_write(String ereginum,String etradename,String eaddr1,String eaddr2,String eaddr3,String eaddr4,String esales,String ebname,String ebintro,String ehomepage,String econtactname,String eposition,
			String echargenum,String efax,String ephone,String eemail);
	public EnterDto enterdetails(String senumber);
	public void enterdelete(String senumber);
	
	public void Manager_Members(String mid);
	public ArrayList<MembersDto> MMembers(int rowStart, int rowEnd);
	public MembersDto membersdetails(String smno);
	public void membersdelete(String smno);
	public void mgrade(String mno, String mgrade);
	
	
	public int noticeboardTotCount1(String searchKeyword);
	public int noticeboardTotCount2(String searchKeyword);
	public int noticeboardTotCount3(String searchKeyword);
	public int noticeboardTotCount4(String searchKeyword);
	
	public int InquiryBoardTotCount();
	public int CommuMembersBoardTotCount();
	public int selectBoardTotCount3();
	public int EnterBoardTotCount();
	public int MembersBoardTotCount();
}
 