package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.Order_ProductDto;
import com.tech.project_shopping_mall.dto.orderinfoDto;

public interface MyPageDao {
	
	public ArrayList<Order_ProductDto> order_p();
	
	public ArrayList<orderinfoDto> orderlist(String mid);

}
