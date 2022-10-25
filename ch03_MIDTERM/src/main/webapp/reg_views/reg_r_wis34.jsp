<!-- html의 기본적인 정보 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- sql을 사용하기 위한 import -->
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<mata charset="UTF-8">
<title>중간고사 wis34</title>
</head>

<body>
	<%
	// db 연동
	String driverName = "org.mariadb.jdbc.Driver";
	String url = "jdbc:mariadb://localhost/reg_wis34";
	String user = "root";
	String passwd = "root";

	Class.forName(driverName);
	Connection con = DriverManager.getConnection(url, user, passwd);
	Statement stmt = con.createStatement(); // sql문을 처리하기 위해 있는 부분
	request.setCharacterEncoding("utf-8"); // 리퀘스트 받은 문자열을 처리하는 인코딩 포멧
	
	String condition = request.getParameter("condition");
	if (condition == null) condition = "";
	
	// 현재 db에 있는 책(데이터) 수를 파악
	String sql2 = "";
	
	if (condition.equals("con_O")) {
		sql2 = "SELECT count(*) FROM cv_reg_wis34 WHERE fever='O' ORDER BY num";
	} else if (condition.equals("con_X")) {
		sql2 = "SELECT count(*) FROM cv_reg_wis34 WHERE fever='X' ORDER BY num";
	} else {
		sql2 = "SELECT count(*) FROM cv_reg_wis34 ORDER BY num";
	}
	
	ResultSet rs2 = stmt.executeQuery(sql2);

	int recordCnt = 0; // 페이징 나눌 양
	int pageCnt; // 페이지 수
	int limitCnt = Integer.parseInt(request.getParameter("limitCnt")); // 레코드 수
	
	
	
	while (rs2.next()) {
		recordCnt = rs2.getInt(1); // 쿼리 결과(데이터 수) 저장
	}
	
	pageCnt = recordCnt/limitCnt;
	
	if(recordCnt%limitCnt != 0)
		pageCnt++; // 페이지 단위로 나누었을때 딱 떨어지지 않으면 한 페이지 더 생성

	// 변수 초기 세팅
	int num;
	String date;
	String time;
	String name;
	String phone;
	String agree_info;
	String fever;
	
	int startRecord = 0; // 시작 페이지
	int currentPageNo; // 현재 페이지 번호
	
	currentPageNo = Integer.parseInt(request.getParameter("currentPageNo"));
	startRecord = currentPageNo * limitCnt;
	
	int pageN = 0; // 페이지 핸들링 변수 시작 페이지의 값을 가지고 있다.
	if (currentPageNo >= 10){
		pageN = currentPageNo / 10 * 10;
	}
	
	String sql = "";
	
	if (condition.equals("con_O")) {
		sql = "SELECT * FROM cv_reg_wis34 WHERE fever='O' ORDER BY num limit ";
	} else if (condition.equals("con_X")) {
		sql = "SELECT * FROM cv_reg_wis34 WHERE fever='X' ORDER BY num limit ";
	} else {
		sql = "SELECT * FROM cv_reg_wis34 ORDER BY num limit ";
	}
	
	sql += startRecord + "," + limitCnt;
	
	ResultSet rs = stmt.executeQuery(sql);
	
	
	
	
	
	%>
	
	<h1>2001434 왕인성 (wis34)</h1>
	<!-- header.jsp 시작 -->
	<%@ include file="../header_wis34.jsp"%>
	<!-- header.jsp 끝 -->
	<jsp:include page="../main_wis34.jsp"/>
	<!-- pageRange(레코드 수) 콤보박스 적용 -->
	<form method="post" action="./reg_r_wis34.jsp" id="combo">
		<p> 디스플레이 레코드 수 변경 : 
			<select name="limitCnt" form="combo">
			    <option value="10">10</option>
			    <option value="20">20</option>
			    <option value="50" >50</option>
			    <option value="100">100</option>
			</select>
			<input type="hidden" name="currentPageNo" value="0">
			<input type="submit" value="확인">
		</p>
		<p>발열현상 조건 조회 : 
			<select name="condition">
				<option value="">기본 조회</option>
				<option value="con_O">발열현상 O인 사람 조회</option>
				<option value="con_X">발열현상 X인 사람 조회</option>
			</select>
			<input type="submit" value="확인">
		</p>
	</form>
	<table border="1">
		<thead>
			<tr>
				<th>날짜</th>
				<th>방문시각</th>
				<th>성명</th>
				<th>전화번호</th>
				<th>개인정보<br>수집,제공 동의</th>
				<th>발열현상 유무</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%
			// 쿼리 결과를 변수에 저장
			while(rs.next()) {
				num = rs.getInt("num");
				date = rs.getString("date");
				time = rs.getString("time");
				name = rs.getString("name");
				phone = rs.getString("phone");
				agree_info = rs.getString("agree_info");
				fever = rs.getString("fever");
				
				date = date.substring(5, 10);
				time = time.substring(11, 16);
				
		%>
		<!-- 위 쿼리 결과를 변수에 저장한 것을 사용하여
			아래 테이블에 값을 입력 -->
			<tr>
				<td><%=date%></td>
				<td><%=time%></td>
				<td><%=name%></td>
				<td><%=phone%></td>
				<td><%=agree_info%></td>
				<td><%=fever%></td>
				<td><a href="./reg_u_wis34.jsp?num=<%=num%>"> 수정 </a></td>
				<td><a href="../reg_models/reg_dao_wis34.jsp?actionType=D&num=<%=num%>"> 삭제 </a></td>
			</tr>
		<%
			} // 테이블 생성 자체를 반복문을 돌리는 것이기 때문에 여기서 while 문 종료
		%>
		</tbody>
	</table>
	<br>
	<!-- 첫페이지로 이동하는 하이퍼링크 -->
	<a href="./reg_r_wis34.jsp?currentPageNo=0&limitCnt=<%=limitCnt%>">[FIRST]</a>
	
<% // 현재 페이지가 0보다 크다면
	if(currentPageNo > 0) {
%>
	<!-- 이전 페이지로 가는 하이퍼링크 생성 -->
	<a href="./reg_r_wis34.jsp?currentPageNo=<%=(currentPageNo - 1) %>&limitCnt=<%=limitCnt%>">[PRE]</a>
<% // 페이지 번호가 0이면 이전페이지가 존재 x
	} else {
%>
	<!-- [PRE] 외형만 생성 -->
	[PRE]
<%
	}

	// 현재 페이지는 하이퍼링크 x 다른 페이지는 이동할 수 있는 링크
	for(int i = pageN; i < pageN+10; i++) {
		if(i == currentPageNo) {
%> 
			[<%=(i + 1) %>]
			
<%
		} else if (i < pageCnt) {
%>
			<a href="./reg_r_wis34.jsp?currentPageNo=<%=i %>&limitCnt=<%=limitCnt%>">[<%=(i+1)%>]</a>
<%
		}
		
	}
%>

<%
	// 마지막 페이지가 아니면 [NEXT] 하이퍼링크 활성화
	if(currentPageNo < pageCnt - 1) {
%>
	<a href="./reg_r_wis34.jsp?currentPageNo=<%=(currentPageNo + 1) %>&limitCnt=<%=limitCnt%>">[NEXT]</a>
<%
	} else {
%>
	[NEXT]
<%
	}
%>
	<a href="./reg_r_wis34.jsp?currentPageNo=<%=(pageCnt - 1) %>&limitCnt=<%=limitCnt%>">[END]</a>
	<br><br>
	
	<form method="post" action="../reg_models/reg_dao_wis34.jsp">
		<input type="hidden" name="actionType" value="SD">
		<input type="submit" value="4주 이상 데이터 삭제">
	</form>
	<a href="../index_wis34.jsp">홈으로 돌아가기</a>
</body>
</html>