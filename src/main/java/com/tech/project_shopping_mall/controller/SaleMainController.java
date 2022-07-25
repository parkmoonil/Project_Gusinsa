package com.tech.project_shopping_mall.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
}	