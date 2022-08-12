package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.Cartdto;
import com.tech.project_shopping_mall.dto.Infodto;
import com.tech.project_shopping_mall.dto.Sumdto;

public interface IDao {

	public ArrayList<Infodto> SaleMain(String p_name, String p_price, String p_img);
	public void Saleupdate1();
	public void Saleupdate2();
	public void Saleupdate3();
	
	public ArrayList<Infodto> SaleBuying(String p_name, String p_price, String p_img);

	public ArrayList<Cartdto> MyCart(String id);
	
	
	//public Sumdto SumAmount(String id);
	int SumAmount(String id);
	int SumMoney(String id);
	public void delete(int p_code);

	
}
