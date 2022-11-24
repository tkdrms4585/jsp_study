<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
		<a href="<%=rootDir %>/index.jsp"> 
		<img src="<%=logoDir %>/logo1.png" width="30%" height="30%" /></a>

		<%
		if (session.isNew()) {
			session.setAttribute("loginState", "logout");
			session.setAttribute("user_num", 0);
			session.setAttribute("user_name", null);
			session.setAttribute("user_class", 0);
			session.setAttribute("alert", null);
		}
		if (session.getAttribute("loginState").equals("login")) {
		%>
		<span id="spantext"><%=session.getAttribute("user_name")%>님 🤗</span>
		<form name="logout" method="post"
			action="/P01_MEMBER/mem_models/member_dao.jsp">
			<input type="hidden" name="actionType" value="LOGOUT"> <input
				class="btn btn-outline-success m-2" type="submit" value="로그아웃">
		</form>
		<%
		} else {
		%>
		<form name="login" method="post"
			action="/P01_MEMBER/mem_models/member_dao.jsp">
			<span id="spantext">아이디 : </span><input class="m-2" type="text"
				name="userid" size="10"> <span id="spantext">비밀번호 : </span><input
				class="m-2" type="password" name="passwd" size="10"> <input
				type="hidden" name="actionType" value="LOGIN"> <input
				class="btn btn-outline-success m-2" type="submit" value="로그인">
		</form>
		<button class="btn btn-outline-success m-1" type="button"
			onclick="location.href='/P01_MEMBER/mem_views/mem_join.jsp' ">회원가입</button>
				<%
	if (session.getAttribute("alert") != null) {
	%>
	<script>alert('<%=session.getAttribute("alert")%>')</script>
	<%
	session.setAttribute("alert", null);
	}
	%>
		
		<%
		if (session.getAttribute("loginState").equals("errorID")) {
			out.print("아이디가 존재하지 않습니다.");
		}

		if (session.getAttribute("loginState").equals("errorPW")) {
			out.print("비밀번호를 확인해 주세요.");
		}
		}
		%>
		<%
		if (session.getAttribute("loginState").equals("login")) {
		%>
		<%@ include file="./GNB.jsp"%>
		<%
		}
		%>
	</table>
</body>
</html>