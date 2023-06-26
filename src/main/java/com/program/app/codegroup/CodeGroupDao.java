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
		// selectOne(); 메서드의 리턴값은 정수이므로 int를 사용
		return codeGroup;
		
	}
	
}
