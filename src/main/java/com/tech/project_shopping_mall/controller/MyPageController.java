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
		
		MyPageDao dao = sqlSession.getMapper(MyPageDao.class);
		
		
		ArrayList<Order_ProductDto> orderdto = dao.order_p();
		
		System.out.println("orderdto : " + orderdto);
		
		model.addAttribute("order",orderdto);
		
		return "/mypage/mypage_orderlist";
	}
	
	@RequestMapping("/mypage_orderlist_back")
	public String mypage_back(HttpServletRequest request, Model model,SearchVO_product searchVO) {
		System.out.println("mypage ㄱㄱ");
		
		return "/mypage/mypage_orderlist_back";
	}
	
	@RequestMapping("/buylist")
	public String buylist(HttpServletRequest request, Model model,SearchVO_product searchVO) {
		System.out.println("day buy day");
		
		HttpSession session = request.getSession();
		MyPageDao dao = sqlSession.getMapper(MyPageDao.class);
		
		String mid = (String )session.getAttribute("mid");
		
		ArrayList<orderinfoDto> odto = dao.orderlist(mid);
		model.addAttribute("odto",odto);
		
		return "/mypage/mypage_buylist";
	}
}
