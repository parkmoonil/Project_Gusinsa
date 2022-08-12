package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;

import com.tech.project_shopping_mall.dto.BrandDto;
import com.tech.project_shopping_mall.dto.Infodto;

public interface BrandDao {
	
	public ArrayList<BrandDto> brand_ga(String brand_name);
	public ArrayList<BrandDto> brand_gga(String brand_name);
	public ArrayList<BrandDto> brand_na(String brand_name);
	public ArrayList<BrandDto> brand_da(String brand_name);
	public ArrayList<BrandDto> brand_dda(String brand_name);
	public ArrayList<BrandDto> brand_la(String brand_name);
	public ArrayList<BrandDto> brand_ma(String brand_name);
	public ArrayList<BrandDto> brand_ba(String brand_name);
	public ArrayList<BrandDto> brand_bba(String brand_name);
	public ArrayList<BrandDto> brand_sa(String brand_name);
	public ArrayList<BrandDto> brand_ssa(String brand_name);
	public ArrayList<BrandDto> brand_aa(String brand_name);
	public ArrayList<BrandDto> brand_ja(String brand_name);
	public ArrayList<BrandDto> brand_jja(String brand_name);
	public ArrayList<BrandDto> brand_cha(String brand_name);
	public ArrayList<BrandDto> brand_ka(String brand_name);
	public ArrayList<BrandDto> brand_ta(String brand_name);
	public ArrayList<BrandDto> brand_pa(String brand_name);
	public ArrayList<BrandDto> brand_ha(String brand_name);
	
	public ArrayList<BrandDto> brand_a(String brand_name);
	public ArrayList<BrandDto> brand_b(String brand_name);
	public ArrayList<BrandDto> brand_c(String brand_name);
	public ArrayList<BrandDto> brand_d(String brand_name);
	public ArrayList<BrandDto> brand_e(String brand_name);
	public ArrayList<BrandDto> brand_f(String brand_name);
	public ArrayList<BrandDto> brand_g(String brand_name);
	public ArrayList<BrandDto> brand_h(String brand_name);
	public ArrayList<BrandDto> brand_i(String brand_name);
	public ArrayList<BrandDto> brand_j(String brand_name);
	public ArrayList<BrandDto> brand_k(String brand_name);
	public ArrayList<BrandDto> brand_l(String brand_name);
	public ArrayList<BrandDto> brand_m(String brand_name);
	public ArrayList<BrandDto> brand_n(String brand_name);
	public ArrayList<BrandDto> brand_o(String brand_name);
	public ArrayList<BrandDto> brand_p(String brand_name);
	public ArrayList<BrandDto> brand_q(String brand_name);
	public ArrayList<BrandDto> brand_r(String brand_name);
	public ArrayList<BrandDto> brand_s(String brand_name);
	public ArrayList<BrandDto> brand_t(String brand_name);
	public ArrayList<BrandDto> brand_u(String brand_name);
	public ArrayList<BrandDto> brand_v(String brand_name);
	public ArrayList<BrandDto> brand_w(String brand_name);
	public ArrayList<BrandDto> brand_x(String brand_name);
	public ArrayList<BrandDto> brand_y(String brand_name);
	public ArrayList<BrandDto> brand_z(String brand_name);
	
	/* public ArrayList<BrandDto> brand_title(String brand_name); */
	
	public BrandDto brand(String brand_id);
	
	public int selectBoardTotCount();
	public ArrayList<Infodto> brand1(int rowStart, int rowEnd, String p_img);
	public ArrayList<Infodto> Pricelistdesc(int rowStart, int rowEnd, String p_img);
	public ArrayList<Infodto> Pricelistasc(int rowStart, int rowEnd, String p_img);
	public ArrayList<Infodto> datedesc(int rowStart, int rowEnd, String p_img);

	public void product_enrollwrite(String p_name,int p_price,String p_class, String p_gender, 
			String p_img,String p_img2,String p_img3,String p_img4,String p_img5, String brand, 
			String p_category); 
	
	public void product_delete(String sp_code);
}
