package com.tech.project_shopping_mall.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.CSDao;
import com.tech.project_shopping_mall.dto.FaqDto;

@Controller
public class FAQController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/faqboard")
	public String faqboard(HttpServletRequest request,Model model) {
		System.out.println("=======FaqBoard=======");
		
		CSDao dao=sqlSession.getMapper(CSDao.class);
		
		ArrayList<FaqDto> faqboard=dao.faqboard();
		model.addAttribute("faqboard",faqboard);
		
		return "CS/faq/faqboard";
	}
	
	@RequestMapping("/faq_write")
	public String faq_write(HttpServletRequest request,
			Model model) {
		System.out.println("=====FAQ_Write=====");
		
		String fheader=request.getParameter("fheader");
		String ftitle=request.getParameter("ftitle");
		String fcontent=request.getParameter("fcontent");
		System.out.println("fheader : " + fheader);
		System.out.println("ftitle : " + ftitle);
		System.out.println("fcontent : " + fcontent);
		
		CSDao dao=sqlSession.getMapper(CSDao.class);
		dao.faq_write(fheader, ftitle, fcontent);
		
		return "redirect:faqboard";
	}
	
	@RequestMapping("/faq_writeview")
	public String faq_writeview() {
		System.out.println("====FAQ_WriteView===");
		
		return "CS/faq/faq_writeview";
	}
	
}
