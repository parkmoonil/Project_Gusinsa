package com.tech.project_shopping_mall.controller;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.util.ArrayList;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.finalpj.crypt.CryptoUtil;
import com.tech.project_shopping_mall.dao.JoinMapper;
import com.tech.project_shopping_mall.dao.LoginMapper;
import com.tech.project_shopping_mall.dao.MyPageDao;
import com.tech.project_shopping_mall.dto.CMDto;
import com.tech.project_shopping_mall.dto.IMDto;
import com.tech.project_shopping_mall.dto.InquiryDto;
import com.tech.project_shopping_mall.dto.MembersDto;
import com.tech.project_shopping_mall.dto.OrderinfoDto;
import com.tech.project_shopping_mall.dto.Review_Written_Dto;
import com.tech.project_shopping_mall.vopage.SearchVO_CS;
import com.tech.project_shopping_mall.vopage.SearchVO_product;

@Controller
public class MyPageController {

	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/mypage_orderlist")
	public String mypage(HttpServletRequest request, Model model,SearchVO_product searchVO) {
		System.out.println("mypage_orderlist ㄱㄱ");
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
		System.out.println("mypage_inquiry ㄱㄱ");
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
	
	

	
	@RequestMapping("/mypage_mycommu") 
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
	
	 	return "/mypage/mypage_mycommu"; 
	 	
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
	 @RequestMapping("/mypage_user_pwcheck")
		public String mypage_user_pwcheck(HttpServletRequest request, Model model,SearchVO_CS searchVO) {
		 System.out.println("마이페이지 수정~");
		 	HttpSession session = request.getSession();
			String mid = (String )session.getAttribute("mid");
			
			
			MyPageDao dao = sqlSession.getMapper(MyPageDao.class);

			
			
			
			return "/mypage/mypage_user_pwcheck";
		}
	 
	 
	 @RequestMapping("/mypage_user_edit")
		public String mypage_user_edit(HttpServletRequest request, Model model,SearchVO_CS searchVO)throws ParseException, InvalidKeyException, UnsupportedEncodingException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException {
		 System.out.println("마이페이지 수정~");
		 	HttpSession session = request.getSession();
			String mid = (String )session.getAttribute("mid");
			String key = "a1b2c3d4e5f6g7h8";
			
			LoginMapper LDao = sqlSession.getMapper(LoginMapper.class);
			// 여기서 뿌려줘야함
			
			MembersDto mdto = LDao.selectUserPassword(mid);
		
			model.addAttribute("mdto",mdto);

			
			
			
			return "/mypage/mypage_user_edit";
		}
	 
	 
	 
	 @RequestMapping("/mypage_user_editOk")
		public String mypage_user_editOk(HttpServletRequest request, Model model,SearchVO_CS searchVO, MembersDto dto)throws ParseException, InvalidKeyException, UnsupportedEncodingException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException {
		 System.out.println("수정완료~");
		 	HttpSession session = request.getSession();
			String mid = (String )session.getAttribute("mid");
			String key = "a1b2c3d4e5f6g7h8";
			
			System.out.println("mid 오나" + mid);
		
			String checkid = "";
			String mpw = request.getParameter("mpw");
			
			String mname = request.getParameter("mname");
			String mphone = request.getParameter("mphone");
			String memail = request.getParameter("memail");
			String maddr_one = request.getParameter("maddr_one");
			String maddr_two = request.getParameter("maddr_two");
			String maddr_three = request.getParameter("maddr_three");
			String maddr_four = request.getParameter("maddr_four");
			
			System.out.println("name : " +mname);
			System.out.println("mphone : " +mphone);
			System.out.println("memail : " +memail);
			System.out.println("maddr_one : " +maddr_one);
			System.out.println("maddr_two : " +maddr_two);
			System.out.println("maddr_three : " +maddr_three);
			System.out.println("maddr_four : " +maddr_four);
			System.out.println("mpw : " +mpw);

			JoinMapper jm = sqlSession.getMapper(JoinMapper.class);
			if (mpw.equals(checkid)) {
				System.out.println("비밀번호를 변경안할경우");
				jm.User_Edit_NotPw(mid, mname,  mphone, maddr_one, maddr_two, maddr_three, maddr_four, memail);	
			}
			else {
				System.out.println("비밀번호를 변경할경우");
				String bcdpw = CryptoUtil.encryptAES256(mpw, key);//암호화처리
				System.out.println("암호화된 값 : " + bcdpw);
				dto.setMpw(bcdpw);
				jm.User_Edit_InPw(mid, bcdpw, mname, mphone, maddr_one, maddr_two, maddr_three, maddr_four, memail);
				session.invalidate();
			}
			
			
			
			return "redirect:/login/loginform";
		}
	

}
