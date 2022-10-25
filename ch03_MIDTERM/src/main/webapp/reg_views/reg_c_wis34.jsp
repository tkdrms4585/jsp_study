<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<mata charset="UTF-8">
<title>wis34 입력</title>
</head>

<body>
	<h1>2001434 왕인성 (wis34)</h1>
	<!-- header.jsp 시작 -->
	<%@ include file="../header_wis34.jsp"%>
	<!-- header.jsp 끝 -->
	<jsp:include page="../main_wis34.jsp"/>
	<h3>현재 날짜 자동 저장</h3>
	<form method="post" action="../reg_models/reg_dao_wis34.jsp">
	<%
		if (session.isNew()) {
			session.setAttribute("loginState", "logout");
			session.setAttribute("userid", null);
			session.setAttribute("userpw", null);
		}
	%>
	<%
		String loginState = (String) session.getAttribute("loginState");
		String userName;
		String userPhone;
		if (loginState.equals("login")) {
	%>
		성명 <input type="text" name="name" value="<%=session.getAttribute("username")%>" required="required"><br>
		전화번호 <input type="text" name="phone" value="<%=session.getAttribute("userphone")%>" required="required"><br>
		<%
		} else {
		%>
		성명 <input type="text" name="name" required="required"><br>
		전화번호 <input type="text" name="phone" required="required"><br>
		<%
		}
		%>
		<label for="fever">발열현상 유무</label>
		<input id="feverO" type="radio" name="fever" value="O" required="required"> <label for="feverO">O</label>
		<input id="feverX" type="radio" name="fever" value="X" required="required"> <label for="feverX">X</label>
		<br>
		<label for="info">개인정보 수집, 제공 동의</label> 
		<input id="infoO" type="radio" name="agree_info" value="O" required="required"> <label for="infoO">O</label> 
		<input id="infoX" type="radio" name="agree_info" value="X" required="required"> <label for="infoX">X</label>
		<br>
		<input type="hidden" name="actionType" value="C">
		<br><input type="submit" value="저장">
	</form>
	<br><a href="../index_wis34.jsp">홈으로 돌아가기</a>
</body>
</html> 