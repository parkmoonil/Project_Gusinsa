package com.tech.project_shopping_mall.dao;

import java.util.ArrayList;
import java.util.List;

import com.tech.project_shopping_mall.dto.Cartdto;

public interface CartDao {
	List<Cartdto> cartMoney();
    void insert(Cartdto dto); //장바구니 추가
    List<Cartdto> listCart(String MID); //장바구니 목록
    void delete(int CART_ID); //장바구니 개별 삭제
    
    void update(int CART_ID); 
    int sumMoney(String MID); //장바구니 금액 합계
    int countCart(String MID, int P_CODE); //장바구니 상품 갯수
    void updateCart(Cartdto dto); //장바구니 수정 
   
	
}
