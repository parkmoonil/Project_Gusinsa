package com.tech.project_shopping_mall.dao;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.tech.project_shopping_mall.dto.MembersDto;



public class UserDao implements JoinIDao{

	JdbcTemplate template;
	
	@Autowired
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public void Register(Map map) {	}
	@Override
	public MembersDto Id_Check(String id) { 
		return null;
	}

	@Override
	public void join(MembersDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int overlappedID(MembersDto dto) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}





	

}
