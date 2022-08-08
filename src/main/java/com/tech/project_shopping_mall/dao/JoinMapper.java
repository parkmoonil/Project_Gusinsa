package com.tech.project_shopping_mall.dao;

import java.util.Map;

import com.tech.project_shopping_mall.dto.MembersDto;


public interface JoinMapper {
	
	public void join(MembersDto dto);
	
	
	public int overlappedID(MembersDto dto) throws Exception;
	
	
	
	public void Register(Map map);
	public MembersDto Id_Check(String id);
}
