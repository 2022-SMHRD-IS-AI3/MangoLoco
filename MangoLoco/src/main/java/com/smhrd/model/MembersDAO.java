package com.smhrd.model;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class MembersDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public String idCheck(String id) {
		SqlSession sqlsession = sqlSessionFactory.openSession(true);
		String check = null;
		check = sqlsession.selectOne("idcheck",id);
		return check;
	}
	public int join(MembersDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.insert("join",dto);
		return cnt;
	}
	public MembersDTO login(MembersDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		MembersDTO login = null;
		login = sqlSession.selectOne("login", dto);
		return login;
	}
}
