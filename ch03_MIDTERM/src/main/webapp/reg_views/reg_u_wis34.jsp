<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<mata charset="UTF-8">
<title>중간고사 wis34</title>
</head>

<body>
	<%
	String driverName = "org.mariadb.jdbc.Driver";
	String url = "jdbc:mariadb://localhost/reg_wis34";
	String user = "root";
	String passwd = "root";

	Class.forName(driverName);
	Connection con = DriverManager.getConnection(url, user, passwd);
	Statement stmt = con.createStatement(); // sql문을 처리하기 위해 있는 부분
	request.setCharacterEncoding("utf-8"); // 리퀘스트 받은 문자열을 처리하는 인코딩 포멧
	%>

	<%
	int num = Integer.parseInt(request.getParameter("num"));
	String date="";
	String time="";
	String name="";
	String phone="";
	String agree_info="";
	String fever="";

	String sql = "SELECT * FROM cv_reg_wis34 where num=" + num;
	ResultSet rs = stmt.executeQuery(sql);
	System.out.println(num);
	%>
	<%
	while (rs.next()) {
		date = rs.getString("date");
		time = rs.getString("time");
		name = rs.getString("name");
		phone = rs.getString("phone");
		agree_info = rs.getString("agree_info");
		fever = rs.getString("fever");
		if(date.length() >20)
			date = date.substring(5, 10);
		if(time.length() >20)
		time = time.substring(11, 16);
		
		System.out.println(date);
	}
	%>
	<h1>2001434 왕인성 (wis34)</h1>
	<hr>
	<form method="post" action="../reg_models/reg_dao_wis34.jsp">
		<label for="date">날짜</label> 
		<input type="text" id="date" name="date" size="30" value="<%=date%>" readonly><br>
		<label for="time">방문 시각</label> 
		<input type="text" id=time name="time" size="30" value="<%=time%>" readonly><br>
		
		<label for="name">성명</label> 
		<input type="text" id="name" name="name" size="30" value="<%=name%>"><br>
		<label for="phone">전화번호</label> 
		<input type="text" id="phone" name="phone" size="30" value="<%=phone%>"><br>
		<label for="fever">발열 현상</label> 
		<input type="text" id="fever" name="fever" size="30" value="<%=fever%>"><br>
		<label for="agree_info">개인정보 수집,제공 동의</label> 
		<input type="text" id="agree_info" name="agree_info" size="30" value="<%=agree_info%>"><br>
		
		<input type="hidden" name="num" value="<%=num%>">
		<input type="hidden" name="actionType" value="U">
		<br><input type="submit" value="저장">
	</form>
	<br>
	<a href="../index_wis34.jsp">홈으로 돌아가기</a>
</body>
</html>