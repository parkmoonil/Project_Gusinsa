package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.Infodto;



public interface PDao {

	public ArrayList<Infodto> men(int rowStart, int rowEnd, String p_img);

	public int selectBoardTotCount();

	public ArrayList<Infodto> women(int rowStart, int rowEnd, String string);
}
