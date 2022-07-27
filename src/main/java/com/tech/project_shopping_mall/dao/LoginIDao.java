package com.tech.project_shopping_mall.dao;

import com.tech.project_shopping_mall.dto.MembersDto;

public interface LoginIDao {
	
	public MembersDto selectUserPassword(MembersDto dto);

}
