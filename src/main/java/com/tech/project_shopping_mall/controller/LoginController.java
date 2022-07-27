package com.tech.project_shopping_mall.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.LoginIDao;
import com.tech.project_shopping_mall.dto.MembersDto;


@Controller
@RequestMapping("/login/*")
public class LoginController {
//	BServiceInf commandInf;
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/loginform")
<<<<<<< HEAD
	public String loginform(HttpServletRequest request, Model model) {
		System.out.println("=========pass by loginform()=============");
=======
	public String loginform(/* HttpServletRequest request */) {
//		System.out.println("login");
>>>>>>> c6b8ddd8c06ac72a585bcfd3215d9feaf77d6c81
//		
		return "/login/loginform";
	}

	@RequestMapping("/login")
	public String login(@ModelAttribute MembersDto dto, HttpServletRequest request, Model model) {
		System.out.println("=========pass by login()=============");
		
		LoginIDao dao=sqlSession.getMapper(LoginIDao.class);
		MembersDto rtnDto = dao.selectUserPassword(dto);
		
		//아이디 기준으로 디비에서 가져온 패스워드를 입력한 디비와 비교해서 넣어줌
		if(rtnDto.getMpw().equals(dto.getMpw())) {
			System.out.println("login success!!!");
			//세션에 담기
			HttpSession session=request.getSession();
			session.setAttribute("mid", rtnDto.getMid());
			session.setAttribute("mpw", rtnDto.getMpw());
		}
		
		return "redirect:/login/loginform";
	}
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, Model model) {
		System.out.println("=========pass by logout()=============");
//		
		System.out.println("logout gogo!!!");
		//세션에 담기
		HttpSession session=request.getSession();
		session.invalidate();
		return "redirect:/login/loginform";
	}
}

