<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<mata charset="UTF-8">
<title>서적관리 시스템_인성</title>
</head>

<body>
	<h1>서적관리시스템 - 데이터베이스 처리 부분</h1>
	<hr>
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
	String actionType = request.getParameter("actionType");
	int book_id;
	String title;
	String publisher;
	String year;
	int price;

	String sql;
	int result;
	String msg = "실행결과 : ";
	

	switch (actionType) {
	case "C":
// 위 코드 4줄 있던자리
		title = request.getParameter("title");
		publisher = request.getParameter("publisher");
		year = request.getParameter("year");
		price = Integer.parseInt(request.getParameter("price"));

		sql = "INSERT INTO books (title, publisher, year, price) VALUES";
		sql += "('" + title + "','" + publisher + "','" + year + "','" + price + "')";

		System.out.println(sql);

		result = stmt.executeUpdate(sql);
		if (result == 1) {
			System.out.println("레코드 추가 성공");
			msg += "레코드 추가 성공";
		} else {
			System.out.println("레코드 추가 실패");
			msg += "레코드 추가 실패";
		}
		break;
		
	case "U":
		book_id = Integer.parseInt(request.getParameter("book_id"));
		
		sql = "UPDATE books SET ";
		sql += "title='" + request.getParameter("title");
		sql += "',publisher='" + request.getParameter("publisher");
		sql += "', year='" + request.getParameter("year");
		sql += "', price='" + Integer.parseInt(request.getParameter("price"));
		sql += " WHERE book_id=" + book_id;

		System.out.println(sql);

		result = stmt.executeUpdate(sql);
		if (result == 1) {
			System.out.println("레코드 수정 성공");
			msg += "레코드 수정 성공";
		} else {
			System.out.println("레코드 수정 실패");
			msg += "레코드 수정 실패";
		}
		break;
		
	case "D":
		book_id = Integer.parseInt(request.getParameter("book_id"));
		sql = "DELETE FROM books WHERE book_id = '" +  book_id + "'";

		//System.out.println(sql);

		result = stmt.executeUpdate(sql);
		if (result == 1) {
			System.out.println("레코드 삭제 성공");
			msg += "레코드 삭제 성공";
		} else {
			System.out.println("레코드 삭제 실패");
			msg += "레코드 삭제 실패";
		}
		break;
	}
	%>
	<h2><%=msg %></h2>
	<br><a href="./index.jsp">홈으로 돌아가기</a>
</body>
</html>