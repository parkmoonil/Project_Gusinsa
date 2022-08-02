package com.tech.project_shopping_mall.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.CSDao;

@Controller
public class CommuController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/communication")
	public String communication() {
		System.out.println("=====communication=====");
		
		return "CS/communication/communication";
	}
	
	@RequestMapping("/communication2")
	public String communication2(HttpServletRequest request) {
		System.out.println("=====communication2=====");
		
		
		return "CS/communication/communication2";
	}
	
	@RequestMapping("/Commu_write")
	public String Commu_write(HttpServletRequest request) {
		System.out.println("=====Commu_write=====");
		String cselect1=request.getParameter("cselect1"); 
		String cselect2=request.getParameter("cselect2"); 
		String cselect3=request.getParameter("cselect3"); 
		String cselect4=request.getParameter("cselect4"); 
		String ctitle=request.getParameter("ctitle"); 
		String ccontent=request.getParameter("ccontent"); 
		String cfile=request.getParameter("cfile");
		
	
		String attachPath="resources\\upload\\";
		String uploadPath=request.getSession().getServletContext().getRealPath("/");
		System.out.println("uploadPath : "+uploadPath);
		String path=uploadPath+attachPath;
		
		System.out.println("filename : "+cfile);
		if (cselect1==null) {
			cselect1="";
		}
		
		CSDao dao=sqlSession.getMapper(CSDao.class);
		dao.Commu_write(cselect1, cselect2, cselect3, cselect4, ctitle, ccontent, cfile);
		
		
		return "redirect:communication4";
	}
	
	@RequestMapping("/communication3")
	public String communication3(HttpServletRequest request) {
		System.out.println("========write========");
		
		return "CS/communication/communication3";
	}
	
	@RequestMapping("/communication4")
	public String communication4(HttpServletRequest request) {
		System.out.println("========write========");
		
		return "CS/communication/communication4";
	}

}
