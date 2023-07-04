package com.program.app.infra.code;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.support.RequestContextUtils;



@Controller
public class CodeController {
	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping("/codeXdmList")
	public String codeXdmList(@ModelAttribute("vo") CodeVo vo,Model model) {
		
		/*
		 * System.out.println("controller: vo.getShOption() : " + vo.getShOption());
		 * System.out.println("controller: vo.getShKeyword() : " + vo.getShKeyword());
		 */
		
		vo.setShKeyword(vo.getShKeyword() == null ? "": vo.getShKeyword()); // 삼항 연산자
		// 검색 입력창이 null인경우 "이" 값이 입력되도록 설정하고 다른 입력값을 입력하면 그값에 대한 검색란이 나오도록 설정
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<Code> list = service.selectList(vo);
			model.addAttribute("list",list);
		} else {
			// by pass
		}
		
//		List<CodeGroup> list = service.selectList(vo);
		
//		왼쪽의 list 는 jsp에서 사용할 변수명
//		model.addAttribute("list",list);
//		model.addAttribute("vo", vo);
		// 이 위에 줄보다 @ModalAttribute("vo") 를 더 많이 사용
		
//		model.addAttribute("list",service.selectList(); 위에 두줄 대신에 사용가능
		
		return "xdm/infra/code/codeXdmList";
	}
	
	@RequestMapping("/codeXdmForm")
	public String codeXdmForm(CodeVo vo,Model model) {
		
//		System.out.println("vo.getSeq(): " + vo.getSeq());
		
		Code code = service.selectOne(vo);
		
//		System.out.println("codeGroup.getSeq():" + codeGroup.getSeq());
		
//		왼쪽의 list 는 jsp에서 사용할 변수명
		model.addAttribute("item",code);
		
//		model.addAttribute("list",service.selectList(); 위에 두줄 대신에 사용가능
		
		return "xdm/infra/code/codeXdmForm";
	}
	
	
	@RequestMapping("/codeUpdt")
	public String codeUpdt(Code dto) {
		
		System.out.println("codeUpdt");
		service.update(dto);
		
		
		return "redirect:/codeXdmList";
	}
	
	@RequestMapping("/codeDel")
	public String codeDel(Code dto) {
		
		System.out.println("codeDel");
		service.delete(dto);
		
		
		return "redirect:/codeXdmList";
	}
	
	
	@RequestMapping("/codeInsert")
	public String codeInsert(Code dto) {
		
		System.out.println("codeInsert");
		service.insert(dto);
		
		
		return "redirect:/codeXdmList";
	}
	
	@RequestMapping("/codeUele")
	public String codeUele(Code dto) {
		
		System.out.println("codeUele");
		service.uelete(dto);
		
		
		return "redirect:/codeXdmList";
		// 경로가 없다면 redirect:/ 추가
		// 경로가 있다면 해당 JSP로 return
	}
	
	
	/*
	 * @RequestMapping(value = "/codeGroupXdmList") public String
	 * list(@ModelAttribute("vo") CodeGroupVo vo, HttpServletRequest request, Model
	 * model) { Map<String, ?> inputFlashMap =
	 * RequestContextUtils.getInputFlashMap(request); if(null != inputFlashMap) {
	 * model.addAttribute("msg",(String) inputFlashMap.get("msg")); }
	 * 
	 * Pagination pagination = new Pagination();
	 * pagination.setCurrentPageNo(vo.getPageIndex());
	 * pagination.setRecordCountPerPage(vo.getPageUnit());
	 * pagination.setPageSize(vo.getPageSize());
	 * 
	 * vo.setFirstIndex(pagination.getFirstRecordIndex());
	 * vo.setRecordCountPerPage(pagination.getRecordCountPerPage());
	 * 
	 * List<CodeGroup> codeList = service.selectList(vo); int totCnt =
	 * service.selectList(vo);
	 * 
	 * return "xdm/infra/codegroup/codeGroupXdmList"; }
	 */
	
	
	
	

}
