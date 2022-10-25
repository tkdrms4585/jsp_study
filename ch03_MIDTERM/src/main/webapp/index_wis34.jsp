<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<mata charset="UTF-8">
<title>중간고사 wis34</title>
</head>

<body>
	<h1>2001434 왕인성 (wis34)</h1>
	<!-- header.jsp 시작 -->
	<%@ include file="./header_wis34.jsp"%>
	<!-- header.jsp 끝 -->
	<jsp:include page="./main_wis34.jsp"/>
	
	<li><a href="./reg_views/reg_c_wis34.jsp">입력(C)</a>
	<li><a href="./reg_views/reg_r_wis34.jsp?currentPageNo=0&limitCnt=10">조회 및 수정, 삭제</a>
	
</body>
</html>