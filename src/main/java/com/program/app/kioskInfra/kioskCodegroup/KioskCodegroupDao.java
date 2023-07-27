package com.program.app.kioskInfra.kioskCodegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class KioskCodegroupDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.program.app.kioskInfra.kioskCodegroup.KioskCodegroupMapper";
	
	public int selectOneCount(KioskCodegroupVo vo){
		
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
		
		}
	
	
	public List<KioskCodegroup> selectList(KioskCodegroupVo vo){
		
		return sqlSession.selectList(namespace + ".selectList", vo);
		
	}
	
	public KioskCodegroup selectOne(KioskCodegroupVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
		
	}
	
	
	public int update(KioskCodegroup dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int delete(KioskCodegroup dto) {
		return sqlSession.delete(namespace + ".delete", dto);
	}
	
	public int insert(KioskCodegroup dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	
	public int uelete(KioskCodegroup dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
}
