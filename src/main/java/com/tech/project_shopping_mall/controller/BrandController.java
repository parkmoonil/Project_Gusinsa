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
		
//		한글 초성 처리     //
		ArrayList<BrandDto> dto=dao.brand_ga(brand_name);
		ArrayList<BrandDto> dto1=dao.brand_gga(brand_name);
		ArrayList<BrandDto> dto2=dao.brand_na(brand_name);
		ArrayList<BrandDto> dto3=dao.brand_da(brand_name);
		ArrayList<BrandDto> dto4=dao.brand_dda(brand_name);
		ArrayList<BrandDto> dto5=dao.brand_la(brand_name);
		ArrayList<BrandDto> dto6=dao.brand_ma(brand_name);
		ArrayList<BrandDto> dto7=dao.brand_ba(brand_name);
		ArrayList<BrandDto> dto8=dao.brand_bba(brand_name);
		ArrayList<BrandDto> dto9=dao.brand_sa(brand_name);
		ArrayList<BrandDto> dto10=dao.brand_ssa(brand_name);
		ArrayList<BrandDto> dto11=dao.brand_aa(brand_name);
		ArrayList<BrandDto> dto12=dao.brand_ja(brand_name);
		ArrayList<BrandDto> dto13=dao.brand_jja(brand_name);
		ArrayList<BrandDto> dto14=dao.brand_cha(brand_name);
		ArrayList<BrandDto> dto15=dao.brand_ka(brand_name);
		ArrayList<BrandDto> dto16=dao.brand_ta(brand_name);
		ArrayList<BrandDto> dto17=dao.brand_pa(brand_name);
		ArrayList<BrandDto> dto18=dao.brand_ha(brand_name);
		
//		영어 처리      //
		ArrayList<BrandDto> dto19=dao.brand_a(brand_name);
		ArrayList<BrandDto> dto20=dao.brand_b(brand_name);
		ArrayList<BrandDto> dto21=dao.brand_c(brand_name);
		ArrayList<BrandDto> dto22=dao.brand_d(brand_name);
		ArrayList<BrandDto> dto23=dao.brand_e(brand_name);
		ArrayList<BrandDto> dto24=dao.brand_f(brand_name);
		ArrayList<BrandDto> dto25=dao.brand_g(brand_name);
		ArrayList<BrandDto> dto26=dao.brand_h(brand_name);
		ArrayList<BrandDto> dto27=dao.brand_i(brand_name);
		ArrayList<BrandDto> dto28=dao.brand_j(brand_name);
		ArrayList<BrandDto> dto29=dao.brand_k(brand_name);
		ArrayList<BrandDto> dto30=dao.brand_l(brand_name);
		ArrayList<BrandDto> dto31=dao.brand_m(brand_name);
		ArrayList<BrandDto> dto32=dao.brand_n(brand_name);
		ArrayList<BrandDto> dto33=dao.brand_o(brand_name);
		ArrayList<BrandDto> dto34=dao.brand_p(brand_name);
		ArrayList<BrandDto> dto35=dao.brand_q(brand_name);
		ArrayList<BrandDto> dto36=dao.brand_r(brand_name);
		ArrayList<BrandDto> dto37=dao.brand_s(brand_name);
		ArrayList<BrandDto> dto38=dao.brand_t(brand_name);
		ArrayList<BrandDto> dto39=dao.brand_u(brand_name);
		ArrayList<BrandDto> dto40=dao.brand_v(brand_name);
		ArrayList<BrandDto> dto41=dao.brand_w(brand_name);
		ArrayList<BrandDto> dto42=dao.brand_x(brand_name);
		ArrayList<BrandDto> dto43=dao.brand_y(brand_name);
		ArrayList<BrandDto> dto44=dao.brand_z(brand_name);
		
		model.addAttribute("brand_ga", dto);
		model.addAttribute("brand_gga", dto1);
		model.addAttribute("brand_na", dto2);
		model.addAttribute("brand_da", dto3);
		model.addAttribute("brand_dda", dto4);
		model.addAttribute("brand_la", dto5);
		model.addAttribute("brand_ma", dto6);
		model.addAttribute("brand_ba", dto7);
		model.addAttribute("brand_bba", dto8);
		model.addAttribute("brand_sa", dto9);
		model.addAttribute("brand_ssa", dto10);
		model.addAttribute("brand_aa", dto11);
		model.addAttribute("brand_ja", dto12);
		model.addAttribute("brand_jja", dto13);
		model.addAttribute("brand_cha", dto14);
		model.addAttribute("brand_ka", dto15);
		model.addAttribute("brand_ta", dto16);
		model.addAttribute("brand_pa", dto17);
		model.addAttribute("brand_ha", dto18);
		
		model.addAttribute("brand_a", dto19);
		model.addAttribute("brand_b", dto20);
		model.addAttribute("brand_c", dto21);
		model.addAttribute("brand_d", dto22);
		model.addAttribute("brand_e", dto23);
		model.addAttribute("brand_f", dto24);
		model.addAttribute("brand_g", dto25);
		model.addAttribute("brand_h", dto26);
		model.addAttribute("brand_i", dto27);
		model.addAttribute("brand_j", dto28);
		model.addAttribute("brand_k", dto29);
		model.addAttribute("brand_l", dto30);
		model.addAttribute("brand_m", dto31);
		model.addAttribute("brand_n", dto32);
		model.addAttribute("brand_o", dto33);
		model.addAttribute("brand_p", dto34);
		model.addAttribute("brand_q", dto35);
		model.addAttribute("brand_r", dto36);
		model.addAttribute("brand_s", dto37);
		model.addAttribute("brand_t", dto38);
		model.addAttribute("brand_u", dto39);
		model.addAttribute("brand_v", dto40);
		model.addAttribute("brand_w", dto41);
		model.addAttribute("brand_x", dto42);
		model.addAttribute("brand_y", dto43);
		model.addAttribute("brand_z", dto44);
		
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
		
		return "/BrandPage/brand1";
		
	}

}