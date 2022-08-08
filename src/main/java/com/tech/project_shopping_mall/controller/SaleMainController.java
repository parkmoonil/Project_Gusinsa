package com.tech.project_shopping_mall.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.MainPageDao;
import com.tech.project_shopping_mall.dto.Infodto;

@Controller
public class SaleMainController {

//	BServiceInter bServiceInter;
	
	@Autowired
	private SqlSession sqlSession;
	
	//  아까 그오류는 
	@RequestMapping("/SaleMain")
	public String SaleMain() {
//		
		return "/Sale/SaleMain";

	}
	
	

	
	
	
//	@RequestMapping("/SaleBuying")
//	//    // 요놈이 list 같은 이름이라 뜬거엿고 이제 오류2개중 하나 해결 그오류 메시지 보고올께요에에네네
//	public String SaleBuying(HttpServletRequest request, Model model) {
//		MainPageDao dao = sqlSession.getMapper(MainPageDao.class);
//		String pcode = request.getParameter("p_code");
//		
//		
//		System.out.println("pcode : " + pcode);
////		System.out.println("indto : " + indto);
//		ArrayList<Infodto> indto = dao.search_prouct_detail(pcode);
//		model.addAttribute("indto", indto);
//		
//		
//	return "/Sale/SaleBuying";
//
//}
}	