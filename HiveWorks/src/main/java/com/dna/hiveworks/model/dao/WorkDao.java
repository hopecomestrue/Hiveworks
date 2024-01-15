package com.dna.hiveworks.model.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dna.hiveworks.model.dto.Work;

public interface WorkDao {
	
	List<Work> selectWorkListAllByEmp(SqlSession session);
	
	String selectWorkByEmpNo(SqlSession session, int empNo);
	String selectWorkByEmpNoEND(SqlSession session, int empNo);
	
	int updateStartWork(SqlSession session, int empNo);
	int updateEndWork(SqlSession session, int empNo);
	int deleteWork(SqlSession session, int empNo);
	
	Work selectCommute(SqlSession session, int empNo);
	
	String avgStartWork(SqlSession session, int empNo);
	String avgEndWork(SqlSession session, int empNo);
	int lateWork(SqlSession session, int empNo);
	int fastEnd(SqlSession session, int empNo);
	int absence(SqlSession session, int empNo);
	int overWork(SqlSession session, int empNo);

}
