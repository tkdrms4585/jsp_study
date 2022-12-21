<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아트홀릭</title>

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
	
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Press+Start+2P&display=swap')
	;

@font-face {
	font-family: 'PFStardust';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/PFStardust.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

* {
	font-family: 'PFStardust';
}

body, html {
	list-style: none;
	padding: 0;
	margin: 0;
	background-color: #288251
}

header h1 {
	width: auto;
	padding-top: 20px;
	text-align: center;
	font-family: 'Press Start 2P', cursive;
	font-size: 3em;
}

.container2 {
	margin: 20px auto;
	padding: 20px 20px;
	background-color: #FCF6F5;
	justify-content: center;
	border: 5px solid black;
	border-radius: 15px;
	width: 90%;
	height: 100%;
}

header a:link {
	text-decoration: none;
	color: black;
}

header a:hover {
	text-decoration: none;
	color: white;
}

nav {
	position: fixed;
}

.btn_gotop {
	display: none;
	position: fixed;
	bottom: 30px;
	right: 30px;
	z-index: 999;
	border: 1px solid #ccc;
	outline: none;
	background-color: white;
	color: #333;
	cursor: pointer;
	padding: 15px 20px;
	border-radius: 100%;
}

.artwork>img {
	padding: 0;
	margin: 0;
	border: 4px dashed black;
}

section {
	padding: 0px;
}

.mainimage {
	left: 15%;
	top: 60%;
}

.mainimage>img {
	border-radius: 50%;
	border: 4px solid rgb(30, 93, 42);
	;
}

.circle {
	margin-top: 150px;
	margin-bottom: 100px;
	padding: 50px;
	border-bottom: 10px dotted black;
}

#likes {
	margin: 0px;
	padding: 0px;
}

.popular>img {
	width: 90%;
	height: 300px;
	border-radius: 50%;
	padding: 30px 30px;
}

.mostlikeimage {
	padding-top: 50px;
	margin-top: 50px;
}

#likes {
	margin-top: 120px;
	padding: 0px;
	background-image: url('./images/grid-png-43559.png');
	background-size: contain;
	background-clip: content-box;
	border: 1px solid black;
}

.po>h1 {
	text-align: center;
	font-family: 'Press Start 2P', cursive;
	font-size: 3em;
}

.po {
	bottom: 90%;
}

.upload {
	left: 30%;
	top: 80%;
}

.upload>a:hover {
	color: red;
}

#uploadyours {
	width: 70%;
	text-decoration: none;
	color: #288251;
	font-size: 35px;
	font-family: 'Press Start 2P', cursive;
	text-align: center;
	padding: 20px;
	border: 5px solid black;
	border-radius: 50%;
	background-color: yellow;
}

.upload>a {
	text-decoration: none;
	color: #288251;
	font-size: 35px;
	font-family: 'Press Start 2P', cursive;
}

@media ( max-width :553px) {
	.more>a, label {
		font-size: 20px;
	}
	h1, .upload>a, .po>h1 {
		font-size: 20px;
	}
	.upload {
		left: 30%;
		top: 90%;
	}
	.po {
		bottom: 95%;
	}
}
</style>
</head>
<body>
	<div class="container">
		<%@ include file="/com/yju/2wda/team4/view/section/header.jsp"%>
		<br>
		<!--네비, 섹션-->
		<div class="container2">
			<%@ include file="/com/yju/2wda/team4/view/section/GNB.jsp"%>

			<h1>의뢰 게시판</h1>
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">접수중</th>
						<th scope="col">카테고리</th>
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">접수중</th>
						<td>일러스트</td>
						<td>[방송용] 방송용 일러스트 커미션 찾습니다.</td>
						<td>빛나는하늘다람쥐</td>
					</tr>
					<tr>
						<th scope="row">마    감</th>
						<td>디자인</td>
						<td>[기타] 게임팀 로고 만들어 주실분 구합니다.</td>
						<td>유자차휘핑크림추가</td>
					</tr>
					<tr>
						<th scope="row">접수중</th>
						<td>일러스트</td>
						<td>[비상업용] 캐릭터 디자인 부탁드립니다.</td>
						<td>홍길동</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>


</body>
</html>