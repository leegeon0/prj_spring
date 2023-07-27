package com.program.app.kioskInfra.kioskCodegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.program.app.kioskInfra.kioskCodegroup.KioskCodegroupVo;
import com.program.app.kioskInfra.kioskCodegroup.KioskCodegroup;

@Controller
public class KioskCodegroupController {

	@Autowired
	KioskCodegroupServiceImpl service;
	
	@RequestMapping("/kioskCodeGroupXdmList")
	public String kioskCodeGroupXdmList(@ModelAttribute("vo") KioskCodegroupVo vo,Model model) {
		
		
		vo.setShKeyword(vo.getShKeyword() == null ? "": vo.getShKeyword()); 
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<KioskCodegroup> list = service.selectList(vo);
			model.addAttribute("list",list);
		} else {
			// by pass
		}
		
		
		return "kioskXdm/infra/codegroup/kioskCodeGroupXdmList";
	}
	
}
