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
 <header id="sales_management_header">
        <div class="first_top_logo">
            <img src="/resources/assets/img/pree_pos2.png" alt="">
        </div>
        <div class="header_right">
            <h2>매장명 : 한성국밥(부평점)</h2>
            <h2>포스번호 : 02</h2>
            <h2>영업일자 : 2023-06-02</h2>
            <h2><span id="currentDateTime"></span></h2>
        </div>
        <button class="close_btn button_index2">X</button>
    </header>
    <div id="pos2_main">
        <div id="pos2_table_box">
            <div class="hole_tab">홀</div>
            <div class="reservation_tab">예약접수</div>
            <div class="print_receipt_tab">영수증 출력</div>
            <div class="inventory_management_tab">재고관리</div>
            <div class="pos2_hole_line1">
                <table class="pos2_table pos_num_1">
                    <thead>
                      <tr>
                        <th colspan="3" class="table_header">1</th>
                      </tr>
                    </thead>
                    <tbody id="Table1" class="orderDetails">
                      <tr>
                        <td id="menuName"></td>
                        <td id="quantity"></td>
                        <td id="totalAmount"></td>
                      </tr>
                    </tbody>
                  </table>
                  <table class="pos2_table pos_num_2">
                    <thead>
                      <tr>
                        <th colspan="3" class="table_header">2</th>
                      </tr>
                    </thead>
                    <tbody id="Table2" class="orderDetails">
                      <tr>
                        <td id="menuName"></td>
                        <td id="quantity"></td>
                        <td id="totalAmount"></td>
                      </tr>
                    </tbody>
                  </table>
                  <table class="pos2_table pos_num_3">
                    <thead>
                      <tr>
                        <th colspan="3" class="table_header">3</th>
                      </tr>
                    </thead>
                    <tbody id="Table3" class="orderDetails">
                      <tr>
                        <td id="menuName"></td>
                        <td id="quantity"></td>
                        <td id="totalAmount"></td>
                      </tr>
                    </tbody>
                  </table>
                  <table class="pos2_table pos_num_4">
                    <thead>
                      <tr>
                        <th colspan="3" class="table_header">4</th>
                      </tr>
                    </thead>
                    <tbody id="Table4" class="orderDetails">
                      <tr>
                        <td id="menuName"></td>
                        <td id="quantity"></td>
                        <td id="totalAmount"></td>
                      </tr>
                    </tbody>
                  </table>
                  <table class="pos2_table pos_num_5">
                    <thead>
                      <tr>
                        <th colspan="3" class="table_header">5</th>
                      </tr>
                    </thead>
                    <tbody id="Table5" class="orderDetails">
                      <tr>
                        <td id="menuName"></td>
                        <td id="quantity"></td>
                        <td id="totalAmount"></td>
                      </tr>
                    </tbody>
                  </table>
            </div>
            <div class="pos2_hole_line2">
                <table class="pos2_table pos_num_6">
                    <thead>
                      <tr>
                        <th colspan="3" class="table_header">6</th>
                      </tr>
                    </thead>
                    <tbody id="Table6" class="orderDetails">
                      <tr>
                        <td id="menuName"></td>
                        <td id="quantity"></td>
                        <td id="totalAmount"></td>
                      </tr>
                    </tbody>
                  </table>
                  <table class="pos2_table pos_num_7">
                    <thead>
                      <tr>
                        <th colspan="3" class="table_header">7</th>
                      </tr>
                    </thead>
                    <tbody id="Table7" class="orderDetails">
                      <tr>
                        <td id="menuName"></td>
                        <td id="quantity"></td>
                        <td id="totalAmount"></td>
                      </tr>
                    </tbody>
                  </table>
            </div>
            <div class="pos2_hole_line3">
                <table class="pos2_table pos_num_8">
                    <thead>
                      <tr>
                        <th colspan="3" class="table_header">8</th>
                      </tr>
                    </thead>
                    <tbody id="Table8" class="orderDetails">
                      <tr>
                        <td id="menuName"></td>
                        <td id="quantity"></td>
                        <td id="totalAmount"></td>
                      </tr>
                    </tbody>
                  </table>
                  <table class="pos2_table pos_num_9">
                    <thead>
                      <tr>
                        <th colspan="3" class="table_header">9</th>
                      </tr>
                    </thead>
                    <tbody id="Table9" class="orderDetails">
                      <tr>
                        <td id="menuName"></td>
                        <td id="quantity"></td>
                        <td id="totalAmount"></td>
                      </tr>
                    </tbody>
                  </table>
                  <table class="pos2_table pos_num_10">
                    <thead>
                      <tr>
                        <th colspan="3" class="table_header">10</th>
                      </tr>
                    </thead>
                    <tbody id="Table10" class="orderDetails">
                      <tr>
                        <td id="menuName"></td>
                        <td id="quantity"></td>
                        <td id="totalAmount"></td>
                      </tr>
                    </tbody>
                  </table>
                  <table class="pos2_table pos_num_11">
                    <thead>
                      <tr>
                        <th colspan="3" class="table_header">11</th>
                      </tr>
                    </thead>
                    <tbody id="Table11" class="orderDetails">
                      <tr>
                        <td id="menuName"></td>
                        <td id="quantity"></td>
                        <td id="totalAmount"></td>
                      </tr>
                    </tbody>
                  </table>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    
    
    
    </script>
</body>

</html>