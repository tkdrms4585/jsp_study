<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello World</title>
</head>
<body>
	<h2>Hello World</h2>
	<hr>
	현재 날짜와 시간은
	<%=java.time.LocalDateTime.now() %>
	입니다.
	<h1>고양이가 최고야!</h1>
	<hr>
	<img src="./img/고양이.jpg">
	
	<a href="http://www.naver.com">Go NAVER</a>
</body>
</html>