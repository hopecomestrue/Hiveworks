package com.dna.hiveworks.model.dao;

import org.apache.ibatis.session.SqlSession;

public interface QuartzDao {
		
	int insertQuartzWork(SqlSession session, int empNo);
	String selectWorkByEmpNo(SqlSession session, int empNo);
}
