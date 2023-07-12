<%-- <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%> --%>
    
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
    
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pos_Login</title>
	<script src="https://kit.fontawesome.com/1cfc86f328.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="/resources/assets/css/pos_main.css">
    <script src="/resources/assets/js/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
    <script src="/resources/assets/js/pos_main.js"></script>
</head>

<body>
    <header id="header">
        <div class="headerCen">
            <div class="first_line">
                <h2>Version : 3.71v</h2>
                <h2>포스번호 01</h2>
                <h2>A/S센터 : 김포 구래동</h2>
            </div>
            <div class="cenRight">
                <h2>연락처 : 010-0000-0000</h2>
            </div>
        </div>

    </header>
    <div id="main_login">
        <div id="main_page">
            <img src="/resources/assets/img/pos_img.png" alt="">
        </div>
        <div id="login_page">
            <div class="login_page_box">
                <div class="pos_img">
                    <img src="/resources/assets/img/pree_pos.png" alt="">
                </div>
                <form name="register" id="login" class="row g-3" method="post">
                    <div class="col-md-4">
                        <label for="id" class="form-label"><i class="fa-sharp fa-solid fa-circle-user"></i></label>
                        <input type="text" class="form-control" id="id" value="" name="id">
                    </div>
                    <div class="col-md-4">
                        <label for="password" class="form-label"><i class="fa-sharp fa-solid fa-key"></i></label>
                        <input type="password" class="form-control" id="password" value="" name="password">
                    </div>
                    <div class="col-12">
                       <button class="btn btn-primary sign_in_btn" id="sign_in" type="button">로그인</button>
                        <button id ="sign_up" class="btn btn-primary sign_up_btn" type="button">회원가입</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    
    $("#sign_in").on("click", function(){
    	
    	/* if(validation() == false) return false; */
    	
    	$.ajax({
    		async: true 
    		,cache: false
    		,type: "post"
    		/* ,dataType:"json" */
    		,url: "/login"
    		/* ,data : $("#formLogin").serialize() */
    		,data : { "id" : $("#id").val(),
    			"password" : $("#password").val()}
    		,success: function(response) {
    			if(response.rt == "success") {
    				alert(response.rtMember.name);
    				location.href = "/indexUserView?=";
    			} else {
    				alert("그런 회원 없습니다.");
    			}
    		}
    		,error : function(jqXHR, textStatus, errorThrown){
    			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
    		}
    	});

// 		$("form[name=register]").attr("action", "/memberXdmList").submit();
// 		$("form[name=register]").attr("method","post");
    });

/* 
    validation = function() {
    	// if(!checkNull($("#ifmmId"), $.trim($("#ifmmId").val()), "아이디를 입력해 주세요!")) return false;
    	// if(!checkNull($("#ifmmPassword"), $.trim($("#ifmmPassword").val()), "비밀번호를 입력해 주세요!")) return false;
    }
     */
    
    </script>
</body>

</html>