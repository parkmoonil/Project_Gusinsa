package com.tech.project_shopping_mall.dao;

import java.util.Map;

import com.tech.project_shopping_mall.dto.MembersDto;


public interface JoinMapper {
	
	public void join(MembersDto dto);
	
	
	public int overlappedID(MembersDto dto) throws Exception;
	
	
	
	public void Register(Map map);
	public MembersDto Id_Check(String id);
	
	public MembersDto selectUserPassword(String mid);
	
	public void User_Edit_InPw(String mid,String bcdpw,String mname, String mphone,
			String maddr_one,String maddr_two,String maddr_three,String maddr_four,
			String memail);
	
	public void User_Edit_NotPw(String mid,String mname, String mphone,
			String maddr_one,String maddr_two,String maddr_three,String maddr_four,
			String memail);
	
	
}
