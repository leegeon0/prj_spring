package com.program.app.infra.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

//@Repository //스프링
//public class CodeGroupDao {
//	@Inject
//	@Resource(name = "sqlSession")
//	private SqlSession sqlSession;
//	
//	private static String namespace = "com.program.app.codegroup.CodeGroupMapper";
//	
//	public List<CodeGroup> selectList(){ return sqlSession.selectList(namespace + ".selectList", ""); }
//	
////	public List<CodeGroup> selectList(){ 
////		return sqlSession.selectList(namespace + ".selectList", ""); 
////	}
//}


@Repository

public class CodeDao{
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.program.app.infra.code.CodeMapper";
	
	
	public int selectOneCount(CodeVo vo){
		
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
		
		}
	
	
	public List<Code> selectList(CodeVo vo){
		
		return sqlSession.selectList(namespace + ".selectList", vo);
		
	}
	
	public Code selectOne(CodeVo vo){
		
		Code codeGroup = sqlSession.selectOne(namespace + ".selectOne", vo);
		return codeGroup;
		
	}
	
	
	public int update(Code dto){
//		
//		int codeGroup2 = sqlSession.update(namespace + ".update", dto);
//		return codeGroup2;
		return sqlSession.update(namespace + ".update", dto);
		
	}
	
	public int delete(Code dto){

		return sqlSession.delete(namespace + ".delete", dto);
		
	}
	
	public int insert(Code dto){

		return sqlSession.insert(namespace + ".insert", dto);
		
	}
	
	public int uelete(Code dto){

		return sqlSession.update(namespace + ".uelete", dto);
		
	}
	
	
	 
	  //for cache
	public List<Code> selectListCodeArrayList(){ return
	sqlSession.selectList(namespace + ".selectListCodeArrayList", null); }
	 
	
}
