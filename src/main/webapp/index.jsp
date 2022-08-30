<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>누구인가?</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
    
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top">Who Are You?</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#projects">Identity</a></li>
                        <li class="nav-item"><a class="nav-link" href="#signup">Bucket</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center">
                <div class="d-flex justify-content-center">
                    <div class="text-center">
                        <h1 class="mx-auto my-0 text-uppercase">Introduce W.InSeong</h1>
                        <h2 class="text-white-50 mx-auto mt-2 mb-5">왕인성을 소개합니다람쥐!</h2>
                        <a class="btn btn-primary" href="#about">알겠다람쥐!</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- About-->
        <section class="about-section text-center" >
            <div>
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8">
                    <br id="about">
                        <h2 class="text-white mb-4" >왕인성은요!</h2>
                        <p class="text-white-50">
                            나 한명의 성공보다는 모두의 성공을 꿈꿉니다.
                        <br>
                            실력이 있지만 인정받지 못하거나, 노력하지만 빛을 보지 못하는 사람에게 도움이 되고 싶습니다.
                        </p>
                    </div>
                </div>
                <img class="img-fluid" src="assets/img/불꽃놀이.png" alt="..." style="width:50%;"/>
            </div>
        </section>
        <br><br>
        <!-- Projects-->
        <section  id="projects">
            <div class="container px-4 px-lg-5">
                
                
                <!-- Project One Row-->
                <div class="row gx-0 mb-5 mb-lg-0 justify-content-center">
                    <div class="col-lg-6">
                    	<div class="bg-whiht text-center h-100 project">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-left">
                                	<img class="img-fluid" src="assets/img/집.png"  style="width:100px;"/>
                                	<br><br>
                                    <h4 class="text-black">극한의 집돌이</h4>
                                    <p class="mb-0 text-balck">집에 있는 것이 좋아요!. <br> 근데 한번 나가면 집을 안 들어가요...ㅎ</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="bg-black text-center h-100 project" style="padding-top:70px; padding-bottom:70px;">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-left">
                                    <img class="img-fluid" src="assets/img/전구.png"  style="width:100px;"/>
                                	<br><br>
                                    <h4 class="text-white">아이디어 뱅크</h4>
                                    <p class="text-white">새로운 아이디어!? 짜릿해! 너무 좋아! <br> 머리로 생각한 것을 표현하기 너무 힘들어요...</p>
                                    <hr class="d-none d-lg-block mb-0 ms-0" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Project Two Row-->
                <div class="row gx-0 justify-content-center">
                    <div class="col-lg-6">
                    	<div class="bg-whiht text-center h-100 project">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-right">
                                	<img class="img-fluid" src="assets/img/계획.png"  style="width:100px;"/>
                                	<br><br>
                                	<h4 class="text-black">무 계획이 계획이다!</h4>
                                    <p class="mb-0 text-black">여행?! 일단 출발~! <br> 일이 터지면 그때가서 생각하자~</p>
                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 order-lg-first">
                        <div class="bg-black text-center h-100 project" style="padding-top:70px; padding-bottom:70px;">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-right">
                                	<img class="img-fluid" src="assets/img/물음표.png"  style="width:100px;"/>
                                	<br><br>
                                    <h4 class="text-white">물음표 살인마</h4>
                                    <p class="text-white">왜 그렇게 되는거죠?! <br> 그냥 단순히 궁금한거에요...</p>
                                    
                                    <hr class="d-none d-lg-block mb-0 me-0" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br><br>
                <!-- Featured Project Row-->
                <div class="row gx-0 mb-4 mb-lg-5 align-items-center" id="signup">
                    <div class="col-xl-8 col-lg-7">
                    	<img class="img-fluid mb-3 mb-lg-0" src="assets/img/공수.jpg" alt="..." style="width:90%;"/>
                    </div>
                    <div class="col-xl-4 col-lg-5">
                        <div class="featured-text text-center text-lg-left">
                            <h4>아드레날린 폭주!</h4>
                            <p class="text-black mb-0">번지점프<br>스카이다이빙<br>세계일주</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- Contact-->
        <section class="contact-section bg-black">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Address</h4>
                                <hr class="my-4 mx-auto" />
                                <div class="small text-black-50">대구시 북구 복현동</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-envelope text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Email</h4>
                                <hr class="my-4 mx-auto" />
                                <div class="small text-black-50"><a href="#!">tkdrms4585@naver.com</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-mobile-alt text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Phone</h4>
                                <hr class="my-4 mx-auto" />
                                <div class="small text-black-50">010-7274-8535</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="social d-flex justify-content-center">
                    <a class="mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                    <a class="mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                    <a class="mx-2" href="#!"><i class="fab fa-github"></i></a>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="footer bg-black small text-center text-white-50"><div class="container px-4 px-lg-5">Copyright &copy; Inseong Website 2022</div></footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>