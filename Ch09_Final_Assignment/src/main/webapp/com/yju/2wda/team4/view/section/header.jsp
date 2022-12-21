<%@page import="wis34_Final_Assignment.model.artholic.userDTO"%>
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

	<!--로고-->
	<header>
		<a href="/wis34_Final_Assignment">
			<h1 id="logo">ART HOLIC</h1>
		</a>
	</header>

<%
	
	if (session.getAttribute("alert") != null) {
		%>
		<script>
			alert("<%=session.getAttribute("alert")%>")
		</script>
		<%
		session.setAttribute("alert", null);
	}
%>

<%
	if(session.getAttribute("loginInfo") == null) {
%>
	<div style="float :right">
		<form action="./login.be" method="post">
			<input type="text" placeholder="ID" name="id" maxlength="20">
			<input type="password" placeholder="password" name="password" maxlength="20">
			<input type="submit" value="로그인">
			<button type="button" onclick="location.href='/wis34_Final_Assignment/com/yju/2wda/team4/view/section/singin.jsp' " style="margin-right:70px">회원가입</button>
		</form>
	</div>
<%	
	} else {
%>	
	<div style="float :right">
	<span id="spantext"><%=((userDTO)session.getAttribute("loginInfo")).getName()%>님 🤗</span>
	<form action="./logout.be" method="post">
		<%
			if(((userDTO)session.getAttribute("loginInfo")).getGrade() == 100) {
		%>
			<input type="submit" value="로그아웃" style="margin-right:70px">
		<%		
			} else if (((userDTO)session.getAttribute("loginInfo")).getGrade() > 100) {
		%>
			<input type="submit" value="로그아웃">
		<%
			}
			
			if(((userDTO)session.getAttribute("loginInfo")).getGrade() == 200) {
		%>
			<button type="button" onclick="location.href='/wis34_Final_Assignment/com/yju/2wda/team4/view/artholic/createIntroduce.jsp' " style="margin-right:70px">게시글 작성</button>
		<%		
			} else if (((userDTO)session.getAttribute("loginInfo")).getGrade() > 200) {
		%>
			<button type="button" onclick="location.href='/wis34_Final_Assignment/com/yju/2wda/team4/view/artholic/createIntroduce.jsp' ">게시글 작성</button>
		<%
			}
		%>
		
		<%
			if(((userDTO)session.getAttribute("loginInfo")).getGrade() == 300) {
		%>
			<button type="button" onclick="location.href='/wis34_Final_Assignment/com/yju/2wda/team4/view/artholic/userControl.jsp' " style="margin-right:70px">회원 관리</button>
		<%		
			}
		%>
	</form>
	</div>
	<br>

<%
	}
%>




</body>
</html>