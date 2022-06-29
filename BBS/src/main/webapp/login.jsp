<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h3>로그인</h3>
	<form method="post" action="loginAction.jsp">
	<input type="text" name="userID" placeholder="아이디" />
	<input type="password" name="userPassword" placeholder="비밀번호" />
	<button type="submit">로그인</button>
	</form>
</body>
</html>