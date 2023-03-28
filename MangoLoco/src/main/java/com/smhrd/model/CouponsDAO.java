package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class CouponsDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public List<CouponsDTO> user_coupons() {
		SqlSession sqlsession = sqlSessionFactory.openSession(true);
		List<CouponsDTO> user_coupons = sqlsession.selectList("user_coupons");
		sqlsession.close();
		return user_coupons;
	}

}
