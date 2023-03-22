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
			// sqlSession = connection ��ü
			// SqlSessionFactory : SqlSession(DB����, sql����, Ʈ����� ����)
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// DAO(Class)���� ����� �޼ҵ�
	public static SqlSessionFactory getSqlSession() {
		return sqlSessionFactory;
	}
}
