<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<mata charset="UTF-8">
<title>중간고사 wis34</title>
</head>

<body>
	<h1>2001434 왕인성 (wis34)</h1>
	<hr>
	<%
	String driverName = "org.mariadb.jdbc.Driver";
	String url = "jdbc:mariadb://localhost/reg_wis34";
	String user = "root";
	String passwd = "root";

	Class.forName(driverName);
	Connection con = DriverManager.getConnection(url, user, passwd);
	Statement stmt = con.createStatement(); // sql문을 처리하기 위해 있는 부분
	request.setCharacterEncoding("utf-8"); // 리퀘스트 받은 문자열을 처리하는 인코딩 포멧
	PreparedStatement pstmt = null;

	// session
	String userID = null;
	String userPW = null;
	String userName = null;
	String userPhone = null;
	
	String actionType = request.getParameter("actionType");
	int num;
	String date;
	String time;
	String name;
	String phone;
	String agree_info;
	String fever;

	String sql;
	int result;
	String msg = "실행결과 : ";
	
	
	switch (actionType) {
	case "LOGIN":
		userID = request.getParameter("userid");
	    userPW = request.getParameter("userpw");
	    sql = "SELECT * FROM mem_reg_wis34 WHERE userID = ? AND userPW = ?";
	    pstmt = con.prepareStatement(sql);
	    
	    pstmt.setString(1, userID);
	    pstmt.setString(2, userPW);
	    
	    ResultSet rs = pstmt.executeQuery();
	    
	    if (rs.next()) {
	   		session.setAttribute("loginState", "login");
	   		session.setAttribute("userid", userID);
	   		session.setAttribute("userpw", userPW);
	   		session.setAttribute("username", rs.getString("userName"));
	   		session.setAttribute("userphone", rs.getString("userPhone"));
	   		msg = "로그인되었습니다.";
	    } else {
    		session.setAttribute("loginState", "loginError");
    		session.setAttribute("userid", "");
    		session.setAttribute("userpw", "");
	    	msg = "정보가 일치하지 않습니다.";
	    }
		break;
	
	case "LOGOUT":
		session.setAttribute("userid", null);
		session.setAttribute("userpw", null);
		session.setAttribute("loginState", "logout");
		msg = "로그아웃 되었습니다.";
		break;
		
	case "JOIN":
		userID = request.getParameter("userID");
		userPW = request.getParameter("userPW");
		userName = request.getParameter("userName");
		userPhone = request.getParameter("userPhone");
		
		sql = "INSERT INTO mem_reg_wis34 (userID, userPW, userName, userPhone) VALUES (?, ?, ?, ?);";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, userID);
		pstmt.setString(2, userPW);
		pstmt.setString(3, userName);
		pstmt.setString(4, userPhone);
		result = pstmt.executeUpdate();
		
		if (result == 1) {
			msg = "회원가입 성공";
		} else {
			msg = "회원가입 실패";
		}
		
		break;
		
	case "C":
		name = request.getParameter("name");
		phone = request.getParameter("phone");
		agree_info = request.getParameter("agree_info");
		fever = request.getParameter("fever");

		sql = "INSERT INTO cv_reg_wis34(name, phone, agree_info, fever) VALUES";
		sql += "('"+ name + "','" + phone + "','" + agree_info + "','" + fever + "')";

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
		num = Integer.parseInt(request.getParameter("num"));
		
		sql = "UPDATE cv_reg_wis34 SET ";
		sql += "name='" + request.getParameter("name");
		sql += "',phone='" + request.getParameter("phone");
		sql += "', agree_info='" + request.getParameter("agree_info");
		sql += "', fever='" + request.getParameter("fever");
		sql += "' WHERE num=" + num;

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
		num = Integer.parseInt(request.getParameter("num"));
		sql = "DELETE FROM cv_reg_wis34 WHERE num = '" +  num + "'";

		System.out.println(sql);

		result = stmt.executeUpdate(sql);
		if (result == 1) {
			System.out.println("레코드 삭제 성공");
			msg += "레코드 삭제 성공";
		} else {
			System.out.println("레코드 삭제 실패");
			msg += "레코드 삭제 실패";
		}
		break;
		
	case "SD":
		
		sql = "DELETE FROM cv_reg_wis34 WHERE date < DATE_ADD(NOW(), INTERVAL -28 day)";
		pstmt = con.prepareStatement(sql);
		System.out.println(sql);
		result = pstmt.executeUpdate();

		if (result > 0) {
			System.out.println("레코드 삭제 성공");
			msg += "레코드 삭제 성공";
		} else {
			System.out.println("레코드 삭제 실패");
			msg += "4주 이상 데이터가 없습니다.";
		}
		break;
	}
	%>
	<h2><%=msg %></h2>
	<br><a href="../index_wis34.jsp">홈으로 돌아가기</a>
</body>
</html>