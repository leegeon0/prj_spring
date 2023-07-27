package com.program.app.kioskInfra.kioskCodegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class KioskCodegroupServiceImpl implements KioskCodegroupService {
	
	@Autowired
	KioskCodegroupDao dao;

	@Override
	public int selectOneCount(KioskCodegroupVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public List<KioskCodegroup> selectList(KioskCodegroupVo vo) {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public KioskCodegroup selectOne(KioskCodegroupVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int update(KioskCodegroup dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(KioskCodegroup dto) {
		// TODO Auto-generated method stub
		return dao.delete(dto);
	}

	@Override
	public int insert(KioskCodegroup dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int uelete(KioskCodegroup dto) {
		// TODO Auto-generated method stub
		return dao.uelete(dto);
	}

}
