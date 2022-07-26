package com.tech.project_shopping_mall.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.PDao;
import com.tech.project_shopping_mall.dto.Infodto;




@Controller
public class CategoryController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/men")
	public String Men(HttpServletRequest request,Model model) {
		System.out.println("넘어왔따");
		PDao dao=sqlSession.getMapper(PDao.class);
		String p_name=request.getParameter("p_name");
		String p_price=request.getParameter("p_price");		
		String p_img=request.getParameter("p_img");
		
		ArrayList<Infodto> dto=dao.men(p_name,p_price,p_img);
		model.addAttribute("men",dto);
		return "men";
	}
	
}
