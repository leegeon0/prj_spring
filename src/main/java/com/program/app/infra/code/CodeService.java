package com.program.app.infra.code;

import java.util.List;

//인터페이스는 길라잡이 역할

public interface CodeService {
//	 public List<CodeGroup> selectList();
	
	public int selectOneCount(CodeVo vo);
	
	public List<Code> selectList(CodeVo vo);
	
	public Code selectOne(CodeVo vo);
	
	public int update(Code dto);
	
	public int delete(Code dto);
	
	public int insert(Code dto);
	
	public int uelete(Code dto);
}
