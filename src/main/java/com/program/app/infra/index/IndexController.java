package com.program.app.infra.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	
	@RequestMapping(value="/") // value = / : 최상위 도메인
	public String biographyUserView() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// href = "/resources/css/style.css";
		
		// 아래의 jsp 파일 호출
		return "user/infra/biography/biographyUserView";
	}
	
	@RequestMapping(value="/indexXdmView") // value = / : 최상위 도메인
	public String home3() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// 아래의 jsp 파일 호출
		return "xdm/infra/index/indexXdmView";
	}
	
	@RequestMapping(value="/loginPage") // value = / : 최상위 도메인
	public String loginPage() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// 아래의 jsp 파일 호출
		return "xdm/infra/loginPage/loginPage";
	}
	
	@RequestMapping(value="/indexUserLogin")
	public String indexUserLogin() {
		
		return "user/infra/loginRegister/indexUserLogin";
	}
	
	@RequestMapping(value="/indexUserRegister")
	public String indexUserRegister() {
		
		return "user/infra/loginRegister/indexUserRegister";
	}
	
	@RequestMapping(value="/indexUserView")
	public String indexUserView() {
		
		return "user/infra/index/indexUserView";
	}
	
	@RequestMapping(value="/indexUserTable")
	public String indexUserTable() {
		
		return "user/infra/table/indexUserTable";
	}
	
	@RequestMapping(value="/point")
	public String point() {
		
		return "user/infra/kioskPayment/point";
	}
	
	
	/*
	 * @RequestMapping(value="/codeGroupXdmList") // value = / : 최상위 도메인 public
	 * String codeGroupXdmList() {
	 * 
	 * // 여기에서 서버단에서 필요한 작업을 수행한다.
	 * 
	 * // 아래의 jsp 파일 호출 return "xdm/infra/codegroup/codeGroupXdmList"; }
	 * 
	 */
	
}
