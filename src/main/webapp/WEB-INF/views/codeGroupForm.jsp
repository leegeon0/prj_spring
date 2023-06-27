<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>





<form class="submitForm" name="form" method="post">
<input type="text" class="form-control" id="seq" name="seq" required readonly value="<c:out value="${item.seq}"/>">
<input type="text" class="form-control" id="nameFull" name="nameFull" required value="<c:out value="${item.nameFull}"/>">
<input type="text" class="form-control" id="delNy" name="delNy" required value="<c:out value="${item.delNy}"/>">
<button type="button" class="btn btn-primary" id="submitBtn">저장</button>
	<button type="button" class="btn btn-primary" id="updateBtn">업데이트</button>
	<button type="button" class="btn btn-primary" id="ueleteBtn">사용/해제</button>
	<button type="button" class="btn btn-primary" id="deleteBtn">삭제</button>
</form>

<script src="/resources/assets/js/jquery-3.6.4.min.js"></script>

<script type="text/javascript">

 $("#submitBtn").on("click",function(){
	
	alert("저장완료");
	$("form[name=form]").attr("action","/codeGroupInsert").submit();
	 
 });
 $("#updateBtn").on("click",function(){
	
	alert("업데이트완료");
	$("form[name=form]").attr("action","/codeGroupUpdt").submit();
	 
 });
 
 $("#deleteBtn").on("click",function(){
		
		alert("삭제완료");
		$("form[name=form]").attr("action","/codeGroupDel").submit();

		 
});
 
 $("#ueleteBtn").on("click",function(){
		
		alert("적용완료");
		$("form[name=form]").attr("action","/codeGroupUele").submit();
		 
	 });
</script>