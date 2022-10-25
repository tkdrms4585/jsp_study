<!-- html의 기본적인 정보 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- sql을 사용하기 위한 import -->
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서적관리 시스템_페이징</title>
</head>

<body>
	<h1>서적관리 시스템 - 조회2(R2_페이징)</h1>
	<hr>
	<h2>전체보기(부분조회 미포함, 페이징기능 포함)</h2>
	
	<%
	// db 연동
	String driverName = "org.mariadb.jdbc.Driver";
	String url = "jdbc:mariadb://localhost/book_db";
	String user = "root";
	String passwd = "root";
	
	int range = 0;
	Class.forName(driverName);
	Connection con = DriverManager.getConnection(url, user, passwd);
	Statement stmt = con.createStatement(); // sql문을 처리하기 위해 있는 부분
	request.setCharacterEncoding("utf-8"); // 리퀘스트 받은 문자열을 처리하는 인코딩 포멧

	// 현재 db에 있는 책(데이터) 수를 파악
	String sql2 = "SELECT count(*) FROM books";
	ResultSet rs2 = stmt.executeQuery(sql2);

	int recordCnt = 0; // 페이징 나눌 양
	int pageCnt; // 페이지 수

	while (rs2.next()) {
		recordCnt = rs2.getInt(1); // 쿼리 결과(데이터 수) 저장
	}
	
	pageCnt = recordCnt/10; // 몇개의 페이지가 나올지 640 / 10 = 64
	
	if(recordCnt%10 != 0)
		pageCnt++; // 데이터가 10이하라면 한페이지로 표현가능

	// 변수 초기 세팅
	int book_id;
	String title;
	String publisher;
	String year;
	int price;
	
	int startRecord = 0; // 시작 페이지
	int limitCnt = 10; // 분할 단위
	int currentPageNo; // 현재 페이지 번호
	
	currentPageNo = Integer.parseInt(request.getParameter("currentPageNo"));
	startRecord = currentPageNo * 10;
	
	String sql = "SELECT * FROM books ORDER BY book_id limit ";
	sql += startRecord + "," + limitCnt;
	
	ResultSet rs = stmt.executeQuery(sql);
	%>
	
	<table border="1">
		<thead>
			<tr>
				<th>순번</th>
				<th>제목</th>
				<th>출판사</th>
				<th>출판년도</th>
				<th>가격</th>
			</tr>
		</thead>
		<tbody>
		<%
			// 쿼리 결과를 변수에 저장
			while(rs.next()) {
				book_id = rs.getInt("book_id");
				title = rs.getString("title");
				publisher = rs.getString("publisher");
				year = rs.getString("year");
				price = rs.getInt("price");
			// 여기서 while 문을 닫으면 밑에 테이블에 데이터를 입력 불가
		%>
		<!-- 위 쿼리 결과를 변수에 저장한 것을 사용하여
			아래 테이블에 값을 입력 -->
			<tr>
				<td><%=book_id%></td>
				<td><%=title%></td>
				<td><%=publisher%></td>
				<td><%=year%></td>
				<td><%=price%></td>
			</tr>
		<%
			} // 테이블 생성 자체를 반복문을 돌리는 것이기 때문에 여기서 while 문 종료
		%>
		</tbody>
	</table>
	<br>
	<!-- 첫페이지로 이동하는 하이퍼링크 -->
	<a href="./book_r2.jsp?currentPageNo=0">[FIRST]</a>
	
<% // 현재 페이지가 0보다 크다면
	if(currentPageNo > 0) {
%>
	<!-- 이전 페이지로 가는 하이퍼링크 생성 -->
	<a href="./book_r2.jsp?currentPageNo=<%=(currentPageNo - 1) %>">[PRE]</a>
<% // 페이지 번호가 0이면 이전페이지가 존재 x
	} else {
%>
	<!-- [PRE] 외형만 생성 -->
	[PRE]
<%
	}

	// 현재 페이지는 하이퍼링크 x 다른 페이지는 이동할 수 있는 링크
	for(int i = 0; i < pageCnt; i++) {
		if(i == currentPageNo) {
%> 
			[<%=(i + 1) %>]
			
<%
		} else {
%>
			<a href="./book_r2.jsp?currentPageNo=<%=i %>">[<%=(i+1)%>]</a>
<%
		}
	}
%>

<%
	// 마지막 페이지가 아니면 [NEXT] 하이퍼링크 활성화
	if(currentPageNo < pageCnt - 1) {
%>
	<a href="./book_r2.jsp?currentPageNo=<%=(currentPageNo + 1) %>">[NEXT]</a>
<%
	} else {
%>
	[NEXT]
<%
	}
%>
	<a href="./book_r2.jsp?currentPageNo=<%=(pageCnt - 1) %>">[END]</a>
	<br><br>
	<a href="./index.jsp">홈으로 돌아가기</a>
</body>
</html>