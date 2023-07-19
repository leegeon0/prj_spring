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

                <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.css" rel="stylesheet" />
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
  
  
  .edit_pos{
  	display : flex;
  	justify-content: space-around;
  }
  
  .form_line_left{
  	width : 45%

  }
  .form_line_right{
	width : 45%
  }
  

  .btn_btn{
  	clear: both;
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

<%@include file="memberXdmListTop.jsp"%>

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
              		<div class="edit_pos">
              			<div class="form_line_left">
              			<div class="form-outline mb-4">
                    		<input type="text" class="form-control" id="seq" placeholder="Auto Increment" readonly name="seq" required value="<c:out value="${item.seq}"/>">
                    		<label class="form-label" for="seq">seq</label>
                		</div>
              			<div class="form-outline mb-4">
                    		<input type="text" class="form-control" id="id" name="id" required value="<c:out value="${item.id}"/>">
                    		<label class="form-label" for="id">아이디</label>
                		</div>
                       	<div class="form-outline mb-4">
                    		<input type="text" class="form-control" id="password" name="password"  required value="<c:out value="${item.password}"/>">
                    		<label class="form-label" for="id">비밀번호</label>
                		</div>
                		<div class="form-outline mb-4">
                    		<input type="text" class="form-control" id="name" name="name"  required value="<c:out value="${item.name}"/>">
                    		<label class="form-label" for="id">이름</label>
                		</div>
                		<div class="form-outline mb-4">
                			<input type="text" class="form-control" id="salesType" name="salesTypes" required value="<c:out value="${item.salesType}"/>">
                			<label class="form-label" for="salesType">판매유형</label>
                		</div>
                		<div class="form-outline mb-4">
                			<input type="text" class="form-control" placeholder="default : 0" id="delNy" name="delNy" required value="<c:out value="${item.delNy}"/>">
                			<label class="form-label" for="delNy">사용여부</label>
                		</div>
              		</div>
              		<div class="form_line_right">
              			<div class="form-outline mb-4">
                			<input type="text" class="form-control" id="memberAddress" name="memberAddress" required value="<c:out value="${item.memberAddress}"/>">
                			<label class="form-label" for="memberAddress">회원 주소</label>
                		</div>
                		<div class="form-outline mb-4">
                			<input type="text" class="form-control" id="memberTel" name="memberTel" required value="<c:out value="${item.memberTel}"/>">
                			<label class="form-label" for="memberTel">회원 전화번호</label>
                		</div>
                		<div class="form-outline mb-4">
                			<input type="text" class="form-control" id="companyAddress" name="companyAddress" required value="<c:out value="${item.companyAddress}"/>">
                			<label class="form-label" for="companyAddress">회사 주소</label>
                		</div>
                		<div class="form-outline mb-4">
                			<input type="text" class="form-control" id="companyTel" name="companyTel" required value="<c:out value="${item.companyTel}"/>">
                			<label class="form-label" for="companyTel">회사 전화번호</label>
                		</div>
              		
              		</div>
              		
              	</div>
              		
              		
              	


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

<%@include file="memberXdmListBottom.jsp"%>

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
  
  <script src="/resources/assets/js/jquery-3.6.4.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.js"></script>
  
  <script type="text/javascript">
 /*  
  $("#name").on("blur", function(){
  	
  	
  	$.ajax({
  		async: true 
  		,cache: false
  		,type: "post"

  		,url: "/check"

  		,data : { "name" : $("#name").val()}
  		,success: function(response) {
  			if(response.rt == "available") {
  				alert("사용가능합니다.")
  			} else {
  				alert("다른이름으로 작성해주세요.");
  				
  				
  			}
  		}
  		,error : function(jqXHR, textStatus, errorThrown){
  			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
  		}
  	});

  });
   */
  
  	$("#submitBtn").on("click",function(){
	 	
/* 	    var delNyValue = $("#delNy").val();
	    
	    if (delNyValue !== "0" && delNyValue !== "1" && delNyValue !== "") {
	    	event.preventDefault()
	      alert("delNy는 0과 1만 입력할 수 있습니다.");
	    	return false;
	    }else{
	    	alert("저장완료");	
	    }  */
	 	$("form[name=form]").attr("action","/memberXdmInsert").submit();
	 	 
	});
   
  	$("#updateBtn").on("click", function(event) {
  	    event.preventDefault(); // 폼의 제출을 중단합니다.

  	    // 이름을 검증하는 AJAX 요청
  	    $.ajax({
  	        async: true,
  	        cache: false,
  	        type: "post",
  	        url: "/check",
  	        data: { "name": $("#name").val() },
  	        success: function(response) {
  	            if (response.rt == "available") {
  	                // 이름이 사용 가능한 경우 폼을 제출합니다.
  	                alert("사용가능합니다.");
  	                $("form[name=form]").attr("action", "/memberUpdt").submit();
  	            } else {
  	                // 이름이 사용 불가능한 경우 경고 메시지를 표시합니다.
  	                alert("다른 이름으로 작성해주세요.");
  	            }
  	        },
  	        error: function(jqXHR, textStatus, errorThrown) {
  	            alert("ajaxUpdate " + jqXHR.status + " : " + errorThrown);
  	        }
  	    });
  	});
/*   
	  $("#updateBtn").on("click",function(){
	 	
	 	
	 	$("form[name=form]").attr("action","/memberUpdt").submit();
	 	 
	  });
	   */
	  $("#deleteBtn").on("click",function(){
	 		
	 		
	 		$("form[name=form]").attr("action","/memberDel").submit();

	 		 
	 });
	  
	  $("#ueleteBtn").on("click",function(){
	 		
	 		
	 		$("form[name=form]").attr("action","/memberUele").submit();
	 		 
	 });
	 


  
  </script>

</body>

</html>