<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>
	<h1>2001434 왕인성 (wis34)</h1>
	<br>
	<hr>
	<h1>회원가입</h1>
	<form method = "post" action = "../reg_models/reg_dao_wis34.jsp">
	<table>
	<tr>
	<th><label for = "id">아이디</label></th>
	<td><input id = "id" type="text" name="userID" required = "required"></td>
	</tr>
	<tr>
	<th><label for = "PW">비밀번호</label></th>
	<td><input id = "PW" type="password" name="userPW" required = "required"></td>
	</tr>
	<tr>
	<th><label for = "NAME">이름</label></th>
	<td><input id = "NAME" type="text" name="userName" required = "required"></td>
	</tr>
	<tr>
	<th><label for = "PHONE">전화번호</label></th>
	<td><input id = "PHONE" type="text" name="userPhone" required = "required"></td>
	</tr>
	<tr>
	<td><input type="hidden" name="actionType" value="JOIN">
	<input type="submit" value="제출"></td>
	</tr>
	</table>
	</form>
	<a href="./index_yjk12.jsp">홈으로 돌아가기</a>
</body>
</html>