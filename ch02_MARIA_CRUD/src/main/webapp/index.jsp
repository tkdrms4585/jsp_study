<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<mata charset="UTF-8">
<title>서적관리 시스템_인성</title>
<!-- 부트스트랩 -->
<link	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
		crossorigin="anonymous">
	<!-- Vue.js -->
<script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script>
</head>

<body>
	<br>
	<div id=app>
	<nav v-if="loginChk" class="nav justify-content-end">
		<span>{{info}}님 안녕하세요.</span>
		<button class="btn btn-primary">로그아웃</button>
	</nav>
	<nav v-else="loginChk">
		<button class="btn btn-primary btn-sm" type="buttn" onclick="location.href='./user_r.jsp'">로그인</button>
		<button class="btn btn-primary btn-sm" type="buttn" onclick="location.href='./user_c.jsp'">회원가입</button>
	</nav>
	

	<h1>서적관리 시스템 ver0.1</h1>
	<hr>
	<h2>JSP만 사용(MVC패턴, 서블릿, 스프링 미적용)</h2>

	<li><a href="./book_c.jsp">입력(C)</a>
	<li><a href="./book_r.jsp">조회(R)</a>
	<li><a href="./book_r2.jsp?currentPageNo=0">조회2(R2_페이징)</a>
	<li><a href="./book_r3.jsp?currentPageNo=0&limitCnt=10">조회3(R3_페이징v2_레코드수선택)</a>
	<li><a href="./book_u.jsp">수정(U)</a>
	<li><a href="./book_d.jsp">삭제(D)</a>
	
	<hr>
	<h2>회원관리 페이지</h1>
	<li><a href="./user_c.jsp">회원가입(C)</a>
	<li><a href="./user_r.jsp">회원조회()C)</a>
	<li><a href="./user_u.jsp">회원수정(C)</a>
	<li><a href="./user_d.jsp">회원삭제(C)</a>
	
	
	</div>
	<script>
		let webstore = new Vue({
	        el: "#app",
	        data: {
	        	user: true,
	        	info: 'test',
	        	test: 'testText',
	        	
	        	
	        },
	        computed: {
	        	loginChk() {
	        		return this.user;
	        	},
	        },
	        methods: {
	        	
	        },
		});
	</script>
</body>
</html>