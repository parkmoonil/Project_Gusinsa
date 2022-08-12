package com.tech.project_shopping_mall.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.finalpj.crypt.CryptoUtil;
import com.tech.project_shopping_mall.dao.LoginMapper;
import com.tech.project_shopping_mall.dto.EnterDto;
import com.tech.project_shopping_mall.dto.MembersDto;


@Controller
@RequestMapping("/login2/*")
public class LoginController2 {
//	BServiceInf commandInf;
	
	String key = "a1b2c3d4e5f6g7h8";
	
	@Autowired
	private SqlSession sqlSession;
	
	//로그인
	@RequestMapping("/loginform2")
	public String loginform(HttpServletRequest request, Model model) {
		System.out.println("=========pass by loginform()=============");
//		
		return "/login2/loginform2";
	}
	//로그아웃
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
	
	//사업자 로그인
	@RequestMapping("/login2")
	public String loginform2(HttpServletRequest request) {
		System.out.println("=========pass by loginform()=============");
//		
		String ereginum = request.getParameter("ereginum");
		String ephone = request.getParameter("ephone");
		
		LoginMapper dao=sqlSession.getMapper(LoginMapper.class);
		EnterDto etndto = dao.selectEntrepreneurPassword(ereginum);
		try {
			if(ephone.equals(etndto.getEphone())) {
				System.out.println("login success!!!");
				//세션에 담기
				HttpSession session=request.getSession();
				session.setAttribute("ereginum", etndto.getEreginum());
				session.setAttribute("ephone", etndto.getEphone());
				System.out.println("사업자번호와 전화번호가 맞았습니다");
			}else {
				System.out.println("사업자번호와 전화번호가 틀렸습니다");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "redirect:../";
	}
	

}


