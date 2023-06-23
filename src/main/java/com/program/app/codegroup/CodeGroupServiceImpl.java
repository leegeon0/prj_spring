package com.program.app.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServiceImpl implements CodeGroupService {

	// 소스 내에서의 주입(Autowired)
	@Autowired
	CodeGroupDao dao;
	
	@Override
	public List<CodeGroup> selectList() {
		// TODO Auto-generated method stub
		
		
		
		List<CodeGroup> aaa = dao.selectList();
		
		return aaa;
	}

}
