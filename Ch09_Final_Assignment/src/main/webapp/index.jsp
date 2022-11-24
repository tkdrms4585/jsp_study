<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/globalData.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아트홀릭</title>
<!-- 아이콘 -->
<link rel="icon" type="image/x-icon"
	href="/wis34_Final_Assignment/com/yju/2wda/team4/image/logo/favicon.png" />
	<!-- 부트스트랩 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</head>
<body>
<!-- header.jsp 시작 -->

	<%@ include file="/com/yju/2wda/team4/view/section/header.jsp"%>

<!-- header.jsp 끝 -->
<!-- GNB.jsp 시작 -->
	<jsp:include page="/com/yju/2wda/team4/view/section/GNB.jsp" />
<!-- GNB.jsp 끝 -->
<h1>eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee</h1>
<hr>
<h2>맥주샵 시스템 - CRUD with MVC</h2>
<h2>MVC 패턴 적용, DAO, DTO, VO활용</h2>
<h2>DBCP/서블릿 적용 스프링 미적용</h2>
<h3>JNDI, DBCP 구성 및 활용</h3>

<ul>
	<li><a href="./getBeerList.be">맥주정보조회(R, 페이징기능X)</a>
	<li><a href="./getBeerListForPage.be">맥주정보조회(R4, MVC패턴적용)</a>
	<li><a href="./updateBeerListDisplay.be">맥주정보수정(U, MVC패턴적용)</a>
	<li><a href="./deletBeerListDisplay.be">맥주정보삭제(D, MVC패턴적용)</a>
</ul>

<p>

<br>JNDI(Java Naming and Directory Interface) 구성 및 활용
<br>DBCP(Database Connection Pool) 구성 및 테스트
<br>commons-collections.jar, commons-dbcp.jar, commons-pool.jar
<br>web.xml, context.xml


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