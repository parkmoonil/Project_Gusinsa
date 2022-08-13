package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.Infodto;
import com.tech.project_shopping_mall.dto.MembersDto;
import com.tech.project_shopping_mall.dto.OrderinfoDto;
import com.tech.project_shopping_mall.dto.StorageDto;



public interface PDao {

	public ArrayList<Infodto> men(int rowStart, int rowEnd, String p_img);

	public int selectBoardTotCount();
	
	public void Norderwrite(String n_name, String n_number, String n_email, String n_addr, String n_request);

	public MembersDto Orderafterlogin(String mid);

	

	



	

	

	

	

	public void questwrite(String string, String o_quest);

	public void norderwrite(String n_ordername, String n_number1, String n_email, String n_name, String n_addr1,
			String n_addr2, String n_addr3, String n_addr4, String n_number2, String n_request);



	public StorageDto storage(int pcode);

	public void afterpay(int p_code, String p_name, int sprice, int o_count, int o_totprice, String maddr_one,
			String maddr_two, String maddr_three, String maddr_four, String mid, String mphone, String p_img,
			String o_quest, String p_size, String p_color);

	public void afternopay(int p_code, String p_name, int sprice, int o_count, int o_totprice, String n_name,
			String n_ordername, String n_email, String n_addr1, String n_addr2, String n_addr3, String n_addr4,
			String n_number1, String n_number2, String p_img, String n_request, String p_size, String p_color);
}
