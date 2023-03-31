package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class ReviewDAO {
private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

public List<ReviewDTO> allReviews(String model) {
	SqlSession sqlsession = sqlSessionFactory.openSession(true);
	List<ReviewDTO> review_list = sqlsession.selectList("allReviews", model);
	sqlsession.close();
	return review_list;
}

}
