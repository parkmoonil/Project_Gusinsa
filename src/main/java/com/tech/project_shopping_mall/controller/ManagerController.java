package com.tech.project_shopping_mall.controller;

import java.io.FileInputStream;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.CSDao;
import com.tech.project_shopping_mall.dto.CMDto;
import com.tech.project_shopping_mall.dto.EnterDto;
import com.tech.project_shopping_mall.dto.IMDto;
import com.tech.project_shopping_mall.dto.NoticeDto;
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
	
}