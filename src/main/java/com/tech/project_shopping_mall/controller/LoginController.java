package com.tech.project_shopping_mall.controller;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

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
import com.tech.project_shopping_mall.dto.MembersDto;


@Controller
@RequestMapping("/login/*")
public class LoginController {
//	BServiceInf commandInf;
	
	String key = "a1b2c3d4e5f6g7h8";
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/loginform")
	public String loginform(HttpServletRequest request, Model model) {
		System.out.println("=========pass by loginform()=============");
//		
		return "/login/loginform";
	}

	@RequestMapping("/login")
	public String login(@ModelAttribute MembersDto dto, HttpServletRequest request, Model model) throws InvalidKeyException, UnsupportedEncodingException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException {
		System.out.println("=========pass by login()=============");
		
		LoginMapper dao=sqlSession.getMapper(LoginMapper.class);
		MembersDto rtnDto = dao.selectUserPassword(dto);
		
//		String decodeText = URLDecoder.decode(rtnDto.getMpw(), "UTF-8");
		
		String decryptPwd = CryptoUtil.decryptAES256(rtnDto.getMpw(),key);
//		
//		URLDecoder.decode(decryptPwd, "UTF-8");
//
		dto.setMpw(decryptPwd);
		System.out.println("복호화된 값 : "+decryptPwd);
//		
		dao.selectUserPassword(dto);
		//아이디 기준으로 디비에서 가져온 패스워드를 입력한 디비와 비교해서 넣어줌
		if(decryptPwd.equals(dto.getMpw())) {
			System.out.println("login success!!!");
			//세션에 담기
			HttpSession session=request.getSession();
			
			session.setAttribute("mid", rtnDto.getMid());
			session.setAttribute("mpw", rtnDto.getMpw());
		}
		
		return "redirect:../";
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
	
	//아이디 찾기 부분
	@RequestMapping("idcheck")
	public String idcheck(@ModelAttribute MembersDto dto, HttpServletRequest request) {
		System.out.println("=========pass by loginform()=============");
		
		
		
		return "/login/idpw/idcheck";
	}
	@RequestMapping("idcheck2")
	public String idcheck2(HttpServletRequest request, Model model) {
		System.out.println("아이디 확인");		
			
		LoginMapper dao=sqlSession.getMapper(LoginMapper.class);
		String mname = request.getParameter("mname");
		String mphone = request.getParameter("mphone");
		
		System.out.println("mid 가져와야 할거다: " + mname);
		System.out.println("mid 가져와야 할거다: " + mphone);
		
		MembersDto dto = dao.findId(mname, mphone);
		
		System.out.println("dto 가져와야 할거다: " + dto);
		model.addAttribute("mid", dto);
		
		//model.addAttribute("user", dto);
		
		return "/login/idpw/idcheck2";
	}

}


