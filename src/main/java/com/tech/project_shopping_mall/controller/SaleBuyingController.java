package com.tech.project_shopping_mall.controller;



import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import com.tech.project_shopping_mall.vopage.SearchVO_CS;

@Controller
public class SaleBuyingController {

//	BServiceInter bServiceInter;
	
	@Autowired
	private SqlSession sqlSession;
	
	//  아까 그오류는 
	@RequestMapping("/SaleBuying")
//	             // 요놈이 list 같은 이름이라 뜬거엿고 이제 오류2개중 하나 해결 그오류 메시지 보고올께요에에네네
	public String SaleMain() {
//		
		return "/Sale/SaleBuying";

	}
}	

