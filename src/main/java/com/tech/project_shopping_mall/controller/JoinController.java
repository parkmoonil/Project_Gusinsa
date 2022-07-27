package com.tech.project_shopping_mall.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.JoinIDao;
import com.tech.project_shopping_mall.dto.MembersDto;

@Controller
@RequestMapping("/join/*")
public class JoinController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/joinform")
	public String joinform(HttpServletRequest request, Model model) {
		System.out.println("=========pass by joinform()=============");

		return "join/joinform";
	}
	@RequestMapping("/join")
	public String join(@ModelAttribute MembersDto dto) throws Exception {
		System.out.println("=========pass by join()=============");
		
		JoinIDao dao = sqlSession.getMapper(JoinIDao.class);
		try {
			dao.join(dto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new Exception();
		}
				
		return "redirect:/login/loginform";
	}
	@RequestMapping("/joinform2")
	public String joinform2(HttpServletRequest request, Model model) {
		System.out.println("=========pass by joinform()=============");

		return "/join/joinform2";
	}
	@RequestMapping("/joinform3")
	public String joinform3(HttpServletRequest request, Model model) {
		System.out.println("=========pass by joinform()=============");

		return "/join/joinform3";
	}
	@RequestMapping("/joinform4")
	public String joinform4(HttpServletRequest request, Model model) {
		System.out.println("=========pass by joinform()=============");

		return "/join/joinform4";
	}
}
