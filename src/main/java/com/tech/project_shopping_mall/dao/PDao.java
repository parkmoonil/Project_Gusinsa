package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.Infodto;
import com.tech.project_shopping_mall.dto.NorderinfoDto;



public interface PDao {

	public ArrayList<Infodto> men(int rowStart, int rowEnd, String p_img);

	public int selectBoardTotCount();

	public ArrayList<Infodto> women(int rowStart, int rowEnd, String string);

	public void Norderwrite(String n_name, String n_number, String n_email, String n_addr, String n_request);

//	public void Norderwrite(NorderinfoDto dto);
}
