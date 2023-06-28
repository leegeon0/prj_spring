package com.program.app.infra.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping("/codeGroupXdmList")
	public String codeGroupXdmList(CodeGroupVo vo,Model model) {
		
		System.out.println("controller: vo.getShOption() : " + vo.getShOption());
		System.out.println("controller: vo.getShKeyword() : " + vo.getShKeyword());
		
		List<CodeGroup> list = service.selectList(vo);
		
//		왼쪽의 list 는 jsp에서 사용할 변수명
		model.addAttribute("list",list);
		
//		model.addAttribute("list",service.selectList(); 위에 두줄 대신에 사용가능
		
		return "xdm/infra/codegroup/codeGroupXdmList";
	}
	
	@RequestMapping("/codeGroupXdmForm")
	public String codeGroupXdmForm(CodeGroupVo vo,Model model) {
		
//		System.out.println("vo.getSeq(): " + vo.getSeq());
		
		CodeGroup codeGroup = service.selectOne(vo);
		
//		System.out.println("codeGroup.getSeq():" + codeGroup.getSeq());
		
//		왼쪽의 list 는 jsp에서 사용할 변수명
		model.addAttribute("item",codeGroup);
		
//		model.addAttribute("list",service.selectList(); 위에 두줄 대신에 사용가능
		
		return "xdm/infra/codegroup/codeGroupXdmForm";
	}
	
	
	@RequestMapping("/codeGroupUpdt")
	public String codeGroupUpdt(CodeGroup dto) {
		
		System.out.println("codeGroupUpdt");
		service.update(dto);
		
		
		return "redirect:/codeGroupXdmList";
	}
	
	@RequestMapping("/codeGroupDel")
	public String codeGroupDel(CodeGroup dto) {
		
		System.out.println("codeGroupDel");
		service.delete(dto);
		
		
		return "redirect:/codeGroupXdmList";
	}
	
	
	@RequestMapping("/codeGroupInsert")
	public String codeGroupInsert(CodeGroup dto) {
		
		System.out.println("codeGroupInsert");
		service.insert(dto);
		
		
		return "redirect:/codeGroupXdmList";
	}
	
	@RequestMapping("/codeGroupUele")
	public String codeGroupUele(CodeGroup dto) {
		
		System.out.println("codeGroupUele");
		service.uelete(dto);
		
		
		return "redirect:/codeGroupXdmList";
		// 경로가 없다면 redirect:/ 추가
		// 경로가 있다면 해당 JSP로 return
	}
	

}
