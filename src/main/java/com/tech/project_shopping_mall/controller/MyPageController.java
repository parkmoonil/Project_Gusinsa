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
import com.tech.project_shopping_mall.dto.InquiryDto;
import com.tech.project_shopping_mall.dto.Order_ProductDto;
import com.tech.project_shopping_mall.dto.orderinfoDto;
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
	

	

}
