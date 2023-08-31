<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>

<%
	String userid = request.getParameter("userid");
	String userpass = request.getParameter("userpass");
	String username = request.getParameter("username");
	String useremail = request.getParameter("useremail");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<p>아이디 : <%=userid %></p>
<p>이름 : <%=username %></p>
<p>패스워드 : <%=userpass %></p>
<p>이메일 : <%=useremail %></p>
<p>성별 : <%=gender %></p>
<p>취미 : <% 
	if(hobby != null){
		for(String h : hobby){
			out.println(h + ",");
		}
	}
%></p>


	

</body>
</html>