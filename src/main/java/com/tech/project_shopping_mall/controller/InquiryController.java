package com.tech.project_shopping_mall.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.tech.project_shopping_mall.dao.CSDao;
import com.tech.project_shopping_mall.dto.MembersDto;

@Controller
public class InquiryController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/inquiry")
	public String inquiry(HttpServletRequest request,Model model) {
		System.out.println("=====Inquiry=====");
	
		HttpSession session = request.getSession();
		String mid = (String)session.getAttribute("mid");
		
		System.out.println("mid : "+mid);
		
		CSDao dao=sqlSession.getMapper(CSDao.class);
		MembersDto dto = dao.CSMembers2(mid);
		model.addAttribute("Inquiry",dto);
		
		return "CS/inquiry/inquiry";
	}
	
	@RequestMapping("/Inquiry_write")
	public String Inquiry_write(HttpServletRequest request) throws Exception {
		System.out.println("=====Inquiry_write=====");
	
		
		String attachPath="resources\\upload\\";
		String uploadPath=request.getSession().getServletContext().getRealPath("/");
		System.out.println("uploadPath : "+uploadPath);
		String path=uploadPath+attachPath;
		
		MultipartRequest req=
				new MultipartRequest(request, path, 1024*1024*20, "utf-8",
						new DefaultFileRenamePolicy());
		
		HttpSession session = request.getSession();
		String mid = (String)session.getAttribute("mid");
		
		String iselect1=req.getParameter("iselect1");
		String ititle=req.getParameter("ititle");
		String icontent=req.getParameter("icontent");
		String ifile=req.getFilesystemName("ifile");
		String iselect2=req.getParameter("iselect2");
		
		System.out.println("filename : "+ifile);
		if (ifile==null) {
			ifile="";
		}
		
		CSDao dao=sqlSession.getMapper(CSDao.class);
		
		dao.Inquiry_write(iselect1, ititle, icontent, ifile, iselect2,mid);
		
		return "redirect:inquiry2";
	}
	
	@RequestMapping("/inquiry2")
	public String inquiry2() {
		System.out.println("=====Inquiry=====");
	
		return "CS/inquiry/inquiry2";
	}
	
}
