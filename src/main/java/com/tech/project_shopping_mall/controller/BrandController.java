package com.tech.project_shopping_mall.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.BrandDao;
import com.tech.project_shopping_mall.dto.BrandDto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BrandController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/brand")
	public String brand(HttpServletRequest request,Model model) {
		System.out.println("brandPage");
		BrandDao dao=sqlSession.getMapper(BrandDao.class);
		String brand_name=request.getParameter("brand_name");
		
		ArrayList<BrandDto> dto=dao.brand(brand_name);
		model.addAttribute("brand", dto);
		return "/BrandPage/brand";
	}
	@RequestMapping("/brand1")
	public String brand1() {
		
		System.out.println("brand1Page");
		return "/BrandPage/brand1";
	}

}