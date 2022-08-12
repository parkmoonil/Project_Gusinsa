package com.tech.project_shopping_mall.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.tech.project_shopping_mall.dao.BrandDao;
import com.tech.project_shopping_mall.dto.BrandDto;
import com.tech.project_shopping_mall.dto.Infodto;
import com.tech.project_shopping_mall.vopage.SearchVO_brand;

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
		ArrayList<BrandDto> bdto=dao.brand_ga(brand_name);
		ArrayList<BrandDto> bdto1=dao.brand_gga(brand_name);
		ArrayList<BrandDto> bdto2=dao.brand_na(brand_name);
		ArrayList<BrandDto> bdto3=dao.brand_da(brand_name);
		ArrayList<BrandDto> bdto4=dao.brand_dda(brand_name);
		ArrayList<BrandDto> bdto5=dao.brand_la(brand_name);
		ArrayList<BrandDto> bdto6=dao.brand_ma(brand_name);
		ArrayList<BrandDto> bdto7=dao.brand_ba(brand_name);
		ArrayList<BrandDto> bdto8=dao.brand_bba(brand_name);
		ArrayList<BrandDto> bdto9=dao.brand_sa(brand_name);
		ArrayList<BrandDto> bdto10=dao.brand_ssa(brand_name);
		ArrayList<BrandDto> bdto11=dao.brand_aa(brand_name);
		ArrayList<BrandDto> bdto12=dao.brand_ja(brand_name);
		ArrayList<BrandDto> bdto13=dao.brand_jja(brand_name);
		ArrayList<BrandDto> bdto14=dao.brand_cha(brand_name);
		ArrayList<BrandDto> bdto15=dao.brand_ka(brand_name);
		ArrayList<BrandDto> bdto16=dao.brand_ta(brand_name);
		ArrayList<BrandDto> bdto17=dao.brand_pa(brand_name);
		ArrayList<BrandDto> bdto18=dao.brand_ha(brand_name);
		
//		영어 처리     //
		ArrayList<BrandDto> bdto19=dao.brand_a(brand_name);
		ArrayList<BrandDto> bdto20=dao.brand_b(brand_name);
		ArrayList<BrandDto> bdto21=dao.brand_c(brand_name);
		ArrayList<BrandDto> bdto22=dao.brand_d(brand_name);
		ArrayList<BrandDto> bdto23=dao.brand_e(brand_name);
		ArrayList<BrandDto> bdto24=dao.brand_f(brand_name);
		ArrayList<BrandDto> bdto25=dao.brand_g(brand_name);
		ArrayList<BrandDto> bdto26=dao.brand_h(brand_name);
		ArrayList<BrandDto> bdto27=dao.brand_i(brand_name);
		ArrayList<BrandDto> bdto28=dao.brand_j(brand_name);
		ArrayList<BrandDto> bdto29=dao.brand_k(brand_name);
		ArrayList<BrandDto> bdto30=dao.brand_l(brand_name);
		ArrayList<BrandDto> bdto31=dao.brand_m(brand_name);
		ArrayList<BrandDto> bdto32=dao.brand_n(brand_name);
		ArrayList<BrandDto> bdto33=dao.brand_o(brand_name);
		ArrayList<BrandDto> bdto34=dao.brand_p(brand_name);
		ArrayList<BrandDto> bdto35=dao.brand_q(brand_name);
		ArrayList<BrandDto> bdto36=dao.brand_r(brand_name);
		ArrayList<BrandDto> bdto37=dao.brand_s(brand_name);
		ArrayList<BrandDto> bdto38=dao.brand_t(brand_name);
		ArrayList<BrandDto> bdto39=dao.brand_u(brand_name);
		ArrayList<BrandDto> bdto40=dao.brand_v(brand_name);
		ArrayList<BrandDto> bdto41=dao.brand_w(brand_name);
		ArrayList<BrandDto> bdto42=dao.brand_x(brand_name);
		ArrayList<BrandDto> bdto43=dao.brand_y(brand_name);
		ArrayList<BrandDto> bdto44=dao.brand_z(brand_name);
		
		model.addAttribute("brand_ga", bdto);
		model.addAttribute("brand_gga", bdto1);
		model.addAttribute("brand_na", bdto2);
		model.addAttribute("brand_da", bdto3);
		model.addAttribute("brand_dda", bdto4);
		model.addAttribute("brand_la", bdto5);
		model.addAttribute("brand_ma", bdto6);
		model.addAttribute("brand_ba", bdto7);
		model.addAttribute("brand_bba", bdto8);
		model.addAttribute("brand_sa", bdto9);
		model.addAttribute("brand_ssa", bdto10);
		model.addAttribute("brand_aa", bdto11);
		model.addAttribute("brand_ja", bdto12);
		model.addAttribute("brand_jja", bdto13);
		model.addAttribute("brand_cha", bdto14);
		model.addAttribute("brand_ka", bdto15);
		model.addAttribute("brand_ta", bdto16);
		model.addAttribute("brand_pa", bdto17);
		model.addAttribute("brand_ha", bdto18);

		model.addAttribute("brand_a", bdto19);
		model.addAttribute("brand_b", bdto20);
		model.addAttribute("brand_c", bdto21);
		model.addAttribute("brand_d", bdto22);
		model.addAttribute("brand_e", bdto23);
		model.addAttribute("brand_f", bdto24);
		model.addAttribute("brand_g", bdto25);
		model.addAttribute("brand_h", bdto26);
		model.addAttribute("brand_i", bdto27);
		model.addAttribute("brand_j", bdto28);
		model.addAttribute("brand_k", bdto29);
		model.addAttribute("brand_l", bdto30);
		model.addAttribute("brand_m", bdto31);
		model.addAttribute("brand_n", bdto32);
		model.addAttribute("brand_o", bdto33);
		model.addAttribute("brand_p", bdto34);
		model.addAttribute("brand_q", bdto35);
		model.addAttribute("brand_r", bdto36);
		model.addAttribute("brand_s", bdto37);
		model.addAttribute("brand_t", bdto38);
		model.addAttribute("brand_u", bdto39);
		model.addAttribute("brand_v", bdto40);
		model.addAttribute("brand_w", bdto41);
		model.addAttribute("brand_x", bdto42);
		model.addAttribute("brand_y", bdto43);
		model.addAttribute("brand_z", bdto44);
		
		return "/BrandPage/brand";
	}
	@RequestMapping("/brand1")
	public String brand1(HttpServletRequest request, Model model,SearchVO_brand searchVO) {
		
		System.out.println("brand1Page");

				//---------------------페이징-------------------//
				
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
		
		ArrayList<Infodto> dto=dao.brand1(rowStart, rowEnd, "1");
		//model.addAttribute("list",list);
		model.addAttribute("totRowcnt",total);
		model.addAttribute("searchVO",searchVO);
		model.addAttribute("brand1",dto);
		
		//---------------------페이징-------------------//
		
		return "/BrandPage/brand1";
		
		}
		//---------------------높은가격순-------------------//
		@RequestMapping("/Pricelistdesc")
		public String Pricelistdesc(HttpServletRequest request, Model model, SearchVO_brand searchVO) {
		
		
		System.out.println("Pricelistdesc");
		
		//---------------------페이징-------------------//
		
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
		
		ArrayList<Infodto> dto=dao.Pricelistdesc(rowStart, rowEnd,"1");
		//model.addAttribute("list",list);
		model.addAttribute("totRowcnt",total);
		model.addAttribute("searchVO",searchVO);
		model.addAttribute("brand1",dto);
		
		//---------------------페이징-------------------//
		
		return "/BrandPage/brand1";
		
		}
		//---------------------낮은가격순-------------------//
		@RequestMapping("/Pricelistasc")
		public String Pricelistasc(HttpServletRequest request, Model model, SearchVO_brand searchVO) {
		
		
		System.out.println("Pricelistasc");
		
		//---------------------페이징-------------------//
		
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
		
		ArrayList<Infodto> dto=dao.Pricelistasc(rowStart, rowEnd,"1");
		//model.addAttribute("list",list);
		model.addAttribute("totRowcnt",total);
		model.addAttribute("searchVO",searchVO);
		model.addAttribute("brand1",dto);
		
		//---------------------페이징-------------------//
		
		return "/BrandPage/brand1";
		
		}
		//---------------------신상품순-------------------//
		@RequestMapping("/datedesc")
		public String datedesc(HttpServletRequest request, Model model, SearchVO_brand searchVO) {
		
		
		System.out.println("datedesc");
		
		//---------------------페이징-------------------//
		
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
		
		ArrayList<Infodto> dto=dao.datedesc(rowStart, rowEnd,"1");
		//model.addAttribute("list",list);
		model.addAttribute("totRowcnt",total);
		model.addAttribute("searchVO",searchVO);
		model.addAttribute("brand1",dto);
		
		//---------------------페이징-------------------//
		
		return "/BrandPage/brand1";
		
		}
		@RequestMapping("product_enroll")
		public String product_enroll(HttpServletRequest request,
			Model model) {
		System.out.println("===enroll====");
		
		
		BrandDao dao=sqlSession.getMapper(BrandDao.class);
		
		
		return "BrandPage/product_enroll";
		}
		
		@RequestMapping("product_enrollwrite")
		public String product_enrollwrite(HttpServletRequest request,
			Model model) throws Exception {
		System.out.println("====enroll====");
		
		String attachPath="resources\\upload\\";
		String uploadPath=request.getSession().getServletContext().getRealPath("/");
		System.out.println("uploadPath : "+uploadPath);
		String path=uploadPath+attachPath;
		
		MultipartRequest req=
				new MultipartRequest(request, path, 1024*1024*20, "utf-8",
						new DefaultFileRenamePolicy());
		
		 HttpSession session = request.getSession();
		 
		 String p_name=req.getParameter("p_name"); 
		 int p_price=Integer.parseInt(req.getParameter("p_price"));
		 String p_class=req.getParameter("p_class"); 
		 String p_gender=req.getParameter("p_gender"); 
		 String p_img=req.getFilesystemName("p_img"); 
		 System.out.println("p_img :"+p_img);
		 String p_img2=req.getFilesystemName("p_img2"); 
		 System.out.println("p_img :"+p_img2);
		 String p_img3=req.getFilesystemName("p_img3"); 
		 System.out.println("p_img :"+p_img3);
		 String p_img4=req.getFilesystemName("p_img4"); 
		 System.out.println("p_img :"+p_img4);
		 String p_img5=req.getFilesystemName("p_img5"); 
		 System.out.println("p_img :"+p_img5);
		 String brand=req.getParameter("brand"); 
		 String p_category=req.getParameter("p_category");
		 
		 System.out.println("filename : "+p_img);
			if (p_img==null) {
				p_img="";
			}
		 
		BrandDao dao=sqlSession.getMapper(BrandDao.class);
		dao.product_enrollwrite(p_name, p_price, p_class, p_gender, p_img, p_img2, p_img3, p_img4, p_img5, brand, p_category);
		
		return "redirect:brand";
		}
		@RequestMapping("product_delete")
		public String product_delete(HttpServletRequest request,
				Model model) {
			System.out.println("====delelte===-");
			
			String sp_code=request.getParameter("p_code");
			BrandDao dao=sqlSession.getMapper(BrandDao.class);
			dao.product_delete(sp_code);
			
			
			return "redirect:brand";
		}
}