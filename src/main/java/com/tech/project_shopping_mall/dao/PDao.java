package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.Infodto;



public interface PDao {

	ArrayList<Infodto> men(String p_name, String p_price, String p_img);



}
