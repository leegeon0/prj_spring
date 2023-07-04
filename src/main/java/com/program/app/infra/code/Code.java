package com.program.app.infra.code;

// 디비컬럼명 첫글자는 소문자
// seq는 편의상 디비에는 int지만 자바에서는 String으로 사용된다.
// 주로 테이블의 컬럼명과 일치

public class Code {

	private String seq;
	private String name;
	private Integer age;
	private Integer gender;
	private Integer codegroup_seq;
//	-----
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
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public Integer getCodegroup_seq() {
		return codegroup_seq;
	}
	public void setCodegroup_seq(Integer codegroup_seq) {
		this.codegroup_seq = codegroup_seq;
	}




}
