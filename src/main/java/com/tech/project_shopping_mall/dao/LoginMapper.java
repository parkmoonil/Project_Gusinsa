package com.tech.project_shopping_mall.dao;

import com.tech.project_shopping_mall.dto.EnterDto;
import com.tech.project_shopping_mall.dto.MembersDto;

public interface LoginMapper {
	
	public MembersDto selectUserPassword(String mid);

	public MembersDto findId(String mname, String mphone);
	
	public EnterDto selectEntrepreneurPassword(String ereginum);

}
