package com.tech.project_shopping_mall.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.PDao;
import com.tech.project_shopping_mall.vopage.SearchVO_CS;

@Controller
public class PayController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/pay")
	public String pay(HttpServletRequest request,Model model,SearchVO_CS searchVO) {
		PDao dao=sqlSession.getMapper(PDao.class);
		
		return "Pay/pay";
	}
	@RequestMapping("/afterpay")
	public String afterpay(HttpServletRequest request,Model model,SearchVO_CS searchVO) {
		PDao dao=sqlSession.getMapper(PDao.class);
		
		return "Pay/afterpay";
	}
}
