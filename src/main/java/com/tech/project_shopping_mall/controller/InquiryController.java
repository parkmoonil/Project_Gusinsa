package com.tech.project_shopping_mall.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.CSDao;

@Controller
public class InquiryController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/inquiry")
	public String inquiry() {
		System.out.println("=====Inquiry=====");
	
		return "CS/inquiry/inquiry";
	}
	
	@RequestMapping("/Inquiry_write")
	public String Inquiry_write(HttpServletRequest request,
			Model model) {
		System.out.println("=====Inquiry_write=====");
	
		String iselect1=request.getParameter("iselect1");
		String ititle=request.getParameter("ititle");
		String icontent=request.getParameter("icontent");
		String ifile=request.getParameter("ifile");
		String iselect2=request.getParameter("iselect2");

		String attachPath="resources\\upload\\";
		String uploadPath=request.getSession().getServletContext().getRealPath("/");
		System.out.println("uploadPath : "+uploadPath);
		String path=uploadPath+attachPath;
		
		System.out.println("filename : "+ifile);
		if (iselect1==null) {
			iselect1="";
		}
		
		CSDao dao=sqlSession.getMapper(CSDao.class);
		dao.Inquiry_write(iselect1, ititle, icontent, ifile, iselect2);
		
		return "redirect:inquiry2";
	}
	
	@RequestMapping("/inquiry2")
	public String inquiry2() {
		System.out.println("=====Inquiry=====");
	
		return "CS/inquiry/inquiry2";
	}
	
}
