<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/globalData.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>마이 쇼핑몰(wis34) ver0.3 Servelet</h1>
<hr>
<h2>맥주샵 시스템 - CRUD with MVC</h2>
<h2>MVC 패턴 적용, DAO, DTO, VO활용</h2>
<h2>DBCP/서블릿 적용 스프링 미적용</h2>
<h3>JNDI, DBCP 구성 및 활용</h3>

<ul>
	<li><a href="<%=beerViewDir %>/beer_r_drc.jsp">출력레코드갯수조정(R_DRC)</a>
	<li><a href="<%=beerViewDir %>/beer_c.jsp">맥주정보입력(C)</a>
	<li><a href="./BeerController.be?actionType=R">맥주정보조회(R, 페이징기능X)</a>
	<li><a href="./BeerController.be?actionType=R4">맥주정보조회(R4, MVC패턴적용)</a>
	<li><a href="./BeerController.be?actionType=U">맥주정보수정(U, MVC패턴적용)</a>
	<li><a href="./BeerController.be?actionType=D">맥주정보삭제(D, MVC패턴적용)</a>
</ul>

<p>

<br>JNDI(Java Naming and Directory Interface) 구성 및 활용
<br>DBCP(Database Connection Pool) 구성 및 테스트
<br>commons-collections.jar, commons-dbcp.jar, commons-pool.jar
<br>web.xml, context.xml

<br><img src="<%=imgDir%>/dbcp.PNG" width="500"/>

<!-- 
<br>전체 흐름 컨트롤을 위한 BeerController.jsp 파일 구성
<br>객체 데이터의 전달을 위한 BeerDTO 빈(Bean)객체 생성 및 활용
<br>데이터 베이스 연결 및 처리를 위한 BeerDAO 클래스 구현
<br>DB에서 조회된 데이터를 BeerDTO객체 list로 뷰에 전달
<br>페이징 처리를 위한 BeerPageInfoVO 객체 생성 및 활용
<br>프로젝트 디렉터리 : MVC 패턴 편성 구조로 변경 
-->
</body>
</html>