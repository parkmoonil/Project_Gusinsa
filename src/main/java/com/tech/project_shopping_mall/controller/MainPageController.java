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
import com.tech.project_shopping_mall.dto.Infodto;
import com.tech.project_shopping_mall.dto.MainPageSearchDto;
import com.tech.project_shopping_mall.dto.MainPageSearch_ProductsDto;
import com.tech.project_shopping_mall.vopage.SearchVO_CS;

@Controller
public class MainPageController {

//	BServiceInter bServiceInter;
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping("/search")
	public String list(HttpServletRequest request,SearchVO_CS searchVO,Model model) {
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
		ArrayList<MainPageSearchDto> searchdto = dao.searchtest(keyword);
		String pclass = "";
		String pname = "";
		
		
		
		String[] bp_class = request.getParameterValues("keyword");
		String[] bp_name = request.getParameterValues("keyword");
//		P_CLASS
//		P_NAME
		//==== 아 검색체크 유지해야됌
		if(bp_class != null) {
			for(String val : bp_class) {
				if(val.equals("bp_class")) {
					model.addAttribute("bp_class","true");   // 아니지 쿼리문 LIKE 문에  가져올 컬럼명 검색유지
					pclass = "bp_class";
				}else if(val.equals("bp_name")) {
					model.addAttribute("bp_name","true");
					pname = "pname";
			}  // jsp 단에 검색값을 유지하기위해 get파라미터 값 가져와서 변수로 저장 상시 저장
		}
		}
		
		/*String pimg = request.getParameter("p_img");
		String pname = request.getParameter("p_name");
		int pprice = Integer.parseInt(request.getParameter("p_price"));*/
		
		String pc = request.getParameter("p_class");
		String pn = request.getParameter("p_name");
		
		
		if(pc!=null) {
			if(pc.equals("p_class")) {
				pclass = pc;
				model.addAttribute("pclass","true");
			}
		}
		if(pn!=null) {
			if(pn.equals("p_name")) {
				pname = pn;
				model.addAttribute("pname","true");
			}
		}
		
		String searchKeyword = request.getParameter("keyword");
		
		System.out.println("searchKeyword = " +searchKeyword);
		if(searchKeyword==null) searchKeyword="";
		
		
		
		model.addAttribute("resk",searchKeyword);
		
		//=========================== 기능 이식 수술
		String strPage=request.getParameter("page"); //HttpServletRequest request, 가져오기
		System.out.println("pagggge1 :"+strPage);
		if(strPage==null)//처음 리스트에서 list페이지로 넘어갈 때, null임.
			strPage="1";
		
		
		
		System.out.println("pagggge2 :"+strPage);
		
		
		int page=Integer.parseInt(strPage);
		searchVO.setPage(page);
		
		int total=dao.selectBoardTotCount_search(keyword); // 총 페이지 갯수 즉 검색하면 나오는 총 갯수   쿼리문에선 검색된 총 갯수만 필요하여 int값으로 선정
		searchVO.pageCalculate(total); // 를 페이지의 총갯수로 지정하여 지정한 페이지를 몃개씩 나눌건지  calculate를 통해 선정
		
		System.out.println("total : " + total);
		
		int rowStart=searchVO.getRowStart();  // 
		int rowEnd=searchVO.getRowEnd();
		
		// total값 계산되었으면 시작과 끝 지정  
		
		System.out.println("rowStart : " + rowStart);
		System.out.println("rowEnd : " + rowEnd);
		
		model.addAttribute("product",dao.SearchProduct(rowStart, rowEnd,keyword));
		
//		if(dto.size() > 0 && searchdto.size() > 0 ){
//			// 상품도 있고 검색테이블에도 있으면 업데이트문
//			dao.searchcount(keyword);
//		}else if(dto.size() > 0 && searchdto.size() == 0) {
//			// 상품은 있으나 검색테이블에 없으면 검색테이블 추가
//			dao.search_write(keyword);	
//		}
		
		System.out.println();
		
//		model.addAttribute("list",list);
		model.addAttribute("totRowcnt",total);
		model.addAttribute("searchVO",searchVO);
	
		return "MainPage/searchview";		
}
	
	@RequestMapping("/MainPage/searchview")
	public String main(HttpServletRequest request, Model model,HttpSession session) {
		System.out.println("search view로 이동!");
		
		
		return "MainPage/searchview";
	}
//	@RequestMapping("/main")
//	public String main(HttpServletRequest request, Model model,HttpSession session) {
//		System.out.println("main 이동!");
//		String mid = (String) session.getAttribute("mid");
//		
//		session.setAttribute("mid", mid);
//		
//		return "/MainPage/Main";
//	}
	

	
}
