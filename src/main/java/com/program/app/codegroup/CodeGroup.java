package com.program.app.codegroup;

// 디비컬럼명 첫글자는 소문자
// seq는 편의상 디비에는 int지만 자바에서는 String으로 사용된다.
// 주로 테이블의 컬럼명과 일치

public class CodeGroup {

	private String seq;
	private String nameFull;
//	-----
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getNameFull() {
		return nameFull;
	}
	public void setNameFull(String nameFull) {
		this.nameFull = nameFull;
	}


}
