<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<mata charset="UTF-8">
<title>header</title>
</head>

<body>
	<%
	if (session.isNew()) {
		session.setAttribute("loginState", "logout");
		session.setAttribute("userid", null);
		session.setAttribute("userpw", null);
	}
	%>

	<%
	if (session.getAttribute("loginState").equals("login")) {
	%>
	<%=session.getAttribute("userid")%>님 안녕하세요.
	<form method="post" action="./reg_models/reg_dao_wis34.jsp">
		<input type="hidden" name="actionType" value="LOGOUT"> <input
			type="submit" value="로그아웃">
	</form>
	<%
	} else {
	%>
	<form action="./reg_models/reg_dao_wis34.jsp" method="post">
		아이디 : <input type="text" name="userid" size="10">
		비밀번호 : <input type="password" name="userpw" size="10">
		<input type="submit" value="로그인">
		<input type="hidden" name="actionType" value="LOGIN">
	</form>
	<button type="button" onclick="location.href='./reg_views/reg_join_wis34.jsp' ">회원가입</button>
	</form>
	<%
	}
	%>
	<hr>
</body>
</html>