package com.tech.project_shopping_mall.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.PDao;
import com.tech.project_shopping_mall.vopage.SearchVO;

@Controller
public class PayController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/pay")
	public String pay(HttpServletRequest request,Model model,SearchVO searchVO) {
		PDao dao=sqlSession.getMapper(PDao.class);
		
		int sprice = Integer.parseInt(request.getParameter("sumprice"));
	     int amount = Integer.parseInt(request.getParameter("amount"));
	      String p_name = request.getParameter("p_name");
	      
	      System.out.println("sprice" + sprice);
	      System.out.println("amount" + amount);
	      System.out.println("p_name" + p_name);
	      System.out.println("sprice" + sprice);
	      System.out.println("sprice" + sprice);
	      System.out.println("sprice" + sprice);
	      System.out.println("sprice" + sprice);
	      
	      model.addAttribute("sprice",sprice);
	      model.addAttribute("amount",amount);
	      model.addAttribute("p_name",p_name);
		
		return "Pay/pay";
	}
	@RequestMapping("/afterpay")
	public String afterpay(HttpServletRequest request,Model model,SearchVO searchVO) {
		PDao dao=sqlSession.getMapper(PDao.class);
		
		return "Pay/afterpay";
	}
}
