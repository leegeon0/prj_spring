package com.program.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class HomeController {
	
	@RequestMapping(value="/") // value = / : 최상위 도메인
	public String home() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// href = "/resources/css/style.css";
		
		// 아래의 jsp 파일 호출
		return "home";
	}
	
	@RequestMapping(value="/home3") // value = / : 최상위 도메인
	public String home3() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// 아래의 jsp 파일 호출
		return "app/home/home3";
	}
	
	@RequestMapping(value="/home2") // value = / : 최상위 도메인
	public String home2() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// 아래의 jsp 파일 호출
		return "app/home/home2";
	}
	
	@RequestMapping(value="/home4") // value = / : 최상위 도메인
	public String home4() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// 아래의 jsp 파일 호출
		return "app/home/home4_data_base";
	}
	
	
	
}