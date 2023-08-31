<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>
*{box-sizing:border-box;}
.container{
	width: 800px;
	margin: 30px auto;
	border : 1px solid #999;
	padding: 40px;
}

.text-center{
	text-align:center;
	
}
h1{
	font-size : 40px;
}
</style>
</head>
<body>
	<h1 class="text-center">회원가입</h1>
	<div class="container">
		<form action="joinok.jsp" method="post">
			<ul>
				<li>
					<span>아이디</span>
					<input type="text" name="userid"/>
				</li>
				<li>
					<span>비밀번호</span>
					<input type="text" name="userpass"/>
				</li>
				<li>
					<span>이름</span>
					<input type="text" name="username"/>
				</li>
				<li>
					<span>이메일</span>
					<input type="text" name="useremail"/>
				</li>
				<li>
					<span>성별</span>
					<label><input type="radio" name="gender" value="여자"/>여자</label>
					<label><input type="radio" name="gender" value="남자"/>남자</label>
					
				</li>
				<li>
					<span>취미</span>
					<label><input type="checkbox" name="hobby" value="등산"/>등산</label>
					<label><input type="checkbox" name="hobby" value="운동"/>운동</label>
					<label><input type="checkbox" name="hobby" value="독서"/>독서</label>
					<label><input type="checkbox" name="hobby" value="컴퓨터"/>컴퓨터</label>
					<label><input type="checkbox" name="hobby" value="게임"/>게임</label>
					<label><input type="checkbox" name="hobby" value="누워있기"/>누워있기</label>
				</li>
			</ul>
			<p class="text-center"><button type="submit">가입하기</button></p>
		</form>
	</div>

</body>
</html>