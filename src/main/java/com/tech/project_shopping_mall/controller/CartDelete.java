package com.tech.project_shopping_mall.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.project_shopping_mall.dao.IDao;
import com.tech.project_shopping_mall.dto.Cartdto;
import com.tech.project_shopping_mall.dto.Sumdto;


//  @Controller 
//  public class CartDelete {
//  
//  @Autowired private SqlSession sqlSession;
//  
//  
//  @RequestMapping("/MyCart") public String MyCart(HttpServletRequest
//  request,Model model) {
//  
//	  String sbid = request.getParameter("MID");
//		IDao dao = sqlSession.getMapper(IDao.class);
//		dao.delete(sbid);
//
//	  
//  
//  return "count/MyCart"; }
//  
//  
//  
//  }
// 
