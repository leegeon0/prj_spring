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
            <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.css" rel="stylesheet" />
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
                <div class="index2_pos_img">
                    <img src="/resources/assets/img/pree_pos.png" alt="">
                </div>
                <div class="user_panel">
                	<c:choose>
                    	<c:when test="${not empty sessionId}">
							<p>반갑습니다<br><c:out value="${sessionId}"></c:out>님</p>
                    	</c:when>
                    </c:choose>
                </div>
                <div id="now_date">
                    <p><span id="currentDateTime"></span></p>
                </div>
                <div id="store_box">
                    <div class="store_address">
                        <p>한성국밥(부평점)</p>
                    </div>
                    <div class="salesman">
                        <p>판매원</p>
                    </div>
                    <div class="salesman_name">
                        <p>이건희</p>
                    </div>
                </div>
                <form name="pageMenu" action="post">
                <div id="main_page_menu">
                    <button type="button" id="sales_btn" class="main_page_menu_btn">
                        <div class="div_main_page_menu_btn">
                            <img src="/resources/assets/img/desktop.png" alt="">
                            <span class="font20">판매관리</span>
                        </div>
                    </button>
                    <button type="button" class="menu_manager_btn">
                        <div class="div_main_page_menu_btn">
                            <img src="/resources/assets/img/menu_manager.JPG" alt="">
                            <span class="font20">메뉴관리</span>
                        </div>
                    </button>
                    <button type="button" class="inventory_manager_btn">
                        <div class="div_main_page_menu_btn">
                            <img src="/resources/assets/img/inventory_manager.JPG" alt="">
                            <span class="font20">재고관리</span>
                        </div>
                    </button>
                    <button type="button" class="sales_status_btn">
                        <div class="div_main_page_menu_btn">
                            <img src="/resources/assets/img/sales_status.JPG" alt="">
                            <span class="font20">매출현황</span>
                        </div>
                    </button>
                    <button type="button" class="preferences_btn">
                        <div class="div_main_page_menu_btn">
                            <img src="/resources/assets/img/preferences.JPG" alt="">
                            <span class="font20">환경설정</span>
                        </div>
                    </button>
                    		<button type="button" class="logout_btn" id="logoutBtn">
                        		<div class="div_main_page_menu_btn">
                            		<img src="/resources/assets/img/system_shutdown.JPG" alt="">
                            		<span class="font20">로그아웃</span>
                        		</div>
                    		</button>
                	</div>
                </form>
                
            </div>
        </div>
    </div>
    <!-- Pills content -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.js"></script>
    
    <script type="text/javascript">
    
   $("#logoutBtn").on("click", function(){
    	
    	/* if(validation() == false) return false; */
    	
    	$.ajax({
    		async: true 
    		,cache: false
    		,type: "post"
    		/* ,dataType:"json" */
    		,url: "/logout"
    		/* ,data : $("#formLogin").serialize() */
    		,data : { }
    		,success: function(response) {
    				location.href = "/indexUserLogin";
    			
    		}
    		,error : function(jqXHR, textStatus, errorThrown){
    			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
    		}
    	});

// 		$("form[name=register]").attr("action", "/memberXdmList").submit();
// 		$("form[name=register]").attr("method","post");
    });
    
  $("#signUpBtn").on("click", function(){
		
		/* $("form[name=formList]").attr("method","get"); */

		$("form[name=form]").attr("action","/memberInsert").submit();
		/* $("form[name=formList]").attr("method","post"); */
		
		
	});
  
  $("#sales_btn").on("click", function(){
		
		/* $("form[name=formList]").attr("method","get"); */

		$("form[name=pageMenu]").attr("action","/sales").submit();
		/* $("form[name=formList]").attr("method","post"); */
		
		
	});
  
    
    </script>
</body>

</html>