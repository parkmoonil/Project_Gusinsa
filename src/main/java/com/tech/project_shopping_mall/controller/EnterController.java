package com.tech.project_shopping_mall.controller;

import javax.servlet.http.HttpServletRequest;

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
	public String enter(HttpServletRequest request,Model model) {
		System.out.println("======enter======");
		

		
		return "CS/enter/enter";
		
	}
	
	@RequestMapping("Enter_write")
	public String Enter_write(HttpServletRequest request,Model model) {
		System.out.println("=====Enter_write=====");
		
		String ereginum=request.getParameter("ereginum");
		String etradename=request.getParameter("etradename");
		String eaddr1=request.getParameter("eaddr1");
		String eaddr2=request.getParameter("eaddr2");
		String eaddr3=request.getParameter("eaddr3");
		String eaddr4=request.getParameter("eaddr4");
		String esales=request.getParameter("esales");
		String ebname=request.getParameter("ebname");
		String ebintro=request.getParameter("ebintro");
		String ehomepage=request.getParameter("ehomepage");
		String econtactname=request.getParameter("econtactname");
		String eposition=request.getParameter("eposition");
		String echargenum=request.getParameter("echargenum");
		String efax=request.getParameter("efax");
		String ephone=request.getParameter("ephone");
		String eemail=request.getParameter("eemail");
		
		
		CSDao dao=sqlSession.getMapper(CSDao.class);
		dao.Enter_write(ereginum, etradename, eaddr1, eaddr2, eaddr3, eaddr4, esales, ebname, ebintro, ehomepage, econtactname, eposition, echargenum, efax, ephone, eemail);
		
		return "redirect:enter2";
	}
	
	@RequestMapping("/enter2")
	public String enter2() {
		System.out.println("======enter2======");
		

		return "CS/enter/enter2";
		
	}
}
