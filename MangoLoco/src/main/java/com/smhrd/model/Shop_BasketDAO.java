package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class Shop_BasketDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public List<Shop_BasketDTO> BasketAll() {
		SqlSession sqlsession = sqlSessionFactory.openSession(true);
		List<Shop_BasketDTO> basket_list = sqlsession.selectList("basketAll");
		sqlsession.close();
		return basket_list;
	}
	
	public int cartIn(Shop_BasketDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.insert("cartin", dto);
		sqlSession.close();
		return cnt;
	}
	
	public int cartOut(Shop_BasketDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.delete("cartout", dto);
		sqlSession.close();
		return cnt;
	}
	public List<String> idBasket(String id) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<String> myList = sqlSession.selectList("mylist", id);
		sqlSession.close();
		return myList;
	}
	
	public int samemodel(Shop_BasketDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.update("samemodel", dto);
		sqlSession.close();
		return cnt;
	}

}
