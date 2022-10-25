<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<mata charset="UTF-8">
<title>서적관리 시스템_수정</title>
</head>

<body>
<%
	String driverName = "org.mariadb.jdbc.Driver";
	String url = "jdbc:mariadb://localhost/book_db";
	String user = "root";
	String passwd = "root";

	Class.forName(driverName);
	Connection con = DriverManager.getConnection(url, user, passwd);
	Statement stmt = con.createStatement(); // sql문을 처리하기 위해 있는 부분
	request.setCharacterEncoding("utf-8"); // 리퀘스트 받은 문자열을 처리하는 인코딩 포멧
	%>
	
	<%
	int book_id = Integer.parseInt(request.getParameter("book_id"));
	String title= null;
	String publisher=null;
	String year=null;
	int price=0;
	
	String sql = "SELECT * FROM books where book_id="+ book_id;
	ResultSet rs = stmt.executeQuery(sql);
	%>
	<%
	while (rs.next()) {
		title = rs.getString("title");
		publisher = rs.getString("publisher");
		year = rs.getString("year");
		price = rs.getInt("price");
	}
	%>
	<h1>서적관리시스템 - 자료수정(U2)</h1>
	<hr>
	<form method="post" action="./book_dao.jsp">
		<br>서적번호(수정불가) : <input type="text" name="book_id" size="30"	value="<%=book_id%>" readonly /> 
		<br>서적명 : <input type="text" name="title" size="30" value="<%=title%>">
		<br>출판사 : <input type="text" name="publisher" size="30" value="<%=publisher%>" /> 
		<br>출판년도 : <input type="text" name="year" size="30" value="<%=year%>" /> 
		<br>가격 : <input type="text" name="price" size="30" value="<%=price%>" /> 
		<br> <input	type="hidden" name="actionType" value="U" /> 
		<br> <input	type="submit" value="수정">
	</form>
	<br>
	<a href="./index.jsp">홈으로 돌아가기</a>
</body>
</html>