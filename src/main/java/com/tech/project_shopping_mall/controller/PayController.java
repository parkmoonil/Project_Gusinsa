package com.tech.project_shopping_mall.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.PDao;
import com.tech.project_shopping_mall.dto.OrderinfoDto;
import com.tech.project_shopping_mall.vopage.SearchVO;

@Controller
public class PayController {
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/pay")
	public String pay(HttpServletRequest request, Model model, SearchVO searchVO) {
		PDao dao = sqlSession.getMapper(PDao.class);

		int sprice = Integer.parseInt(request.getParameter("sumprice"));
		int amount = Integer.parseInt(request.getParameter("amount"));
		int sumsping = Integer.parseInt(request.getParameter("sumsping"));
		String p_name = request.getParameter("p_name");
		int p_code = Integer.parseInt(request.getParameter("p_code"));
		String maddr_one = request.getParameter("maddr_one");
		String maddr_two = request.getParameter("maddr_two");
		String maddr_three = request.getParameter("maddr_three");
		String maddr_four = request.getParameter("maddr_four");
		String mphone = request.getParameter("mphone");
		String p_img = request.getParameter("p_img");
		String o_quest = request.getParameter("o_quest");
		String p_size = request.getParameter("p_size");
		
		
		
		
		
		System.out.println("페이=============================");
		System.out.println("o_quest : "+o_quest);
		System.out.println("sprice" + sprice);
		System.out.println("amount" + amount);
		System.out.println("p_name" + p_name);
		System.out.println("sprice" + sprice);
		System.out.println("sprice" + sprice);
		System.out.println("sprice" + sprice);
		System.out.println("sprice" + sprice);
		System.out.println("sumsping: " + sumsping);
		
		model.addAttribute("p_code", p_code);
		model.addAttribute("sumsping", sumsping);
		model.addAttribute("sprice", sprice);
		model.addAttribute("amount", amount);
		model.addAttribute("maddr_one", maddr_one);
		model.addAttribute("maddr_two", maddr_two);
		model.addAttribute("maddr_three", maddr_three);
		model.addAttribute("maddr_four", maddr_four);
		model.addAttribute("p_name", p_name);
		model.addAttribute("mphone", mphone);
		model.addAttribute("p_img", p_img);
		model.addAttribute("o_quest", o_quest);
		model.addAttribute("p_size", p_size);
		
		
		
		
		
		return "Pay/pay";
	}
	
	@RequestMapping("/Nomemberpay")
	public String Nomemberpay(HttpServletRequest request, Model model, SearchVO searchVO) {
		PDao dao = sqlSession.getMapper(PDao.class);
		
		String n_ordername=request.getParameter("n_ordername");
		String n_name=request.getParameter("n_name");
		int sprice = Integer.parseInt(request.getParameter("sumprice"));
		int amount = Integer.parseInt(request.getParameter("amount"));
		int sumsping = Integer.parseInt(request.getParameter("sumsping"));
		String n_email=request.getParameter("n_email");
		String p_name = request.getParameter("p_name");
		int p_code = Integer.parseInt(request.getParameter("p_code"));
		String n_addr1=request.getParameter("n_addr1");
		String n_addr2=request.getParameter("n_addr2");
		String n_addr3=request.getParameter("n_addr3");
		String n_addr4=request.getParameter("n_addr4");
		String n_number1=request.getParameter("n_number1");
		String n_number2=request.getParameter("n_number2");
		String p_img = request.getParameter("p_img");
		String n_request = request.getParameter("n_request");
		String p_size = request.getParameter("p_size");
		
		
		
		
		
		System.out.println("=============================");
		System.out.println("n_request : "+n_request);
		System.out.println("sprice" + sprice);
		System.out.println("amount" + amount);
		System.out.println("p_name" + p_name);
		System.out.println("sprice" + sprice);
		System.out.println("sprice" + sprice);
		System.out.println("sprice" + sprice);
		System.out.println("sprice" + sprice);
		System.out.println("sumsping: " + sumsping);
		
		model.addAttribute("p_code", p_code);
		model.addAttribute("sumsping", sumsping);
		model.addAttribute("sprice", sprice);
		model.addAttribute("amount", amount);
		model.addAttribute("n_addr1",n_addr1); 
		model.addAttribute("n_addr2",n_addr2);
		model.addAttribute("n_addr3",n_addr3);
		model.addAttribute("n_addr4",n_addr4);
		model.addAttribute("n_number1",n_number1);
		model.addAttribute("n_number2",n_number2);
		model.addAttribute("p_name", p_name);
		model.addAttribute("n_name", n_name);
		model.addAttribute("n_ordername", n_ordername);
		model.addAttribute("n_email",n_email);
		model.addAttribute("p_img", p_img);
		model.addAttribute("n_request",n_request);
		model.addAttribute("p_size", p_size);
		
		
		
		
		return "Pay/Nomemberpay";
	}

	@RequestMapping("/afterpay")
	public String afterpay(HttpServletRequest request, Model model, SearchVO searchVO) {
		System.out.println("afterpay ");

		PDao dao = sqlSession.getMapper(PDao.class);

		HttpSession session = request.getSession();

		String mid = (String) session.getAttribute("mid");
		int sprice = Integer.parseInt(request.getParameter("sprice"));
		System.out.println("afterpay  mid : " + mid);
		System.out.println("afterpay sprice :" + sprice);

		int o_totprice = Integer.parseInt(request.getParameter("sumsping"));
		System.out.println("afterpay o_totprice :" + o_totprice);
		System.out.println("afterpay amount" + request.getParameter("amount") + "  :  "
				+ request.getParameter("amount").getClass().getSimpleName());
		int o_count = Integer.parseInt(request.getParameter("amount"));
		/* String o_count=request.getParameter("amount"); */

		String p_name = request.getParameter("p_name");
		System.out.println("afterpay o_count :" + o_count);
		int p_code = Integer.parseInt(request.getParameter("p_code"));
		System.out.println("p_code : "+p_code);
		
		
		String maddr_one = request.getParameter("maddr_one");
		String maddr_two = request.getParameter("maddr_two");
		String maddr_three = request.getParameter("maddr_three");
		String maddr_four = request.getParameter("maddr_four");

		String mphone = request.getParameter("mphone");
		String p_img = request.getParameter("p_img");
		String o_quest = request.getParameter("o_quest");
		String p_size = request.getParameter("p_size");
		
		
		dao.afterpay(p_code,p_name, sprice, o_count, o_totprice, maddr_one,maddr_two,maddr_three,maddr_four,mid,mphone,p_img,o_quest,p_size);

		/*
		 * model.addAttribute("afterpay", dao.afterpay(p_name, sprice, o_count,
		 * o_totprice, mid ));
		 */

		return "redirect:men";
	}
	@RequestMapping("/afternopay")
	public String afternopay(HttpServletRequest request, Model model, SearchVO searchVO) {
		System.out.println("afternopay ");
		
		PDao dao = sqlSession.getMapper(PDao.class);
		

		
		
		int sprice = Integer.parseInt(request.getParameter("sprice"));

		System.out.println("afternopay sprice :" + sprice);
		
		int o_totprice = Integer.parseInt(request.getParameter("sumsping"));
		System.out.println("afternopay o_totprice :" + o_totprice);
		System.out.println("afterpay amount" + request.getParameter("amount") + "  :  "
				+ request.getParameter("amount").getClass().getSimpleName());
		int o_count = Integer.parseInt(request.getParameter("amount"));
		/* String o_count=request.getParameter("amount"); */
		
		String p_name = request.getParameter("p_name");
		System.out.println("afterpay o_count :" + o_count);
		int p_code = Integer.parseInt(request.getParameter("p_code"));
		System.out.println("p_code : "+p_code);
		
		String n_ordername=request.getParameter("n_ordername");
		String n_email=request.getParameter("n_email");
		String n_name=request.getParameter("n_name");
		String n_addr1=request.getParameter("n_addr1");
		String n_addr2=request.getParameter("n_addr2");
		String n_addr3=request.getParameter("n_addr3");
		String n_addr4=request.getParameter("n_addr4");
		
		String n_number1=request.getParameter("n_number1");
		String n_number2=request.getParameter("n_number2");
		String p_img = request.getParameter("p_img");
		String n_request=request.getParameter("n_request");
		String p_size = request.getParameter("p_size");

		
		dao.afternopay(p_code,p_name, sprice, o_count, o_totprice,n_name, n_ordername,n_email,n_addr1,n_addr2,n_addr3,n_addr4,n_number1,n_number2,p_img,n_request,p_size);
		
		/*
		 * model.addAttribute("afterpay", dao.afterpay(p_name, sprice, o_count,
		 * o_totprice, mid ));
		 */
		
		return "redirect:men";
	}

	/*
	 * @RequestMapping("/afterpaywrite") public String
	 * afterpaywrite(HttpServletRequest request, Model model, SearchVO searchVO) {
	 * 
	 * PDao dao=sqlSession.getMapper(PDao.class); System.out.println("여기 오긴하나...");
	 * 
	 * HttpSession session = request.getSession(); String mid =
	 * (String)session.getAttribute("mid"); System.out.println("mid : "+ mid);
	 * String p_name = request.getParameter("p_name");
	 * System.out.println("p_name : "+p_name);
	 * 
	 * 
	 * System.out.println(request.getParameter("p_price") +" : 너이거 타입뭐니"); int
	 * p_price = Integer.parseInt(request.getParameter("p_price"));
	 * 
	 * 
	 * int o_count = Integer.parseInt(request.getParameter("amount")); int
	 * o_totprice = Integer.parseInt(request.getParameter("sumsping"));
	 * 
	 * System.out.println("spricewrite : "); System.out.println("amountwrite : "+
	 * o_count); System.out.println("sumspingwrite : "+ o_totprice);
	 * 
	 * dao.afterpaywrite(mid,p_price,o_count,o_totprice,p_name);
	 * 
	 * 
	 * PDao dao = sqlSession.getMapper(PDao.class); System.out.println("지나가나???/");
	 * HttpSession session = request.getSession();
	 * 
	 * String mid = (String) session.getAttribute("mid"); int sprice =
	 * Integer.parseInt(request.getParameter("sprice"));
	 * System.out.println("afterpay  mid : " + mid);
	 * System.out.println("afterpay sprice :" + sprice);
	 * 
	 * int o_totprice = Integer.parseInt(request.getParameter("sumsping"));
	 * System.out.println("afterpay o_totprice :" + o_totprice);
	 * System.out.println("afterpay amount" + request.getParameter("amount") +
	 * "  :  " + request.getParameter("amount").getClass().getSimpleName()); int
	 * o_count = Integer.parseInt(request.getParameter("amount")); String o_count =
	 * request.getParameter("amount");
	 * 
	 * String p_name = request.getParameter("p_name");
	 * System.out.println("afterpay o_count :" + o_count);
	 * 
	 * 
	 * dao.afterpaywrite(p_name, sprice, o_count, o_totprice, mid);
	 * 
	 * model.addAttribute("afterpay", dto);
	 * 
	 * return "redirect:men"; }
	 */
}
