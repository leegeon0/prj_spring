package com.program.app.infra.codegroup;

import java.util.List;

//인터페이스는 길라잡이 역할

public interface CodeGroupService {
//	 public List<CodeGroup> selectList();
	
	public int selectOneCount(CodeGroupVo vo);
	
	public List<CodeGroup> selectList(CodeGroupVo vo);
	
	public CodeGroup selectOne(CodeGroupVo vo);
	
	public int update(CodeGroup dto);
	
	public int delete(CodeGroup dto);
	
	public int insert(CodeGroup dto);
	
	public int uelete(CodeGroup dto);
}
