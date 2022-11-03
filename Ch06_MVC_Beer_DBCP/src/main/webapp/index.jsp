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
<h1>마이쇼핑몰(wis34) ver0.1</h1>
<hr>
<h2>맥주샵 시스템 - CRUD with MVC</h2>
<h2>MVC 패턴적용, DAO, DTO, VO 활용 </h2>
<h2>DBCP / 서블릿 / 스프링 미적용</h2>

<ul>
<li><a href="<%= beerViewDir %>/beer_r_drc.jsp">출력레코드 개수 조정(R_DRC)</a>
<li><a href="<%= beerViewDir %>/beer_c.jsp">맥주 정보 입력(C)</a>
<li><a href="<%= beerContDir %>/BeerController.jsp?actionType=R">맥주 정보 조회(R, 페이징기능 x)</a>
<li><a href="<%= beerContDir %>/BeerController.jsp?actionType=R4">맥주 정보 조회(R4, MVC패턴 적용)</a>
<li><a href="<%= beerContDir %>/BeerController.jsp?actionType=U">맥주 정보 수정(U, MVC패턴 적용)</a>
<li><a href="<%= beerContDir %>/BeerController.jsp?actionType=D">맥주 정보 삭제(D, MVC패턴 적용)</a>
</ul>
<p>
	<br>전체 흐름 컨트롤을 위한 BeerController.jsp 파일 구성
	<br>객체 데이터의 전달을 위한 BeerDTO 빈(Bean) 객체 생성 및 활용
	<br>데이터베이스 연결 및 처리를 위한 BeerDAO 클래스 구현
	<br>DB에서 조회된 데이터를 BeerDTO객체 list로 뷰에 전달
	<br>페이징 처리를 위한 BeerPageInfoVO 객체 생성 및 활용
	<br>프로젝트 디렉터리 : MVC 패턴 편성 구조로 변경
</p>
</body>
</html>