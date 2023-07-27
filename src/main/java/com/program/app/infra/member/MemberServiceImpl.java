package com.program.app.infra.member;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mysql.cj.Constants;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDao dao;
	
	
	@Override
	public int selectOneCount(MemberVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Member> selectList(MemberVo vo) {
		// TODO Auto-generated method stub
		List<Member> yep = dao.selectList(vo);
		
		return yep;
	}

	@Override
	public Member selectOne(MemberVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public Member selectTwo(MemberVo vo) {
		// TODO Auto-generated method stub
		return dao.selectTwo(vo);
	}
	
	@Override
	public int selectOneCheckId(MemberVo vo) {
		// TODO Auto-generated method stub
		return dao.selecOneCheckId(vo);
	}

	@Override
	public int update(Member dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(Member dto) {
		// TODO Auto-generated method stub
		return dao.delete(dto);
	}

	@Override
	public int insert(Member dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int uelete(Member dto) {
		// TODO Auto-generated method stub
		return dao.uelete(dto);
	}
	


	
	
	
	
}