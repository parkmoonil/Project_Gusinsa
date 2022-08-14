package com.tech.project_shopping_mall.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.MainPageDao;
import com.tech.project_shopping_mall.dto.Infodto;

@Controller
public class BuyPageController {

   @Autowired
   private SqlSession sqlSession;
   
   
   @RequestMapping("BuyPage")
   public String BuyPage(HttpServletRequest request, Model model) {
      
      MainPageDao dao = sqlSession.getMapper(MainPageDao.class);
      int pcode = Integer.parseInt(request.getParameter("p_code"));
      //String pcode = request.getParameter("p_code");

        Infodto indto = dao.search_prouct_detail(pcode);
      System.out.println("indto : " + indto);

      model.addAttribute("indto", indto);
      return "/Sale/SaleBuying";
      
   }
   
   
   @RequestMapping("SaleBuyPage")
   public String SaleBuyPage(HttpServletRequest request, Model model) {
      
      MainPageDao dao = sqlSession.getMapper(MainPageDao.class);
      int pcode = Integer.parseInt(request.getParameter("p_code"));
      //String pcode = request.getParameter("p_code");

        Infodto indto = dao.search_prouct_detail(pcode);
      System.out.println("indto : " + indto);

      model.addAttribute("indto", indto);
      return "/Sale/SuperSale";
      
   }
}