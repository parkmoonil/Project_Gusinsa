package com.tech.project_shopping_mall.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tech.project_shopping_mall.dao.MainPageDao;
import com.tech.project_shopping_mall.dao.PDao;
import com.tech.project_shopping_mall.dto.Infodto;
import com.tech.project_shopping_mall.dto.MembersDto;
import com.tech.project_shopping_mall.dto.NorderinfoDto;
import com.tech.project_shopping_mall.dto.StorageDto;
import com.tech.project_shopping_mall.vopage.SearchVO;




@Controller
public class CategoryController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/men")
	public String Men(HttpServletRequest request,Model model,SearchVO searchVO) {
		System.out.println("넘어왔따");
		PDao dao=sqlSession.getMapper(PDao.class);
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
		
		//total 글의 갯수 구하기
//		int total=dao.selectBoardTotCount();
//		System.out.println("totalrow : "+total);
		
		//조건에 따른 갯수 구하기
		/*
		 * int total=0; if (p_name.equals("btitle") && bcontent.equals("")) {
		 * total=dao.selectBoardTotCount1(searchKeyword); }else if (btitle.equals("") &&
		 * bcontent.equals("bcontent")) { total=dao.selectBoardTotCount2(searchKeyword);
		 * }else if (btitle.equals("btitle") && bcontent.equals("bcontent")) {
		 * total=dao.selectBoardTotCount3(searchKeyword); }else if (btitle.equals("") &&
		 * bcontent.equals("")) { total=dao.selectBoardTotCount4(searchKeyword); }
		 */
		
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
		
		/*ArrayList<BoardDto> list=dao.list(rowStart,rowEnd);*/
//		ArrayList<BoardDto> list=null;
		
		
		
		ArrayList<Infodto> dto=dao.men(rowStart, rowEnd,"1");
//		model.addAttribute("list",list);
		model.addAttribute("totRowcnt",total);
		model.addAttribute("searchVO",searchVO);
        model.addAttribute("men",dto);
		return "men,women,new/men";
	}
	
	@RequestMapping("/Orderafterlogin")
	public String Orderafterlogin(Model model, HttpServletRequest request) {
		PDao dao=sqlSession.getMapper(PDao.class);
		HttpSession session = request.getSession();
		
		String mid = (String )session.getAttribute("mid");
		
		
		
		MembersDto dto= dao.Orderafterlogin(mid); //
		model.addAttribute("Orderafterlogin",dto);
		
		
		int pcode = Integer.parseInt(request.getParameter("p_code"));
		StorageDto strgdto= dao.storage(pcode);
//		
		int sell_price = Integer.parseInt(request.getParameter("sell_price"));
		int amount = Integer.parseInt(request.getParameter("amount"));
		int sping =Integer.parseInt(request.getParameter("sping"));
		int sumsping =Integer.parseInt(request.getParameter("sumsping"));
//		System.out.println("pcode : "+pcode);
//		System.out.println("amount : "+amount);
//		System.out.println("sumprice : "+sell_price);
		
//		System.out.println("amount : "+amount);
		MainPageDao Mdao = sqlSession.getMapper(MainPageDao.class);
		Infodto indto = Mdao.search_prouct_detail(pcode);
		
		// pcode를 통해 해당 상품조회
		model.addAttribute("strgdto",strgdto);
		model.addAttribute("members",dto);
		model.addAttribute("sumsping",sumsping);
		model.addAttribute("sping",sping);
		model.addAttribute("indto",indto);
		model.addAttribute("amount",amount); // 상품의 수량 전달
		model.addAttribute("sumprice",sell_price);
		return "men,women,new/Orderafterlogin";
	}
	
	

	
	@RequestMapping("/Orderbeforelogin")
	public String Orderbeforelogin(HttpServletRequest request,Model model,SearchVO searchVO)  {
		
		/*
		 * HttpSession session = request.getSession();
		 * 
		 * 
		 * String mid = (String) session.getAttribute("mid");
		 * 
		 * System.out.println("mid : "+ mid);
		 */
		
		 // 비회원일때는 값처리 하고 리턴을 다른곳 비회원전용
		PDao dao=sqlSession.getMapper(PDao.class);
			int pcode = Integer.parseInt(request.getParameter("p_code"));
			//String pcode = request.getParameter("p_code");

			MainPageDao Mdao = sqlSession.getMapper(MainPageDao.class); 
	        Infodto indto = Mdao.search_prouct_detail(pcode);
			System.out.println("indto : " + indto);
			
			StorageDto strgdto= dao.storage(pcode);
		
//			
			int sell_price = Integer.parseInt(request.getParameter("sell_price"));
			int amount = Integer.parseInt(request.getParameter("amount"));
			int sping =Integer.parseInt(request.getParameter("sping"));
			int sumsping =Integer.parseInt(request.getParameter("sumsping"));
			String p_name = request.getParameter("p_name");
			String n_ordername=request.getParameter("n_ordername");
			String n_number1=request.getParameter("n_number1");
			String n_email=request.getParameter("n_email");
			String n_name=request.getParameter("n_name");
			String n_addr1=request.getParameter("n_addr1");
			String n_addr2=request.getParameter("n_addr2");
			String n_addr3=request.getParameter("n_addr3");
			String n_addr4=request.getParameter("n_addr4");
			String n_number2=request.getParameter("n_number2");
			String n_request=request.getParameter("n_request");
			
			
//			System.out.println("pcode : "+pcode);
//			System.out.println("amount : "+amount);
//			System.out.println("sumprice : "+sell_price);
			
//			System.out.println("amount : "+amount);
			
			
			
			// pcode를 통해 해당 상품조회
			model.addAttribute("indto",indto);
			model.addAttribute("sping",sping);
			model.addAttribute("strgdto",strgdto);
			model.addAttribute("sumsping",sumsping);
			model.addAttribute("amount",amount); // 상품의 수량 전달
			model.addAttribute("sumprice",sell_price);
			model.addAttribute("n_ordername",n_ordername);
			model.addAttribute("n_email",n_email);
			model.addAttribute("n_name",n_name);
			model.addAttribute("n_addr1",n_addr1); // 상품의 수량 전달
			model.addAttribute("n_addr2",n_addr2);
			model.addAttribute("n_addr3",n_addr3);
			model.addAttribute("n_addr4",n_addr4);
			model.addAttribute("n_number1",n_number1);
			model.addAttribute("n_number2",n_number2);
			model.addAttribute("n_request",n_request);
			model.addAttribute("p_name", p_name);
			model.addAttribute("p_code", pcode);
			
		
			 
			
			System.out.println("n_request"+n_request);
		
		return "men,women,new/Orderbeforelogin";
		
	}

		
	  @RequestMapping("Norderwrite")
	  public String Norderwrite(HttpServletRequest request,Model model,SearchVO searchVO) {
		     System.out.println("지나가기");
			PDao dao=sqlSession.getMapper(PDao.class);
			System.out.println("지나가기=================================================");
			String n_ordername=request.getParameter("n_ordername");
			String n_number1=request.getParameter("n_number1");
			String n_email=request.getParameter("n_email");
			String n_name=request.getParameter("n_name");
			String n_addr1=request.getParameter("n_addr1");
			String n_addr2=request.getParameter("n_addr2");
			String n_addr3=request.getParameter("n_addr3");
			String n_addr4=request.getParameter("n_addr4");
			String n_number2=request.getParameter("n_number2");
			String n_request=request.getParameter("n_request");
			String p_name = request.getParameter("p_name");
			int sprice = Integer.parseInt(request.getParameter("sumprice"));
			int amount = Integer.parseInt(request.getParameter("amount"));
			int sumsping = Integer.parseInt(request.getParameter("sumsping"));
			
			/*
			 * int sprice = Integer.parseInt(request.getParameter("sumprice")); int amount =
			 * Integer.parseInt(request.getParameter("amount")); int sumsping =
			 * Integer.parseInt(request.getParameter("sumsping")); int p_code =
			 * Integer.parseInt(request.getParameter("p_code"));
			 */
			/* int p_code = Integer.parseInt(request.getParameter("p_code")); */
			/*
			 * int pcode = Integer.parseInt(request.getParameter("p_code"));
			 */
			
			
			System.out.println("n_ordername : "+n_ordername );
			System.out.println("n_number1      제발 "+n_number1);
			System.out.println("n_email : "+n_email);
			System.out.println("n_name : "+n_name);
			System.out.println("n_addr1 : "+n_addr1);
			System.out.println("n_addr2"+n_addr2);
			System.out.println("n_addr3"+n_addr3);
			System.out.println("n_addr4"+n_addr4);
			System.out.println("n_number2"+n_number2);
			System.out.println("n_request"+n_request);
			System.out.println("p_name : "+p_name);
//			System.out.println("amount : "+amount);
			
			
		
			// pcode를 통해 해당 상품조회
			/* model.addAttribute("p_code", p_code); */
			model.addAttribute("n_ordername",n_ordername);
			model.addAttribute("n_email",n_email);
			model.addAttribute("n_name",n_name);
			model.addAttribute("n_addr1",n_addr1); // 상품의 수량 전달
			model.addAttribute("n_addr2",n_addr2);
			model.addAttribute("n_addr3",n_addr3);
			model.addAttribute("n_addr4",n_addr4);
			model.addAttribute("n_number1",n_number1);
			model.addAttribute("n_number2",n_number2);
			model.addAttribute("n_request",n_request);
			model.addAttribute("p_name", p_name);
			model.addAttribute("sumsping", sumsping);
			model.addAttribute("sprice", sprice);
			model.addAttribute("amount", amount);
	  return "Pay/Nomemberpay"; 
	  
	  }
//	  }
//	  @RequestMapping("/Orderwrite")
//	  public String Orderwrite(@ModelAttribute NorderinfoDto dto) {
//		  System.out.println("지나가기2");
//		  PDao dao=sqlSession.getMapper(PDao.class);
//		  
//		  dao.Norderwrite(dto.getN_name(), dto.getN_number(), dto.getN_email(), dto.getN_addr(), dto.getN_request());
//		  /*
//		   * dao.Norderwrite(dto);
//		   */	  
//		  System.out.println("ddd "+dto);
//		  
//		  return "redirect:/pay"; 
//	  }
	 
	@RequestMapping("/agreement")
	public String agreement(HttpServletRequest request,Model model,SearchVO searchVO) {
		PDao dao=sqlSession.getMapper(PDao.class);
		
		return "men,women,new/agreement";
	}
	@RequestMapping("/agreement2")
	public String agreement2(HttpServletRequest request,Model model,SearchVO searchVO) {
		PDao dao=sqlSession.getMapper(PDao.class);
		
		return "men,women,new/agreement2";
	}
	
//	@RequestMapping("/pay")
//	public String pay(HttpServletRequest request,Model model,SearchVO searchVO) {
//		
//		 int sprice = Integer.parseInt(request.getParameter("sumprice"));
//	     int amount = Integer.parseInt(request.getParameter("amount"));
//	      String p_name = request.getParameter("p_name");
//	      
//	      System.out.println("sprice" + sprice);
//	      System.out.println("amount" + amount);
//	      System.out.println("p_name" + p_name);
//	      System.out.println("sprice" + sprice);
//	      System.out.println("sprice" + sprice);
//	      System.out.println("sprice" + sprice);
//	      System.out.println("sprice" + sprice);
//	      
//	      model.addAttribute("sprice",sprice);
//	      model.addAttribute("amount",amount);
//	      model.addAttribute("p_name",p_name);
//		
//		return "pay";
//		
//		
//	}
}
