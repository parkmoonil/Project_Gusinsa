package com.tech.project_shopping_mall.dao;

import javax.inject.Inject;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tech.project_shopping_mall.dto.Cartdto;

	@Repository
	public class CartDaoImpl implements CartDao {
	 
	//MyBatis를 호출하므로 sqlsession에 의존성을 주입해야한다.
	 
	    @Inject
	    SqlSession sqlSession;
	    
	    @Override
	    public List<Cartdto> cartMoney() {
	        // TODO Auto-generated method stub
	        return null;
	    }
	    //장바구니에 담기
	    @Override
	    public void insert(Cartdto dto) {
	//dto에 저장된 값을 받아서 sql세션에 저장하고 cart.insert로 넘어감 mapper로.
	        sqlSession.insert("cart.insert", dto); 
	    }
	 
	    @Override
	    public List<Cartdto> listCart(String MID) {
	        return sqlSession.selectList("cart.listCart", MID);
	    }
	 
	    @Override
	    public void delete(int CART_ID) {
	        sqlSession.delete("cart.delete", CART_ID);
	    }
	 
	 
	    @Override
	    public void update(int CART_ID) {
	        // TODO Auto-generated method stub
	 
	    }
	 
	    @Override
	    public int sumMoney(String MID) {
	        return sqlSession.selectOne("cart.sumMoney", MID); 
	    }
	 
	    @Override
	    public int countCart(String MID, int P_CODE) {
	        // TODO Auto-generated method stub
	        return 0;
	    }
	 
	    @Override
	    public void updateCart(Cartdto dto) {
	        // TODO Auto-generated method stub
	 
	    }
	 
	    
	 
	}

