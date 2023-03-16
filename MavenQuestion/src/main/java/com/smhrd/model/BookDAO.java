package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class BookDAO {
private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public BookDTO login(BookDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BookDTO loginDTO = sqlSession.selectOne("login", dto);
		sqlSession.close();
		return loginDTO;
	}
	public int join(BookDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.selectOne("join", dto);
		sqlSession.close();
		return cnt;
	}
}
