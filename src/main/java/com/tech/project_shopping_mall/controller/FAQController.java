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
import com.tech.project_shopping_mall.vopage.SearchVO;

@Controller
public class FAQController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/faqboard")
	public String faqboard(HttpServletRequest request,Model model,
			SearchVO searchVO) {
		System.out.println("=======FaqBoard=======");
		
		CSDao dao=sqlSession.getMapper(CSDao.class);
		
		
		String strPage=request.getParameter("page");
		System.out.println("pagggge: "+strPage);
		
		if(strPage==null)
			strPage="1";

		int page=Integer.parseInt(strPage);
		searchVO.setPage(page);
		
		int total=dao.selectBoardTotCount3();
		
		searchVO.pageCalculate(total);
		
		int rowStart=searchVO.getRowStart();
		int rowEnd=searchVO.getRowEnd();
		
		ArrayList<FaqDto> faqboard=dao.faqboard(rowStart,rowEnd);
		
		model.addAttribute("faqboard",faqboard);
		model.addAttribute("totRowcnt",total);
		model.addAttribute("searchVO",searchVO);
		
		return "CS/faq/faqboard";
	}
	
	@RequestMapping("/faq_write")
	public String faq_write(HttpServletRequest request,
			Model model) {
		System.out.println("=====FAQ_Write=====");
		
		String fheader=request.getParameter("fheader");
		String ftitle=request.getParameter("ftitle");
		String fcontent=request.getParameter("fcontent");
		
		CSDao dao=sqlSession.getMapper(CSDao.class);
		dao.faq_write(fheader, ftitle, fcontent);
		
		return "redirect:faqboard";
	}
	
	@RequestMapping("/faq_writeview")
	public String faq_writeview() {
		System.out.println("====FAQ_WriteView===");
		
		return "CS/faq/faq_writeview";
	}
	
	@RequestMapping("/faqdelete")
	public String faqdelete(HttpServletRequest request,
			Model model) {
		System.out.println("====delete=====");
		
		int snnum=Integer.parseInt(request.getParameter("fnum"));
		CSDao dao=sqlSession.getMapper(CSDao.class);
		dao.faqdelete(snnum);
		
		return "redirect:faqboard";
	}
		
}
