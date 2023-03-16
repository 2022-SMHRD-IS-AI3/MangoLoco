package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class MembersDAO {
private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int join(MembersDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
	}
}
