<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!-- 
<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="list" varStatus="status">
			<c:out value="${list.seq}"></c:out>
			<c:out value="${list.nameFull}"></c:out><br>
		</c:forEach>
	</c:otherwise>
</c:choose>
 --!>

<!-- <!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>yep</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js">
    
</script>
    
  </head>
  <body>
    <form class="row g-3 needs-validation" novalidate>
  <div class="col-md-4" style="width : 300px;">
    <label for="validationCustom01" class="form-label">제목</label>
    <input type="text" class="form-control" id="validationCustom01" value="" required>
  </div>
  <div class="col-md-4" style="width : 300px;">
    <label for="validationCustom02" class="form-label">이름</label>
    <input type="text" class="form-control" id="validationCustom02" value="" required>
  </div>
  <div class="col-12">
    <button class="btn btn-primary" type="submit">저장</button>
  </div>
</form>
  </body>
</html> -->


<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Tables / Data - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/resources/assets/img/favicon.png" rel="icon">
  <link href="/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/resources/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="/resources/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="/resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/resources/assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/resources/assets/css/niceAdmin.css" rel="stylesheet">
  
  <style type="text/css">
  
  .sm{
  	dispaly : flex;
  }
  
  </style>
   

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

<%@include file="codeGroupXdmListTop.jsp"%>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Data Tables</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active">Data</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Datatables Edit</h5>
               <form class="submitForm" name="form" method="post">
				   <table class="table">
                	<thead>
		                <tr>
		                    <th scope="col">seq</th>
		                    <th scope="col">nameFull</th>
		                </tr>
                	</thead>
	                <tbody>
	                <tr>
		                <td><input type="text" class="form-control" id="seq" name="seq" placeholder="Auto Increment" required readonly value="<c:out value="${item.seq}"/>"></td>
		                <td><input type="text" class="form-control" id="nameFull" name="nameFull" required value="<c:out value="${item.nameFull}"/>"></td>
					</tr>
	                </tbody>
              		</table>


              		<c:choose>
						<c:when test="${empty item.seq }">
							<button type="button" class="btn btn-primary" id="submitBtn">저장</button>
						</c:when>
						<c:otherwise>
							<button type="button" class="btn btn-primary" id="updateBtn">업데이트</button>
							<button type="button" class="btn btn-primary" id="ueleteBtn">사용/해제</button>
							<button type="button" class="btn btn-primary" id="deleteBtn">삭제</button>
						</c:otherwise>	
					</c:choose>

				<!-- 	 
					<button type="button" class="btn btn-primary" id="submitBtn">저장</button>
					<button type="button" class="btn btn-primary" id="updateBtn">업데이트</button>
					<button type="button" class="btn btn-primary" id="ueleteBtn">사용/해제</button>
					<button type="button" class="btn btn-primary" id="deleteBtn">삭제</button>
              	!-->
			
				</form>
			
              <!-- Table with stripped rows -->
             
              <!-- End Table with stripped rows -->

              

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

<%@include file="codeGroupXdmListBottom.jsp"%>

 <script src="/resources/assets/js/jquery-3.6.4.min.js"></script>
  <script src="/resources/assets/js/constantsXdm.js"></script>
  <script src="/resources/assets/js/commonXdm.js"></script>

  <!-- Vendor JS Files -->
  <script src="/resources/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/resources/assets/vendor/chart.js/chart.umd.js"></script>
  <script src="/resources/assets/vendor/echarts/echarts.min.js"></script>
  <script src="/resources/assets/vendor/quill/quill.min.js"></script>
  <script src="/resources/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="/resources/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="/resources/assets/vendor/php-email-form/validate.js"></script>
   

  <!-- Template Main JS File -->
  <script src="/resources/assets/js/niceAdmin.js"></script>
  <script src="/resources/assets/js/validation.js"></script>
  
  <script type="text/javascript">
  
  	var objName = $("#nameFull");
  
    validationInst = function(){
	
	if(validationUpdt() == false) return false;
	
	}

 	validationUpdt = function(){
		
		//  실제 체킹하는 소스가 들어가는 부분
		if(check(objName) == false) return false;
/* 		
		if($.trim($("#nameFull").val()) == "" || $.trim($("#nameFull").val()) == null){
			alert("이름을 입력해주세요.");
			$("#nameFull").focus();
			return false;
		}else{
			return true;	
		}
		 */
		/* 		
		myRe = /^[a-z0-9_-]{2,10}$/;
		
		if(myRe.test($.trim($("#nameFull").val()) == false){
			alert("공백없는 숫자와 대소문자만 입력 가능합니다.");
			$("#nameFull").focus();
			return false;
			
		}else{
		// by pass
		} 
		*/
		
	}  
 	
 	
 	
  $("#submitBtn").on("click",function(){
	  	if(validationInst() == false) return false; 
	   	// 함수는 ()이게 있어야 함!!!

		var delNyValue = $("#delNy").val();
	    
	    if (delNyValue !== "0" && delNyValue !== "1" && delNyValue !== "") {
	    	event.preventDefault()
	      alert("delNy는 0과 1만 입력할 수 있습니다.");
	    	return false;
	    }else{ 
	   // 	alert("저장완료");	
	    } 
	    
	    
 	    
	 	$("form[name=form]").attr("action","/codeGroupInsert").submit();
	 	 
	  });
  
  
	  $("#updateBtn").on("click",function(){
	 	
 		 if(validationUpdt() == false) return false;	 	 
		 $("form[name=form]").attr("action","/codeGroupUpdt").submit();
		 /* 
		 	if($.trim($("#nameFull").val()) == "" || $.trim($("#nameFull").val()) == null){
				alert("이름을 입력해주세요.");
				$("#nameFull").focus();
				return false;
			}else{
				$("form[name=form]").attr("action","/codeGroupUpdt").submit();
			} 
		 */
	  });
	  
	  
	  
	  
	  
	  $("#deleteBtn").on("click",function(){
	 		
	 		
	 		$("form[name=form]").attr("action","/codeGroupDel").submit();

	 		 
	 });
	  
	  $("#ueleteBtn").on("click",function(){
	 		
	 		
	 		$("form[name=form]").attr("action","/codeGroupUele").submit();
	 		 
	 });
	  


  
  </script>

</body>

</html>



