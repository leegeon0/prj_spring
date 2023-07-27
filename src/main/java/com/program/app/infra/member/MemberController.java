package com.program.app.infra.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class MemberController {
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping("/memberXdmList")
	public String memberXdmList(@ModelAttribute("vo") MemberVo vo,Model model) throws Exception {
		
		/*
		 * System.out.println("controller: vo.getShOption() : " + vo.getShOption());
		 * System.out.println("controller: vo.getShKeyword() : " + vo.getShKeyword());
		 */
		
		vo.setShKeyword(vo.getShKeyword() == null ? "": vo.getShKeyword()); // 삼항 연산자
		// 검색 입력창이 null인경우 "" 값이 입력되도록 설정하고 다른 입력값을 입력하면 그값에 대한 검색란이 나오도록 설정
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list",list);
			
//			List<Code> a = CodeServiceImpl.selectListCachedCode("1");
//			
//			for(Code b : CodeServiceImpl.selectListCachedCode("1")) {
//				System.out.println(b.getName());
//			}
//			model.addAttribute("listCodeGender",CodeServiceImpl.selectListCachedCode("1"));
//			
			
		} else {
			// by pass
		}
		
//		List<CodeGroup> list = service.selectList(vo);
		
//		왼쪽의 list 는 jsp에서 사용할 변수명
//		model.addAttribute("list",list);
//		model.addAttribute("vo", vo);
		// 이 위에 줄보다 @ModalAttribute("vo") 를 더 많이 사용
		
//		model.addAttribute("list",service.selectList(); 위에 두줄 대신에 사용가능
		
		return "xdm/infra/member/memberXdmList";
	}
	
	@RequestMapping("/memberXdmForm")
	public String memberXdmForm(MemberVo vo,Model model) {
		
//		System.out.println("vo.getSeq(): " + vo.getSeq());
		
		Member member = service.selectOne(vo);
		
//		System.out.println("codeGroup.getSeq():" + codeGroup.getSeq());
//		왼쪽의 list 는 jsp에서 사용할 변수명
		model.addAttribute("item",member);
		
//		model.addAttribute("list",service.selectList(); 위에 두줄 대신에 사용가능
		
		return "xdm/infra/member/memberXdmForm";
	}
	
	
	@RequestMapping("/memberUpdt")
	public String codeUpdt(Member dto) {
		
		System.out.println("memberUpdt");
		service.update(dto);
		
		
		return "redirect:/memberXdmList";
	}
	
	@RequestMapping("/memberDel")
	public String memberDel(Member dto) {
		
		System.out.println("memberDel");
		service.delete(dto);
		
		
		return "redirect:/memberXdmList";
	}
	
	
	@RequestMapping("/memberInsert")
	public String memberInsert(Member dto) throws Exception {
		
		System.out.println("memberInsert");
		service.insert(dto);
		
		
		return "redirect:/indexUserLogin";
	}
	
	@RequestMapping("/memberUele")
	public String memberUele(Member dto) {
		
		System.out.println("memberUele");
		service.uelete(dto);
		
		
		return "redirect:/memberXdmList";
		// 경로가 없다면 redirect:/ 추가
		// 경로가 있다면 해당 JSP로 return
	}
	
	@RequestMapping("/memberXdmInsert")
	public String memberXdmInsert(Member dto) throws Exception {
		
		System.out.println("memberXdmInsert");
		service.insert(dto);
		
		
		return "redirect:/memberXdmList";
	}
	
	@ResponseBody
	@RequestMapping("/login")
	public Map<String, Object> loginMember(MemberVo vo, HttpSession httpSession ) {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectTwo(vo);
		
		if(rtMember != null) {
			
			httpSession.setMaxInactiveInterval(60*60);	//60min
			httpSession.setAttribute("sessionId", vo.getId());
			
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "success");
		}else {
			returnMap.put("rt", "fail");
		}
		
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping("/logout")
	public Map<String, Object> logoutMember(HttpSession httpSession ) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	

	@ResponseBody
	@RequestMapping("/check")
	public Map<String, Object> checkName(MemberVo vo) {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int rtNum = service.selectOneCheckId(vo);
		
		if(rtNum == 0) {
			returnMap.put("rt", "available");
			
		}else {
			returnMap.put("rt", "unavailable");
		}
		
		return returnMap;
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
