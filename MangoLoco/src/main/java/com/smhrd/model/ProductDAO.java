package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class ProductDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	public List<ProductDTO> User_ProductAll() {
		SqlSession sqlsession = sqlSessionFactory.openSession(true);
		List<ProductDTO> Product_list = sqlsession.selectList("User_ProductAll");
		sqlsession.close();
		return Product_list;
	}

}
