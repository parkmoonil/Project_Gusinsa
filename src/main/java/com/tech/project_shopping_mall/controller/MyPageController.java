package com.tech.project_shopping_mall.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.MyPageDao;
import com.tech.project_shopping_mall.dto.CMDto;
import com.tech.project_shopping_mall.dto.IMDto;
import com.tech.project_shopping_mall.dto.InquiryDto;
import com.tech.project_shopping_mall.dto.Order_ProductDto;
import com.tech.project_shopping_mall.dto.orderinfoDto;
import com.tech.project_shopping_mall.vopage.SearchVO_CS;
import com.tech.project_shopping_mall.vopage.SearchVO_product;

@Controller
@RequestMapping("/mypage/*")
public class MyPageController {

	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/mypage_orderlist")
	public String mypage(HttpServletRequest request, Model model,SearchVO_product searchVO) {
		System.out.println("mypage ㄱㄱ");
		HttpSession session = request.getSession();
		String mid = (String )session.getAttribute("mid");
		
		
		MyPageDao dao = sqlSession.getMapper(MyPageDao.class);
		
		
		ArrayList<Order_ProductDto> orderdto = dao.orderlist(mid);
		
		System.out.println("orderdto : " + orderdto);
		
		
		model.addAttribute("order",orderdto);
		
		return "/mypage/mypage_orderlist";
	}
	
	@RequestMapping("/mypage_inquiry")
	public String mypage_inquiry(HttpServletRequest request, Model model,SearchVO_product searchVO) {
		System.out.println("mypage ㄱㄱ");
		HttpSession session = request.getSession();
		String mid = (String )session.getAttribute("mid");
		// 문의내역 수정해야됌
		
		MyPageDao dao = sqlSession.getMapper(MyPageDao.class);
		
		// 문의내역으로 조회되게 해야됌
		ArrayList<InquiryDto> Inqdto = dao.Inqlist(mid);
		
		System.out.println("Inqdto : " + Inqdto);
		
		
		model.addAttribute("inq",Inqdto);
		
		return "/mypage/mypage_inquiry";
	}
	
	@RequestMapping("/myinquiry")
	public String myinquiry(HttpServletRequest request, 
			Model model, SearchVO_CS searchVO) {
		System.out.println("=====myinquiry====");

		MyPageDao dao = sqlSession.getMapper(MyPageDao.class);
		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("mid");
		System.out.println("mid : " + mid);
	
		String strPage=request.getParameter("page");
		System.out.println("pagggge: "+strPage);
		
		if(strPage==null) 
			strPage="1"; 
		System.out.println("pagge2 : "+strPage); 
		int page=Integer.parseInt(strPage); 
		searchVO.setPage(page);
		
		int total=dao.MypageIMBoardTotCount(mid);
	
		System.out.println("totalrow : "+total); 
		searchVO.pageCalculate(total);
		
		 
		System.out.println("totPage : "+total);
		System.out.println("pageStart : "+searchVO.getPageStart());
		System.out.println("pageEnd : "+searchVO.getPageEnd());
		System.out.println("pageTot : "+searchVO.getTotPage());
		System.out.println("rowStart : "+searchVO.getRowStart());
		System.out.println("rowEnd : "+searchVO.getRowEnd());
		
		int rowStart=searchVO.getRowStart(); 
		int rowEnd=searchVO.getRowEnd();
		
		ArrayList<IMDto> MypageIM = dao.MypageIM(mid, rowStart, rowEnd);
		
		model.addAttribute("MypageIM",MypageIM); 
		model.addAttribute("totRowcnt",total);
		model.addAttribute("searchVO",searchVO);
		 

		return "/CS/myinquiry";
	}

	
	 @RequestMapping("/mycommu") 
	 public String mycommu(HttpServletRequest request,
	 Model model,SearchVO_CS searchVO) { 
		 System.out.println("=====mycommu====");
	  
	 MyPageDao dao=sqlSession.getMapper(MyPageDao.class); 
	 
	 HttpSession session =request.getSession(); 
	 String mid = (String)session.getAttribute("mid");
	 System.out.println("mid : "+mid);
	
	 String strPage=request.getParameter("page");
	 System.out.println("pagggge: "+strPage);
	
	 if(strPage==null) 
		 strPage="1"; 
	 System.out.println("pagge2 : "+strPage); 
	 int page=Integer.parseInt(strPage); 
	 searchVO.setPage(page);
	  
	 int total=dao.MypageCMBoardTotCount(mid);
	  
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
	 
	 ArrayList<CMDto> MypageCM = dao.MypageCM(mid, rowStart, rowEnd);
	 
	 model.addAttribute("MypageCM",MypageCM);
	 model.addAttribute("totRowcnt",total);
	 model.addAttribute("searchVO",searchVO);
	
	 	return "/CS/mycommu"; 
	 	
	 }
	

}
