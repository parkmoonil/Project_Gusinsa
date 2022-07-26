package com.tech.project_shopping_mall.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.tech.project_shopping_mall.dao.MainPageDao;
import com.tech.project_shopping_mall.dto.MainPageSearchDto;
import com.tech.project_shopping_mall.dto.MainPageSearch_ProductsDto;
import com.tech.project_shopping_mall.vopage.SearchVO;

@Controller
public class MainPageController {

//	BServiceInter bServiceInter;
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping("/search")
	public String list(HttpServletRequest request,SearchVO searchVO,Model model) {
		System.out.println("search!!");
		
		// 검색한 단어를 keyword에 저장합니다
		String keyword = request.getParameter("keyword");
		System.out.println("키워드는 : " + keyword);
		// 그걸 http session으로 얻어낸 세션
		HttpSession session=request.getSession();
		// 검색값을 얻어내고 그걸 화면전환 시켜줍니다  
		session.setAttribute("keyword", keyword);
		// 검색한 값만 표현하는건 끝 
		// =======================================================================================================================================
		// 이제 검색한걸 테이블 제목 및 컨텐츠에 조회해서 포함한것만 가져오기 해야됌
		MainPageDao dao = sqlSession.getMapper(MainPageDao.class);
		// 검색해서 다시 받아오는게 2개 이상이라 리스트 형태로 받아야함
		ArrayList<MainPageSearch_ProductsDto> dto=  dao.SearchProduct(keyword);
		ArrayList<MainPageSearchDto> searchdto = dao.searchtest(keyword);
		
		if(dto.size() > 0 && searchdto.size() > 0 ){
			// 상품도 있고 검색테이블에도 있으면 업데이트문
			dao.searchcount(keyword);
		}else if(dto.size() > 0 && searchdto.size() == 0) {
			// 상품은 있으나 검색테이블에 없으면 검색테이블 추가
			dao.search_write(keyword);	
		}
		
		
		
		System.out.println("상품 dto : " + dto);
		model.addAttribute("product",dto);
		
		
		return "/MainPage/search";
		
}
	
	

	
}
