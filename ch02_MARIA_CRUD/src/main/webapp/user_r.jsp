<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<mata charset="UTF-8">
<title>로그인</title>
<!-- 부트스트랩 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
	<!-- Vue.js -->
<script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script>
</head>
<body class="text-center">
<%
	String user_id= "test";
	String passwd= "test";
%>
<form method="post" action="./user_dao.jsp">
<h3>로그인 페이지</h3>
	<div class="form-floating col-md-6">
		<input type="text" class="form-control " name="id"/>
		<label for="id">아이디</label>
	</div>
	<div class="form-floating">
		<input type="password" class="form-control col-md-6" name="password" />
		<label for="password">비밀번호</label>
	</div>
	<button type="submit" class="btn btn-primary btn-sm">로그인</button>
</form>
</body>
</html>