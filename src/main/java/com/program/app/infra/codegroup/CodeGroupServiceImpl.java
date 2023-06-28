package com.program.app.infra.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServiceImpl implements CodeGroupService{
	
	@Autowired
	CodeGroupDao dao;

	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) {
		// TODO Auto-generated method stub
		List<CodeGroup> yep = dao.selectList(vo);
		
		return yep;
	}

	@Override
	public CodeGroup selectOne(CodeGroupVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int update(CodeGroup dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(CodeGroup dto) {
		// TODO Auto-generated method stub
		return dao.delete(dto);
	}

	@Override
	public int insert(CodeGroup dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int uelete(CodeGroup dto) {
		// TODO Auto-generated method stub
		return dao.uelete(dto);
	}
	

	
	
	
	
}