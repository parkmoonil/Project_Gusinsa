package com.tech.project_shopping_mall.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.IDao;
import com.tech.project_shopping_mall.dto.Infodto;

import org.springframework.ui.Model;

@Controller
public class SaleMainController {

//   BServiceInter bServiceInter;
   
   @Autowired
   private SqlSession sqlSession;
   
   
   @RequestMapping("/SaleMain")
   public String SaleMain(HttpServletRequest request,Model model) {
      System.out.println("====salemain====");
        
      IDao dao=sqlSession.getMapper(IDao.class);
       String p_name=request.getParameter("p_name");
		/* String p_price=request.getParameter("p_price"); */    
       String sprice=request.getParameter("sprice");      
       String p_img=request.getParameter("p_img");
       
       System.out.println("pname"+p_name);  
       System.out.println("pimg"+p_img);  
		/* System.out.println("pprice"+p_price); */
       System.out.println("sprice"+sprice);
       
         HttpSession session=request.getSession();
         session.setAttribute("p_name", p_name);
         session.setAttribute("p_img", p_img);
			/* session.setAttribute("p_pirce", p_price); */ 
         session.setAttribute("sprice", sprice);  

         ArrayList<Infodto> dto=dao.SaleMain();
         
	      dao.Saleupdate1();
	      dao.Saleupdate2();
	      dao.Saleupdate3();
         
       model.addAttribute("SaleMain",dto);
       
       
       return "Sale/SaleMain";


   }
   
   
   
}   