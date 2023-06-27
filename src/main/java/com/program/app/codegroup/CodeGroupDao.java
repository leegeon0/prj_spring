package com.program.app.codegroup;

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

public class CodeGroupDao{
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.program.app.codegroup.CodeGroupMapper";
	
	public List<CodeGroup> selectList(CodeGroupVo vo){
		
		return sqlSession.selectList(namespace + ".selectList", vo);
		
	}
	
	public CodeGroup selectOne(CodeGroupVo vo){
		
		CodeGroup codeGroup = sqlSession.selectOne(namespace + ".selectOne", vo);
		return codeGroup;
		
	}
	
	
	public int update(CodeGroup dto){
//		
//		int codeGroup2 = sqlSession.update(namespace + ".update", dto);
//		return codeGroup2;
		return sqlSession.update(namespace + ".update", dto);
		
	}
	
	public int delete(CodeGroup dto){

		return sqlSession.delete(namespace + ".delete", dto);
		
	}
	
	public int insert(CodeGroup dto){

		return sqlSession.insert(namespace + ".insert", dto);
		
	}
	
	public int uelete(CodeGroup dto){

		return sqlSession.update(namespace + ".uelete", dto);
		
	}
	
	
}
