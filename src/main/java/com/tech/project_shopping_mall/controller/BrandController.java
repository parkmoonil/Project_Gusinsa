package com.tech.project_shopping_mall.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.BrandDao;
import com.tech.project_shopping_mall.dto.BrandDto;
import com.tech.project_shopping_mall.dto.Infodto;
import com.tech.project_shopping_mall.vopage.SearchVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BrandController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/brand")
	public String brand(HttpServletRequest request,Model model) {
		System.out.println("brandPage");
		BrandDao dao=sqlSession.getMapper(BrandDao.class);
		String brand_name=request.getParameter("brand_name");
		
		ArrayList<BrandDto> dto=dao.brand_ga(brand_name);
		ArrayList<BrandDto> dto1=dao.brand_gga(brand_name);
		model.addAttribute("brand_ga", dto);
		model.addAttribute("brand_gga", dto1);
		return "/BrandPage/brand";
	}
	@RequestMapping("/brand1")
	public String brand1(HttpServletRequest request, Model model,SearchVO searchVO) {
		
		System.out.println("brand1Page");

		BrandDao dao=sqlSession.getMapper(BrandDao.class);
		
		String p_name=request.getParameter("p_name");
		String p_price=request.getParameter("p_price");		
		String p_img=request.getParameter("p_img");
		
		String strPage=request.getParameter("page"); //HttpServletRequest request, 가져오기
		System.out.println("pagggge1 :"+strPage);
		//null검사
		if(strPage==null)//처음 리스트에서 list페이지로 넘어갈 때, null임.
			strPage="1";
		System.out.println("pagggge2 :"+strPage);
		int page=Integer.parseInt(strPage);
		searchVO.setPage(page);
		
		int total=dao.selectBoardTotCount();
		searchVO.pageCalculate(total);
		
		//계산된 내용 출력
		System.out.println("totRow : "+total);
		System.out.println("clickPage : "+strPage);
		System.out.println("pageStart : "+searchVO.getPageStart());
		System.out.println("pageEnd : "+searchVO.getPageEnd());
		System.out.println("pageTot : "+searchVO.getTotPage());
		System.out.println("rowStart : "+searchVO.getRowStart());
		System.out.println("rowEnd : "+searchVO.getRowEnd());
		
		int rowStart=searchVO.getRowStart();
		int rowEnd=searchVO.getRowEnd();
		
		ArrayList<Infodto> dto=dao.brand1(rowStart, rowEnd,"1");
//		model.addAttribute("list",list);
		model.addAttribute("totRowcnt",total);
		model.addAttribute("searchVO",searchVO);
        model.addAttribute("brand1",dto);
		
//		String word=request.getParameter("brand_name");
//		System.out.println(word);
		return "/BrandPage/brand1";
		
	}
	
//	return "/BrandPage/"+word;


}