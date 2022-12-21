<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	a {
		text-decoration: none; /* 링크의 밑줄 제거 */
  		color: inherit; /* 링크의 색상 제거 */
  	}
</style>
</head>
<body>
<%
if (session.getAttribute("alert") != null || session.getAttribute("alert").equals("")) {
	%>
	<script>
		alert("<%=session.getAttribute("alert")%>
		")
	</script>
	<%
	session.setAttribute("alert", null);
}
%>
	<!--로고-->
	<header>
		<a href="/wis34_Final_Assignment">
			<h1 id="logo">ART HOLIC</h1>
		</a>
	</header>
	<div style="float :right">
		<form action="./login.be" method="post">
			<input type="text" placeholder="ID" name="id" maxlength="20">
			<input type="password" placeholder="password" name="password" maxlength="20">
			<input type="submit" value="로그인">
			<button type="button" onclick="location.href='/wis34_Final_Assignment/com/yju/2wda/team4/view/section/singin.jsp' " style="margin-right:70px">회원가입</button>
		</form>
	</div>

</body>
</html>