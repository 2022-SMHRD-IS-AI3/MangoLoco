package com.smhrd.mybatis;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	public static SqlSessionFactory sqlSessionFactory;

	static {
		String resource = "com/smhrd/mybatis/mybatis-config.xml";
		Reader reader;
		try {
			reader = Resources.getResourceAsReader(resource);
			// sqlSession = connection 객체
			// SqlSessionFactory : SqlSession(DB연결, sql실행, 트랜잭션 관리)
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// DAO(Class)에서 사용할 메소드
	public static SqlSessionFactory getSqlSession() {
		return sqlSessionFactory;
	}
}
