package com.tech.project_shopping_mall.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.CSDao;
@Controller
public class EnterController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/enter")
	public String enter(Model model) {
		System.out.println("======enter=======");
		
		CSDao dao=sqlSession.getMapper(CSDao.class);
		
		return "CS/enter/enter";
		
	}
}
