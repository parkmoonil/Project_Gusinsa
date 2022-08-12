package com.tech.project_shopping_mall.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.IDao;
import com.tech.project_shopping_mall.dto.Cartdto;
import com.tech.project_shopping_mall.dto.Sumdto;


@Controller
public class doitdoit {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/MyCart")
	public String MyCart(HttpServletRequest request,Model model) {
		
		System.out.println("제발 되자!");
		IDao dao=sqlSession.getMapper(IDao.class);
	    String p_name=request.getParameter("p_name");
	    String p_price=request.getParameter("p_price");      
	    String p_img=request.getParameter("p_img");
	    
	      HttpSession session=request.getSession();
	      session.setAttribute("p_name", p_name);
	      session.setAttribute("p_img", p_img);
	      session.setAttribute("p_pirce", p_price);

	    String id = (String) session.getAttribute("mid");
	    ArrayList<Cartdto> dto=dao.MyCart(id);
	    
	       
	      System.out.println(dto.get(0).getAmount());
	      System.out.println(dto.get(0).getMoney());
	      
	      int aa = dao.SumAmount(id);
	      int sum = dao.SumMoney(id);
	      
	      System.out.println("amount : " + aa);
	      model.addAttribute("amount",aa); 
	      model.addAttribute("sum",sum); 
	      model.addAttribute("MyCart",dto); 

	      System.out.println("p_name : " +id);
		    System.out.println("p_price : " +p_price);
		    System.out.println("p_img : " +p_img);
		    
		return "count/MyCart";
	}
	
	@RequestMapping("/superdelete")
	public String delete(HttpServletRequest request, Model model) {
		
		System.out.println("들어와야할거다");
		int p_code = Integer.parseInt(request.getParameter("p_code"));
		HttpSession session=request.getSession();
		String id = (String) session.getAttribute("mid");
		System.out.println("p_code : "+p_code);
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.delete(p_code);
		
		String aa = request.getContextPath();
		System.out.println("aa : " + aa);
		
		ArrayList<Cartdto> dto=dao.MyCart(id);
		model.addAttribute("MyCart",dto);
		
		
		
		
		//return "count/MyCart";
		return "count/MyCart";
		//return aa;
	}
	


	
	

}
