package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class BoardDAO {
private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
public int upload(BoardDTO dto) {
	SqlSession sqlsession = sqlSessionFactory.openSession(true);
	int cnt = sqlsession.insert("upload", dto);
	sqlsession.close();
	return cnt;
}

public List<BoardDTO> BoardAll() {
	SqlSession sqlsession = sqlSessionFactory.openSession(true);
	List<BoardDTO> board_list = sqlsession.selectList("boardAll");
	sqlsession.close();
	return board_list;
}

public BoardDTO BoardDetail(int num) {
	SqlSession sqlsession = sqlSessionFactory.openSession(true);
	BoardDTO board_detail = sqlsession.selectOne("boardDetail", num);
	return board_detail;
}
}
