package com.smhrd.model;

import java.awt.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class ProductDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public java.util.List<ProductDTO> allProd(int count) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		java.util.List<ProductDTO> productList= null;
		productList = sqlSession.selectList("allread",count);
		return productList;
	}
	public java.util.List<ProductDTO> User_ProductAll() {
		SqlSession sqlsession = sqlSessionFactory.openSession(true);
		java.util.List<ProductDTO> Product_list = sqlsession.selectList("User_ProductAll");
		sqlsession.close();
		return Product_list;
	}
}
