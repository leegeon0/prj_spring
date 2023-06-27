<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>



<form class="searchForm" name="formList" method="post">
	<select name="shOption">
		<option value="">-선택-</option>
		<option value="1">1</option>
		<option value="2">2</option>
	</select>
	
	<input type="text" name="shKeyword">
	
	<button type="button" class="btn btn-primary" id="btn">검색</button>
	<a href="codeGroupForm"><button type="button" class="btn btn-primary" id="insertBtn">추가</button></a>
	
</form>

<br>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="list" varStatus="status">
			<c:out value="${list.seq}"></c:out>
			<a href="codeGroupForm?seq=<c:out value="${list.seq}"/>"><c:out value="${list.nameFull}"/></a>
			<br>
		</c:forEach>
	</c:otherwise>
</c:choose>

<script src="/resources/assets/js/jquery-3.6.4.min.js"></script>

<script type="text/javascript">

// 자기 자신을 다시 한번 호출 해 준다.
$("#btn").on("click", function(){
	
	/* $("form[name=formList]").attr("method","get"); */

	$("form[name=formList]").attr("action", "/codeGroupList").submit();
	$("form[name=formList]").attr("method","post");
	
	
})

</script>



