package com.program.app.codegroup;

import java.util.List;

//인터페이스는 길라잡이 역할

public interface CodeGroupService {
//	 public List<CodeGroup> selectList();
	
	public List<CodeGroup> selectList(CodeGroupVo vo);
	
	public CodeGroup selectOne(CodeGroupVo vo);
}