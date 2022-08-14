package com.tech.project_shopping_mall.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.MainPageDao;
import com.tech.project_shopping_mall.dto.Infodto;
import com.tech.project_shopping_mall.dto.StorageDto;

@Controller
public class BuyPageController {

	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping("BuyPage")
	public String BuyPage(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		String mid = (String )session.getAttribute("mid");
		
		
		
		
		
		
		MainPageDao dao = sqlSession.getMapper(MainPageDao.class);
		int pcode = Integer.parseInt(request.getParameter("p_code"));
		//String pcode = request.getParameter("p_code");

		ArrayList<StorageDto>  strgdto= dao.storage(pcode);
        Infodto indto = dao.search_prouct_detail(pcode);
		System.out.println("indto : " + indto);
		
		model.addAttribute("strgdto",strgdto);
		model.addAttribute("indto", indto);
		return "/Sale/SaleBuying";
		
	}
	
	
	/*
	 * @RequestMapping("BuyPage") public String BuyPagae(HttpServletRequest request,
	 * Model model) {
	 * 
	 * HttpSession session = request.getSession(); String[] mid = (String[]
	 * )session.getAttribute("mid");
	 * 
	 * if (mid.length < 0) { // 비회원일때는 값처리 하고 리턴을 다른곳 비회원전용 MainPageDao dao =
	 * sqlSession.getMapper(MainPageDao.class); int pcode =
	 * Integer.parseInt(request.getParameter("p_code")); //String pcode =
	 * request.getParameter("p_code");
	 * 
	 * Infodto indto = dao.search_prouct_detail(pcode);
	 * System.out.println("indto : " + indto);
	 * 
	 * model.addAttribute("indto", indto); return "/Sale/SaleBuying";
	 * 
	 * 
	 * }
	 * 
	 * 
	 * //여기는 회원전용
	 * 
	 * HttpSession session = request.getSession(); String mid = (String
	 * )session.getAttribute("mid");
	 * 
	 * 
	 * 
	 * MainPageDao dao = sqlSession.getMapper(MainPageDao.class); int pcode =
	 * Integer.parseInt(request.getParameter("p_code")); //String pcode =
	 * request.getParameter("p_code");
	 * 
	 * Infodto indto = dao.search_prouct_detail(pcode);
	 * System.out.println("indto : " + indto);
	 * 
	 * model.addAttribute("indto", indto); return "/Sale/SaleBuying";
	 * 
	 * 
	 * 
	 * }
	 */
	 
}
