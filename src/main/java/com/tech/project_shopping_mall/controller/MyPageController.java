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
import com.tech.project_shopping_mall.dto.OrderinfoDto;
import com.tech.project_shopping_mall.dto.Review_Written_Dto;
import com.tech.project_shopping_mall.vopage.SearchVO_CS;
import com.tech.project_shopping_mall.vopage.SearchVO_product;

@Controller
@RequestMapping("/mypage/*")
public class MyPageController {

	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/mypage_orderlist")
	public String mypage(HttpServletRequest request, Model model,SearchVO_product searchVO) {
		System.out.println("주문내역 ㄱㄱ");
		HttpSession session = request.getSession();
		String mid = (String )session.getAttribute("mid");
		
		
		MyPageDao dao = sqlSession.getMapper(MyPageDao.class);

		
		// 페이징처리 제발
		String strPage = request.getParameter("page");  // 페이징처리 값 넣는다
		System.out.println("pageeeeeeeee1 : " +strPage);
		
		if (strPage==null)  strPage ="1";   // 선언한 strPage가 1이 아닐경우 1을 넣는다
		System.out.println("pageeeeeeeee1 : " +strPage);
		int page = Integer.parseInt(strPage);
		searchVO.setPage(page);      // int page 를 앞에 선언한 페이지 값을 넣고  계산식 선언한 searchVO으로 계산한다
		
		int total = dao.orderlistCount_total(mid);   // 로그인한 아이디로 쿼리 돌린 총 갯수 저장
		searchVO.pageCalculate(total);  // 계산식 searchVO 에 토탈 갯수 저장
		
		System.out.println("total : " + total);  // 값 확인
		
		int rowStart = searchVO.getRowStart();  // 첫 페이지 계산
		int rowEnd = searchVO.getRowEnd();  // 마지막 페이지 계산
		
		
		ArrayList<OrderinfoDto> orderdto = dao.orderlist(rowStart,rowEnd,mid);  // 첫페이지, 마지막 페이지  아이디 저장
		
		
		
		model.addAttribute("order",orderdto);
		model.addAttribute("totRowCnt",total);
		model.addAttribute("searchVO",searchVO);

		
		return "/mypage/mypage_orderlist";
	}
	
	@RequestMapping("/mypage_inquiry")
	public String mypage_inquiry(HttpServletRequest request, Model model,SearchVO_product searchVO) {
		System.out.println("mypage ㄱㄱ");
		HttpSession session = request.getSession();
		String mid = (String )session.getAttribute("mid");
		// 문의내역 수정해야됌
		
		MyPageDao dao = sqlSession.getMapper(MyPageDao.class);
		// 가자가자 페이징처리
		String strPage = request.getParameter("page");  // 페이징처리 값 넣는다
		System.out.println("pageeeeeeeee1 : " +strPage);
		
		if (strPage==null) strPage ="1";   // 선언한 strPage가 1이 아닐경우 1을 넣는다
		
		int page = Integer.parseInt(strPage);
		searchVO.setPage(page);      // int page 를 앞에 선언한 페이지 값을 넣고  계산식 선언한 searchVO으로 계산한다
		
		int total = dao.Inqlist_Count_total(mid);   // 로그인한 아이디로 쿼리 돌린 총 갯수 저장
		searchVO.pageCalculate(total); 

		System.out.println("total : " + total);  // 값 확인
		
		int rowStart = searchVO.getRowStart();  // 첫 페이지 계산
		int rowEnd = searchVO.getRowEnd();  // 마지막 페이지 계산
		
		System.out.println("rowStart : " + rowStart);
		System.out.println("rowEnd : " + rowEnd);
		System.out.println("rowStart : " + rowStart);
		System.out.println("rowEnd : " + rowEnd);
		
		
		ArrayList<InquiryDto> Inqdto = dao.Inqlist(rowStart,rowEnd,mid);  // 첫페이지, 마지막 페이지  아이디 저장
		System.out.println("Inqdto : " + Inqdto);
		
		// 문의내역으로 조회되게 해야됌
		
		model.addAttribute("inq",Inqdto);
		model.addAttribute("totRowCnt",total);
		model.addAttribute("searchVO",searchVO);
		System.out.println("Inqdto : " + Inqdto);
		
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
		 

		return "/myinquiry";
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
	
	 	return "/mycommu"; 
	 	
	 }
	 
	 // 작성가능한 리뷰
	 @RequestMapping("/mypage_possible_review")
		public String mypage_possible_review(HttpServletRequest request, Model model,SearchVO_CS searchVO) {
		 System.out.println("내가 작성가능한 리뷰");
			HttpSession session = request.getSession();
			String mid = (String )session.getAttribute("mid");
			
			
			MyPageDao dao = sqlSession.getMapper(MyPageDao.class);

			 //작성가능한리뷰 띄우기 해야함 일단 보류
			// 페이징처리 제발
			String strPage = request.getParameter("page");  // 페이징처리 값 넣는다
			System.out.println("pageeeeeeeee1 : " +strPage);
			
			if (strPage==null) strPage ="1";   // 선언한 strPage가 1이 아닐경우 1을 넣는다
			
			int page = Integer.parseInt(strPage);
			searchVO.setPage(page);      // int page 를 앞에 선언한 페이지 값을 넣고  계산식 선언한 searchVO으로 계산한다
			
			int total = dao.mypage_possible_review_total(mid);   // 로그인한 아이디로 쿼리 돌린 총 갯수 저장
			searchVO.pageCalculate(total);  // 계산식 searchVO 에 토탈 갯수 저장
			
			System.out.println("total : " + total);  // 값 확인
			
			int rowStart = searchVO.getRowStart();  // 첫 페이지 계산
			int rowEnd = searchVO.getRowEnd();  // 마지막 페이지 계산
			
			System.out.println("rowStart : " + rowStart);
			System.out.println("rowEnd : " + rowEnd);
			ArrayList<OrderinfoDto> orderdto = dao.mypage_possible_review(rowStart,rowEnd,mid);
			
			//System.out.println("이렇게 가져옴?" + orderdto.);
			// 첫페이지, 마지막 페이지  아이디 저장
			System.out.println("orderdto : " + orderdto);
			
			
			model.addAttribute("order",orderdto);
			model.addAttribute("totRowCnt",total);
			model.addAttribute("searchVO",searchVO);
			String ocode = request.getParameter("o_code");
			System.out.println("ocode : " + ocode);
			
			return "/mypage/mypage_possible_review";
		}
	 
	 
	 @RequestMapping("/mypage_written_review")
		public String mypage_written_review(HttpServletRequest request, Model model,SearchVO_CS searchVO) {
		 System.out.println("내가 작성한 리뷰");
		 	HttpSession session = request.getSession();
			String mid = (String )session.getAttribute("mid");
			
			
			MyPageDao dao = sqlSession.getMapper(MyPageDao.class);

			
			// 페이징처리 제발
			String strPage = request.getParameter("page");  // 페이징처리 값 넣는다
			System.out.println("pageeeeeeeee1 : " +strPage);
			
			if (strPage==null) 
				strPage ="1";   // 선언한 strPage가 1이 아닐경우 1을 넣는다
			System.out.println("넣어졌나 페이지" + strPage);
			int page = Integer.parseInt(strPage);
			searchVO.setPage(page);      // int page 를 앞에 선언한 페이지 값을 넣고  계산식 선언한 searchVO으로 계산한다
			
			int total = dao.mypage_written_review_total(mid); //로그인한 아이디로 쿼리 돌린 총 갯수 저장
			
			System.out.println("너의 페이지 갯수 : " + dao.mypage_written_review_total(mid));
			searchVO.pageCalculate(total);  // 계산식 searchVO 에 토탈 갯수 저장
			
			System.out.println("total : " + total);  // 값 확인
			
			int rowStart = searchVO.getRowStart();  // 첫 페이지 계산
			int rowEnd = searchVO.getRowEnd();  // 마지막 페이지 계산
			
			System.out.println("rowStart : " + rowStart);
			System.out.println("rowEnd : " + rowEnd);
			
			ArrayList<Review_Written_Dto> redto = dao.mypage_written_review(rowStart,rowEnd,mid);  // 첫페이지, 마지막 페이지  아이디 저장
			

			model.addAttribute("redto",redto);
			model.addAttribute("totRowCnt",total);
			model.addAttribute("searchVO",searchVO);
			
			
			return "/mypage/mypage_written_review";
		}
	

}
