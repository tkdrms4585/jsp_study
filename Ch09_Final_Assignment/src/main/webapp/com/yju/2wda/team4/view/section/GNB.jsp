<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아트홀릭</title>
<style>
a {
	text-decoration: none; /* 링크의 밑줄 제거 */
	color: inherit; /* 링크의 색상 제거 */
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg  container">
				<div class="container-fluid">
					<a class="navbar-brand" href="/wis34_Final_Assignment"> HOME</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="/wis34_Final_Assignment/com/yju/2wda/team4/view/carte_illust.jsp" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">카테고리</a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="/wis34_Final_Assignment/com/yju/2wda/team4/view/artholic/carte_illust.jsp">일러스트</a></li>
									<li><a class="dropdown-item" href="/wis34_Final_Assignment/com/yju/2wda/team4/view/artholic/carte_character.jsp">캐릭터 일러스트</a></li>
									<li><a class="dropdown-item" href="/wis34_Final_Assignment/com/yju/2wda/team4/view/artholic/carte_background.jsp">배경</a></li>
									<li><a class="dropdown-item" href="/wis34_Final_Assignment/com/yju/2wda/team4/view/artholic/carte_etc.jsp">기타</a></li>
								</ul>
							</li>
							<li class="nav-item"><a class="nav-link active" aria-current="page" href="/wis34_Final_Assignment/com/yju/2wda/team4/view/artholic/request.jsp">의뢰 게시판</a></li>
							<li class="nav-item"><a class="nav-link" href="/wis34_Final_Assignment/com/yju/2wda/team4/view/artholic/review.jsp">이용 후기</a></li>

						</ul>
						<form class="d-flex" role="search">
							<input class="form-control me-2" type="search"
								placeholder="Search" aria-label="Search">
							<button class="btn btn-outline-success" type="submit">Search</button>
						</form>
					</div>
				</div>
			</nav>
</body>
</html>