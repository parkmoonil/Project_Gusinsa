package com.tech.project_shopping_mall.dao;

import com.tech.project_shopping_mall.dto.MembersDto;

public interface LoginMapper {
	
	public MembersDto selectUserPassword(MembersDto dto);

	public MembersDto findId(String mname, String mphone);

}
