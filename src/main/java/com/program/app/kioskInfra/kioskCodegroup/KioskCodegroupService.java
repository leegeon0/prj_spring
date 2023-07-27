package com.program.app.kioskInfra.kioskCodegroup;

import java.util.List;

public interface KioskCodegroupService {
	
	public int selectOneCount(KioskCodegroupVo vo);
	
	public List<KioskCodegroup>selectList(KioskCodegroupVo vo);
	
	public KioskCodegroup selectOne(KioskCodegroupVo vo);
	
	public int update(KioskCodegroup dto);
	
	public int delete(KioskCodegroup dto);
	
	public int insert(KioskCodegroup dto);
	
	public int uelete(KioskCodegroup dto);

}
