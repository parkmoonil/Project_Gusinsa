package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.Cartdto;
import com.tech.project_shopping_mall.dto.Infodto;
import com.tech.project_shopping_mall.dto.SpriceDto;
import com.tech.project_shopping_mall.dto.Sumdto;

public interface IDao {

	public ArrayList<Infodto> SaleMain();
	public void Saleupdate1();
	public void Saleupdate2();
	public void Saleupdate3();
	
	public ArrayList<Infodto> SuperSale(String p_name, String p_price, String p_img);

	public ArrayList<Cartdto> MyCart(String id);
	public void mypageinsert(String id, int p_code, String amount,int p_price);
	public ArrayList<SpriceDto> pricetest();
	
	
	//public Sumdto SumAmount(String id);
	int SumAmount(String id);
	int SumMoney(String id);
	public void delete(int cart_id);

	
}
