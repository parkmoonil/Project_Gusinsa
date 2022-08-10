package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.Infodto;
import com.tech.project_shopping_mall.dto.MembersDto;
import com.tech.project_shopping_mall.dto.OrderinfoDto;



public interface PDao {

	public ArrayList<Infodto> men(int rowStart, int rowEnd, String p_img);

	public int selectBoardTotCount();
	
	public void Norderwrite(String n_name, String n_number, String n_email, String n_addr, String n_request);

	public MembersDto Orderafterlogin(String mid);

	

	



	

	

	

	public void afterpay(int p_code, String p_name, int sprice, int o_count, int o_totprice, String maddr_one,
			String maddr_two, String maddr_three, String maddr_four, String mid, String mphone, String p_img);
}
