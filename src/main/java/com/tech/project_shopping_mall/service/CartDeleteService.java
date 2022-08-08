package com.tech.project_shopping_mall.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import com.tech.project_shopping_mall.dao.IDao;

public class CartDeleteService implements CartDeleteServiceInter {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void execute(Model model) {
		System.out.println(">>>CartDeleteService");
		// 모델에서 request를 풀기
//		맵으로변환
		Map<String, Object> map = model.asMap();
//		맵에서 request를 풀기
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String p_code = request.getParameter("p_code");

		IDao dao=sqlSession.getMapper(IDao.class);
		//dao.delete(p_code);

	}

}
