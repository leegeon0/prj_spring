package com.program.app.infra.code;

import java.util.ArrayList;
import java.util.List;

// 디비컬럼명 첫글자는 소문자
// seq는 편의상 디비에는 int지만 자바에서는 String으로 사용된다.
// 주로 테이블의 컬럼명과 일치

public class Code {

	private String seq;
	private String name;
	private String delNy;
	/*
	 * private Integer age; private Integer gender;
	 */
	private String codegroup_seq;
	
	/* 보류건
	 * private String man; private String woman; private String etc;
	 */
//	-----
	public static List<Code> codeArrayList = new ArrayList<Code>();
	// for cache
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	

	public String getDelNy() {
		return delNy;
	}
	public void setDelNy(String delNy) {
		this.delNy = delNy;
	}
	/*
	 * public Integer getAge() { return age; } public void setAge(Integer age) {
	 * this.age = age; }
	 * 
	 * 
	 * public Integer getGender() { return gender; } public void setGender(Integer
	 * gender) { this.gender = gender; }
	 */
//	public Integer getCodegroup_seq() {
//		return codegroup_seq;
//	}
//	public void setCodegroup_seq(Integer codegroup_seq) {
//		this.codegroup_seq = codegroup_seq;
//	}
//	
	public String getCodegroup_seq() {
		return codegroup_seq;
	}
	public void setCodegroup_seq(String codegroup_seq) {
		this.codegroup_seq = codegroup_seq;
	}
	
	/* 보류건
	 * public String getMan() { return man; } public void setMan(String man) {
	 * this.man = man; } public String getWoman() { return woman; } public void
	 * setWoman(String woman) { this.woman = woman; } public String getEtc() {
	 * return etc; } public void setEtc(String etc) { this.etc = etc; }
	 * 
	 */



}
