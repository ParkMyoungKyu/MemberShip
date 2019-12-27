package com.miris.project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MonthlyDaoImpl implements MonthlyDao {
	
	@Autowired
	private SqlSession session;
}
