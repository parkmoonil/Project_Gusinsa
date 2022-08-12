package com.tech.project_shopping_mall.controller;

import java.io.FileInputStream;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tech.project_shopping_mall.dao.CSDao;
import com.tech.project_shopping_mall.dto.CMDto;
import com.tech.project_shopping_mall.dto.EnterDto;
import com.tech.project_shopping_mall.dto.IMDto;
import com.tech.project_shopping_mall.dto.MembersDto;
import com.tech.project_shopping_mall.vopage.SearchVO_CS;

@Controller
public class ManagerController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/manager")
	public String manager() {
		System.out.println("=====manager=====");
		
		return "CS/manager/manager";
	}
	
	@RequestMapping("/manager_inquiry")
	public String inquiryboard(HttpServletRequest request,
			Model model,SearchVO_CS searchVO) {
		System.out.println("inquiryboard");
		
		CSDao dao=sqlSession.getMapper(CSDao.class);
		
		String strPage=request.getParameter("page");
		System.out.println("pagggge: "+strPage);
		
		if(strPage==null)
			strPage="1";
		System.out.println("pagge2 : "+strPage);
		int page=Integer.parseInt(strPage);
		searchVO.setPage(page);
		
		int total=dao.InquiryBoardTotCount();
		
		System.out.println("totalrow : "+total);
		searchVO.pageCalculate(total);
		
		System.out.println("totPage : "+total);
		System.out.println("clickpage : "+strPage);
		System.out.println("pageStart : "+searchVO.getPageStart());
		System.out.println("pageEnd : "+searchVO.getPageEnd());
		System.out.println("pageTot : "+searchVO.getTotPage());
		System.out.println("rowStart : "+searchVO.getRowStart());
		System.out.println("rowEnd : "+searchVO.getRowEnd());
		
		int rowStart=searchVO.getRowStart();
		int rowEnd=searchVO.getRowEnd();
		
		ArrayList<IMDto> InquiryMembers=dao.InquiryMembers(rowStart,rowEnd);
	
		model.addAttribute("InquiryMembers",InquiryMembers);
		model.addAttribute("totRowcnt",total);
		model.addAttribute("searchVO",searchVO);
		
		return "CS/manager/manager_inquiry";
	}
	
	@RequestMapping("manager_inquirydetails")
	public String manager_inquirydetails(HttpServletRequest request,
		Model model) {
		System.out.println("======manager_inquirydetails======");
		
		String sinum=request.getParameter("inum");
		CSDao dao=sqlSession.getMapper(CSDao.class);
		
		IMDto dto=dao.inquirydetails(sinum);
		model.addAttribute("manager_inquiry",dto);	
			
		return "CS/manager/manager_inquirydetails";
		}
	
	@RequestMapping("/Inquirydownload")
	public String Inquirydownload(HttpServletRequest request,
			HttpServletResponse response,Model model) throws Exception {
		System.out.println("======download()======");
		
		String path=request.getParameter("p");
		String ifile=request.getParameter("i");	
		String inum=request.getParameter("inum");
		
		response.setHeader("Content-Disposition",
				"Attachment;filename="+URLEncoder.encode(ifile,"utf-8"));
		
		String attachPath="resources\\upload\\";
		String realPath=request.getSession().getServletContext().getRealPath(attachPath)+"\\"+ifile;
		System.out.println("realPath : "+realPath);
		
		FileInputStream fin=new FileInputStream(realPath);
		ServletOutputStream sout=response.getOutputStream();
		
		byte[] buf=new byte[1024];
		int size=0;
		while ((size=fin.read(buf,0,1024))!=-1) {
			sout.write(buf,0,size);
		}
		fin.close();
		sout.close();
		
		return "manager_inquiry?inum=";
	}
	
	@RequestMapping("inquirydelete")
	public String inquirydelete(HttpServletRequest request,
			Model model) {
		System.out.println("=====manager_delete====");
		
		String sinum=request.getParameter("inum");
		CSDao dao=sqlSession.getMapper(CSDao.class);
		dao.inquirydelete(sinum);
	
		return "redirect:manager_inquiry";
	}
	
	@RequestMapping("/manager_commu")
	public String Commuboard(HttpServletRequest request,
			Model model,SearchVO_CS searchVO) {
		System.out.println("Commuboard");
		
		CSDao dao=sqlSession.getMapper(CSDao.class);
		
		String strPage=request.getParameter("page");
		System.out.println("pagggge: "+strPage);
		
		if(strPage==null)
			strPage="1";
		System.out.println("pagge2 : "+strPage);
		int page=Integer.parseInt(strPage);
		searchVO.setPage(page);
		
		int total=dao.CommuMembersBoardTotCount();
		
		System.out.println("totalrow : "+total);
		searchVO.pageCalculate(total);
		
		System.out.println("totPage : "+total);
		System.out.println("clickpage : "+strPage);
		System.out.println("pageStart : "+searchVO.getPageStart());
		System.out.println("pageEnd : "+searchVO.getPageEnd());
		System.out.println("pageTot : "+searchVO.getTotPage());
		System.out.println("rowStart : "+searchVO.getRowStart());
		System.out.println("rowEnd : "+searchVO.getRowEnd());
		
		int rowStart=searchVO.getRowStart();
		int rowEnd=searchVO.getRowEnd();
		
		ArrayList<CMDto> CommuMembers=dao.CommuMembers(rowStart, rowEnd);
	
		model.addAttribute("CommuMembers",CommuMembers);
		model.addAttribute("totRowcnt",total);
		model.addAttribute("searchVO",searchVO);
		
		return "CS/manager/manager_commu";
	}
	
	@RequestMapping("manager_commudetails")
	public String manager_commudetails(HttpServletRequest request,
		Model model) {
		System.out.println("======manager_inquirydetails======");
		
		String scnum=request.getParameter("cnum");
		CSDao dao=sqlSession.getMapper(CSDao.class);
		System.out.println("scnum : "+scnum);
		
		CMDto dto=dao.commudetails(scnum);
		model.addAttribute("manager_commu",dto);	
			
		return "CS/manager/manager_commudetails";
		}
	
	@RequestMapping("/Commudownload")
	public String Commudownload(HttpServletRequest request,
			HttpServletResponse response,Model model) throws Exception {
		System.out.println("======download()======");
		
		String path=request.getParameter("p");
		String cfile=request.getParameter("c");	
		String cnum=request.getParameter("cnum");
		
		response.setHeader("Content-Disposition",
				"Attachment;filename="+URLEncoder.encode(cfile,"utf-8"));
		
		String attachPath="resources\\upload\\";
		String realPath=request.getSession().getServletContext().getRealPath(attachPath)+"\\"+cfile;
		System.out.println("realPath : "+realPath);
		
		FileInputStream fin=new FileInputStream(realPath);
		ServletOutputStream sout=response.getOutputStream();
		
		byte[] buf=new byte[1024];
		int size=0;
		while ((size=fin.read(buf,0,1024))!=-1) {
			sout.write(buf,0,size);
		}
		fin.close();
		sout.close();
		
		return "redirect:manager_commu";
	}
	
	@RequestMapping("commudelete")
	public String commudelete(HttpServletRequest request,
			Model model) {
		System.out.println("=====manager_delete====");
		
		String scnum=request.getParameter("cnum");
		CSDao dao=sqlSession.getMapper(CSDao.class);
		dao.commudelete(scnum);
	
		return "redirect:manager_commu";
	}
	
	@RequestMapping("/manager_enter")
	public String EnterBoard(HttpServletRequest request,
			Model model,SearchVO_CS searchVO) {
		System.out.println("======manager_enter=====");
		
		CSDao dao=sqlSession.getMapper(CSDao.class);
		
		String strPage=request.getParameter("page");
		System.out.println("pagggge: "+strPage);
		
		if(strPage==null)
			strPage="1";
		System.out.println("pagge2 : "+strPage);
		int page=Integer.parseInt(strPage);
		searchVO.setPage(page);
		
		int total=dao.EnterBoardTotCount();
		
		System.out.println("totalrow : "+total);
		searchVO.pageCalculate(total);
		
		int rowStart=searchVO.getRowStart();
		int rowEnd=searchVO.getRowEnd();
		
		System.out.println("totPage : "+total);
		System.out.println("clickpage : "+strPage);
		System.out.println("pageStart : "+searchVO.getPageStart());
		System.out.println("pageEnd : "+searchVO.getPageEnd());
		System.out.println("pageTot : "+searchVO.getTotPage());
		System.out.println("rowStart : "+searchVO.getRowStart());
		System.out.println("rowEnd : "+searchVO.getRowEnd());
		
		ArrayList<EnterDto> EnterBoard=dao.EnterBoard(rowStart, rowEnd);
	
		model.addAttribute("EnterBoard",EnterBoard);
		model.addAttribute("totRowcnt",total);
		model.addAttribute("searchVO",searchVO);

		return "CS/manager/manager_enter";
	}
		
	@RequestMapping("manager_enterdetails")
	public String manager_enterdetails(HttpServletRequest request,
		Model model) {
		System.out.println("======manager_enterdetails======");
		
		String senumber=request.getParameter("enumber");
		CSDao dao=sqlSession.getMapper(CSDao.class);
		
		EnterDto dto=dao.enterdetails(senumber);
		model.addAttribute("manager_enter",dto);	
			
		return "CS/manager/manager_enterdetails";
		}
	
	@RequestMapping("enterdelete")
	public String enterdelete(HttpServletRequest request,
			Model model) {
		System.out.println("=====manager_delete====");
		
		String senumber=request.getParameter("enumber");
		CSDao dao=sqlSession.getMapper(CSDao.class);
		dao.enterdelete(senumber);
	
		return "redirect:manager_enter";
	}
	
	@RequestMapping("/manager_members")
	public String manager_members(HttpServletRequest request,
			Model model,SearchVO_CS searchVO) {
		System.out.println("======manager_enter=====");
		
		CSDao dao=sqlSession.getMapper(CSDao.class);
		
		String strPage=request.getParameter("page");
		System.out.println("pagggge: "+strPage);
		
		if(strPage==null)
			strPage="1";
		System.out.println("pagge2 : "+strPage);
		int page=Integer.parseInt(strPage);
		searchVO.setPage(page);
		
		int total=dao.MembersBoardTotCount();
		
		System.out.println("totalrow : "+total);
		searchVO.pageCalculate(total);
		
		int rowStart=searchVO.getRowStart();
		int rowEnd=searchVO.getRowEnd();
		
		System.out.println("totPage : "+total);
		System.out.println("clickpage : "+strPage);
		System.out.println("pageStart : "+searchVO.getPageStart());
		System.out.println("pageEnd : "+searchVO.getPageEnd());
		System.out.println("pageTot : "+searchVO.getTotPage());
		System.out.println("rowStart : "+searchVO.getRowStart());
		System.out.println("rowEnd : "+searchVO.getRowEnd());
		
		ArrayList<MembersDto> MMembers=dao.MMembers(rowStart, rowEnd);
	
		model.addAttribute("MMembers",MMembers);
		model.addAttribute("totRowcnt",total);
		model.addAttribute("searchVO",searchVO);

		return "CS/manager/manager_members";
	}
	
	@RequestMapping("manager_membersdetails") 
	 public String manager_membersdetails(HttpServletRequest request,
			 Model model) { 
		System.out.println("=====manager_membersdetails====");
	  
		String smno=request.getParameter("mno");
		CSDao dao = sqlSession.getMapper(CSDao.class);
		
		MembersDto dto = dao.membersdetails(smno);
		model.addAttribute("manager_members",dto );
		
		return "CS/manager/manager_membersdetails"; 
	 	
	 }
	 
	 @RequestMapping(method = RequestMethod.POST, value= "/mgrade")
	 public String mgrade(HttpServletRequest request,
			 Model model) {
		 System.out.println("====mgrade====");
		 
		 String mno=request.getParameter("mno");
		 String mgrade=request.getParameter("mgrade");
		 System.out.println("mno  :"+mno);
		 System.out.println("mgrade  :"+mgrade);
		 
		 CSDao dao = sqlSession.getMapper(CSDao.class);
		 dao.mgrade(mno, mgrade);
	
		 return "redirect:manager_members";
	 }
	 
	 @RequestMapping("membersdelete")
		public String membersdelete(HttpServletRequest request, Model model) {
			System.out.println("=====manager_delete====");

			String smno = request.getParameter("mno");
			CSDao dao = sqlSession.getMapper(CSDao.class);
			dao.membersdelete(smno);
			
			return "redirect:manager_members";
		}
	
}