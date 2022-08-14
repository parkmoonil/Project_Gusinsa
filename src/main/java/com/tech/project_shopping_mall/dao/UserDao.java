package com.tech.project_shopping_mall.dao;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.tech.project_shopping_mall.dto.MembersDto;



public class UserDao implements JoinMapper{

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

	@Override
	public MembersDto selectUserPassword(String mid) {
		// TODO Auto-generated method stub
		return null;
	}

	public void User_Edit_InPw(String mid) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void User_Edit_NotPw(String mid, String mname, String mphone, String maddr_one, String maddr_two,
			String maddr_three, String maddr_four, String memail) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void User_Edit_InPw(String mid, String mpw, String mname, String mphone, String maddr_one, String maddr_two,
			String maddr_three, String maddr_four, String memail) {
		// TODO Auto-generated method stub
		
	}





	

}
