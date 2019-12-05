<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Ecoland - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<link rel="stylesheet"
	href="/ticketing/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="/ticketing/resources/css/animate.css">
<link rel="stylesheet"
	href="/ticketing/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="/ticketing/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="/ticketing/resources/css/magnific-popup.css">
<link rel="stylesheet" href="/ticketing/resources/css/aos.css">
<link rel="stylesheet" href="/ticketing/resources/css/ionicons.min.css">
<link rel="stylesheet" href="/ticketing/resources/css/flaticon.css">
<link rel="stylesheet" href="/ticketing/resources/css/icomoon.css">
<link rel="stylesheet" href="/ticketing/resources/css/style.css">
</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target"
		id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="<%=cp%>/main.action">Partycket</a>
		<button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle"
			type="button" data-toggle="collapse" data-target="#ftco-nav"
			aria-controls="ftco-nav" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> Menu
		</button>

		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav nav ml-auto">
				<li class="nav-item"><a href="#home-section" class="nav-link"><span>Home</span></a></li>

				<c:choose>
					<c:when test="${empty success}">
						<li class="nav-item"><a href="<%=cp%>/userLogin.action"
							class="nav-link"><span>Login</span></a></li>
						<li class="nav-item"><a href="<%=cp%>/userSignUp.action"
							class="nav-link"><span>Sign Up</span></a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item"><a href="<%=cp%>/logout.action"
							class="nav-link"><span>Logout</span></a></li>
						<li class="nav-item"><a href="<%=cp%>/myPage.action"
							class="nav-link"><span>My Page</span></a></li>
					</c:otherwise>
				</c:choose>

				<li class="nav-item"><a href="#about-section" class="nav-link"><span>Musical</span></a></li>
				<li class="nav-item"><a href="#destination-section"
					class="nav-link"><span>Concert</span></a></li>
				<li class="nav-item"><a href="#restaurant-section"
					class="nav-link"><span>Classic</span></a></li>
				<li class="nav-item"><a href="#blog-section" class="nav-link"><span>Exhibition</span></a></li>
				<li class="nav-item"><a href="#contact-section"
					class="nav-link"><span>Theater</span></a></li>
				<li class="nav-item"><img src="">
			</ul>
		</div>
	</div>
	</nav>

	<section id="home-section" class="hero"> <img
		src="/images/blob-shape-3.svg" class="svg-blob"
		alt="Colorlib Free Template">
	<div class="home-slider owl-carousel">
		<div class="slider-item">
			<div class="overlay"></div>
			<div class="container-fluid p-0">
				<div
					class="row d-md-flex no-gutters slider-text align-items-center justify-content-end"
					data-scrollax-parent="true">
					<div class="one-third order-md-last">
						<div class="img"
							style="background-image: url(/ticketing/resources/images/movie.jpg); width: 700px; height: 800px;">
							<div class="overlay"></div>
						</div>
						<div class="bg-primary">
							<!-- <div class="vr"><span class="pl-3 py-4" style="background-image: url(images/bg_1-1.jpg);">Greece</span></div> -->
						</div>
					</div>
					<div class="one-forth d-flex align-items-center ftco-animate"
						data-scrollax=" properties: { translateY: '70%' }">
						<div class="text">
							<span class="subheading pl-5">Participate Loro</span>
							<h1 class="mb-4 mt-3">Explore Your Travel Destinations like
								never before</h1>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia. It is a paradisematic
								country.</p>

							<p>
								<a href="#" class="btn btn-primary px-5 py-3 mt-3">Participate
									<span class="ion-ios-arrow-forward"></span>
								</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="slider-item">
			<div class="overlay"></div>
			<div class="container-fluid p-0">
				<div
					class="row d-flex no-gutters slider-text align-items-center justify-content-end"
					data-scrollax-parent="true">
					<div class="one-third order-md-last">
						<div class="img"
							style="background-image: url(/ticketing/resources/images/jpark.jpg); width: 700px; height: 800px;">
							<div class="overlay"></div>
						</div>
						<!-- <div class="vr"><span class="pl-3 py-4" style="background-image: url(images/jpark.jpg);">J-Park</span></div> -->
					</div>
					<div class="one-forth d-flex align-items-center ftco-animate"
						data-scrollax=" properties: { translateY: '70%' }">
						<div class="text">
							<span class="subheading pl-5">Participate J'park</span>
							<h1 class="mb-4 mt-3">
								Never Stop Exploring</span>
							</h1>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia. It is a paradisematic
								country.</p>

							<p>
								<a href="#" class="btn btn-primary px-5 py-3 mt-3">Participate
									<span class="ion-ios-arrow-forward"></span>
								</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

	<br/><br/>
	<section class="ftco-section ftco-no-pb ftco-no-pt">
	<div class="container" style="text-align: center;">
		<div class="row justify-content-center pb-0 pb-mb-5 pt-5 pt-md-0">
			<div class="col-md-12 heading-section ftco-animate">
				<span class="subheading" style="font-size: 16pt;">Party &amp; Ticket</span>
				<h2 class="mb-4">Where do you participate in?</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="search-wrap-1 ftco-animate p-4">
					<form action="#" class="search-property-1">
						<div class="row">
							<div class="form-group" align="center" style="width: 120px; text-align: left;">
								<!-- <label for="name" style="font-weight: normal;">Category</label> -->
								<select name="genreName" class="form-control">
									<option value="musical" style="font-size: 12pt;">뮤지컬</option>
									<option value="concert" style="font-size: 12pt;">콘서트</option>
								</select>
							</div>
							<div class="col-lg align-items-end">
								<div class="form-group">
									<!-- <label for="#">Participate</label> -->
									<div class="form-field">
										<div class="icon">
											<span class="ion-ios-search"></span>
										</div>
										<b><input type="text" class="form-control"
											placeholder="검색어를 입력해주세요" style="width: 800px;"></b>
									</div>
								</div>
							</div>
							<div class="col-lg align-self-end">
								<div class="form-group">
									<div class="form-field">
										<b><input type="submit" value="검색하기"
											class="form-control btn btn-primary" style="width: 160px;"></b>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	</section>

	<section class="ftco-counter img ftco-section ftco-no-pt ftco-no-pb"
		id="about-section">
	<div class="container">
		<div class="row no-gutters d-flex">
			<div class="col-md-6 col-lg-5 d-flex">
				<div class="img d-flex align-self-stretch align-items-center"
					style="background-image: url(/ticketing/resources/images/jpark.jpg);">
				</div>
			</div>
			<div class="col-md-6 col-lg-7 px-lg-5 py-md-5 bg-darken">
				<div class="py-md-5">
					<div class="row justify-content-start pb-3">
						<div class="col-md-12 heading-section ftco-animate p-5 p-lg-0">
							<span class="subheading">Get in touch with us</span>
							<h2 class="mb-4">Get Best Travel Deals</h2>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia. It is a paradisematic
								country, in which roasted parts of sentences fly into your
								mouth.</p>
							<p>Even the all-powerful Pointing has no control about the
								blind texts it is an almost unorthographic life One day however
								a small line of blind text by the name of Lorem Ipsum decided to
								leave for the far World of Grammar.</p>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia. It is a paradisematic
								country, in which roasted parts of sentences fly into your
								mouth.</p>
							<p>
								<a href="#" class="btn btn-primary py-3 px-4">예약하기</a> 
								<a href="#" class="btn btn-white py-3 px-4">Reservation</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

	<!-- 첫번째 리스트 부분 -->
	<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center pb-5">
			<div class="col-md-12 heading-section text-center ftco-animate">
				<span class="subheading">Partycket Performance</span>
				<h2 class="mb-4">Musical</h2>
				<!-- <p>Far far away, behind the word mountains, far from the
					countries Vokalia and Consonantia</p> -->
			</div>
		</div>
		<div class="row" style="display: inline-block;">
			<c:set var="i" value="0" />
			<c:set var="j" value="3" />
			<table align="center" border="0" width="500" cellpadding="3"
				cellspacing="3">
				<c:forEach var="mainListDTO" items="${lists }">
					<c:if test="${i%j==0 }">
						<tr align="center">
					</c:if>
					<!-- <td> -->
					<div class="col-md-6 col-lg-4 ftco-animate"
						style="display: inline-block;">
						<div class="project">

							<div class="img">
								<div class="vr">
									<span>H O T</span>
								</div>
								<a href="/ticketing/poster.action?performCode=${mainListDTO.performCode}"><img src="<c:url value='/image/${mainListDTO.performMainImage }'/>"
									style="width: 550px; height: 350px;" class="img-fluid"
									alt="Colorlib Template"></a>
							</div>
							<div class="text">

								<h4 class="price">● ${mainListDTO.placeName }</h4>
								<span><b>${mainListDTO.performStartDate } ~
										${mainListDTO.performEndDate }<b /></span>
								<h3>
									<a href="/ticketing/poster.action?performCode=${mainListDTO.performCode}">${mainListDTO.performName }</a>
								</h3>
								<div class="star d-flex clearfix">
									<div class="mr-auto float-left">
										<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
										<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
										<span class="ion-ios-star"></span>
										<span class="rate"><a href="#"><b>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										댓글(120)</b></a></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- </td> -->
					<c:if test="${i%j == j-1 }">
						</tr align="left">
					</c:if>
					<c:set var="i" value="${i+1 }" />
				</c:forEach>
			</table>
		</div>
	</div>
	</section>
	<!-- 첫번째 리스트 부분 끝 -->
	
	<!-- 긴 이미지 전시회 부분 -->
	<!-- <section class="ftco-intro img" id="hotel-section"
		style= "background-image: url(/ticketing/resources/images/down.png);">
	<div class="overlay" style="height: 300px;"></div>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-9 text-center">
				<p><h2>나랑 전시회 보러갈래..??</h2></p>
				<p style="font-weight: normal;">Do you want go to exhibition with me???</p>
				<p class="mb-0">
					<a href="#" class="btn btn-white px-4 py-3"><b>전시회 보러가기</b></a>
				</p>
			</div>
		</div>
	</div>
	</section> -->
	<!-- 긴 이미지 전시회 부분 끝 -->

	<!-- 뮤지컬이든 뭐든 장르 출력시키기 (첫번째) -->
	<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center pb-5">
			<div class="col-md-12 heading-section text-center ftco-animate">
				<span class="subheading" style="font-weight: normal;">Suggested Hotel</span>
				<h2 class="mb-4">Find Nearest Hotel</h2>
				<p>Far far away, behind the word mountains, far from the
					countries Vokalia and Consonantia</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-lg-4 ftco-animate">
				<div class="project">
					<div class="img">
						<div class="vr">
							<span>Sale</span>
						</div>
						<a href="hotel.html"><img
							src="/ticketing/resources/images/hotel-1.jpg" class="img-fluid"
							alt="Colorlib Template"></a>
					</div>
					<div class="text">
						<h4 class="price">
							<span class="old-price mr-2">$500</span>$400
						</h4>
						<span>3 nights</span>
						<h3>
							<a href="hotel.html">Luxury Hotel in Greece</a>
						</h3>
						<div class="star d-flex clearfix">
							<div class="mr-auto float-left">
								<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
								<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
								<span class="ion-ios-star"></span>
							</div>
							<div class="float-right">
								<span class="rate"><a href="#">(120)</a></span>
							</div>
						</div>
					</div>
					<a href="images/hotel-1.jpg"
						class="icon image-popup d-flex justify-content-center align-items-center">
						<span class="icon-expand"></span>
					</a>
				</div>
			</div>
			<div class="col-md-6 col-lg-4 ftco-animate">
				<div class="project">
					<div class="img">
						<a href="hotel.html"><img
							src="/ticketing/resources/images/hotel-2.jpg" class="img-fluid"
							alt="Colorlib Template"></a>
					</div>
					<div class="text">
						<h4 class="price">$400</h4>
						<span>3 nights</span>
						<h3>
							<a href="hotel.html">Luxury Hotel in Greece</a>
						</h3>
						<div class="star d-flex clearfix">
							<div class="mr-auto float-left">
								<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
								<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
								<span class="ion-ios-star"></span>
							</div>
							<div class="float-right">
								<span class="rate"><a href="#">(120)</a></span>
							</div>
						</div>
					</div>
					<a href="images/hotel-2.jpg"
						class="icon image-popup d-flex justify-content-center align-items-center">
						<span class="icon-expand"></span>
					</a>
				</div>
			</div>
			<div class="col-md-6 col-lg-4 ftco-animate">
				<div class="project">
					<div class="img">
						<a href="hotel.html"><img
							src="/ticketing/resources/images/hotel-3.jpg" class="img-fluid"
							alt="Colorlib Template"></a>
					</div>
					<div class="text">
						<h4 class="price">$400</h4>
						<span>3 nights</span>
						<h3>
							<a href="hotel.html">Luxury Hotel in Greece</a>
						</h3>
						<div class="star d-flex clearfix">
							<div class="mr-auto float-left">
								<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
								<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
								<span class="ion-ios-star"></span>
							</div>
							<div class="float-right">
								<span class="rate"><a href="#">(120)</a></span>
							</div>
						</div>
					</div>
					<a href="images/hotel-3.jpg"
						class="icon image-popup d-flex justify-content-center align-items-center">
						<span class="icon-expand"></span>
					</a>
				</div>
			</div>
		</div>
		<div class="row justify-content-center pb-5 pt-5">
			<div class="col-md-12 heading-section text-center ftco-animate">
				<span class="subheading" style="font-weight: normal; font-size: 15pt;">전문가 칼럼</span>
				<h2 class="mb-4">오페라의 유령 오리지널 팀 내한공연</h2>
				<p style="font-weight: normal;">'Phantom of the opera' original team Korean performance</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 room-wrap">
				<div class="row">
					<div class="col-md-7 d-flex ftco-animate">
						<div class="img align-self-stretch"
							style="background-image: url(/ticketing/resources/images/opera100.jpg); width: 600px; height: 780px;"></div>
					</div>
					<div class="col-md-5 ftco-animate">
						<div class="text py-5">
							<h3><p class="pos" style="font-weight: normal;"><b>
								아름다운 유령의 25년 역사
							</b></p></h3>
							<p class="pos" style="font-weight: normal;"><b>
								from <!-- <span class="price">공연부 기자 김희우</span> -->공연부 기자 김희우
							</b></p>
							<p style="font-weight: normal"><오페라의 유령>은 캣츠, 레미제라블, 미스사이공에 이은 세계 4대 뮤지컬 중 하나로, 전 세계가 가장 사랑하는 뮤지컬로 손꼽힙니다. 
							업계 최고 기획자인 카메론 매킨토시(Cameron Mackintosh)와 뮤지컬계의 전설의 작곡가 앤드류 로이드 웨버(Andrew Lloyd Webber)가 
							함께 만든 걸작이라고 할 수 있죠. <오페라의 유령>은 1988년 초연을 한 후부터 지금까지 1만 회가 넘는 공연을 진행해 역사상 최다 공연 신기록을 세웠습니다. 
							원작은 프랑스 작가 가스통 르루가 1910년 발표한 동명의 소설인데요. 라울을 중심으로 이야기가 펼쳐지는 소설과 달리, 
							뮤지컬에서는 크리스틴이 이야기의 중심인물이 되어 진행됩니다. 1대 크리스틴 역은 당시 작곡가 앤드류 로이드 웨버의 부인이었던 
							‘사라 브라이트만(Sarah Brightman)’ 맡았습니다. 웨버는 청순한 외모에 맑은 목소리로 노래하는 부인을 염두에 두고 곡을 썼어요. 
							브라이트만은 부를 수 있는 음역대도 굉장히 넓었기 때문에 극중 크리스틴의 넘버는 엄청난 난이도를 자랑하기도 한답니다. "오페라의 유령"은 애절한 사랑이야기 속, 
							누구나 쉽게 흥얼거릴 수 있는 대중적인 멜로디, 매력적인 배우들의 음성, 극의 배경이 되는 17층 규모의 웅장한 오페라 하우스를 그대로 재현한 무대, 
							화려한 의상 등 요소 하나하나가 여러분의 마음을 사로잡을 거예요!
							</p>
							<p>
								<a href="#" class="btn btn-secondary">예약하기</a> <a href="#"
									class="btn btn-primary">Reservation</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-12 room-wrap room-wrap-thumb mt-4">
				<div class="row">
					<div class="col-md-3 ftco-animate">
						<a href="#" class="d-flex thumb">
							<div class="img align-self-stretch"
								style="background-image: url(/ticketing/resources/images/opera96.jpg);"></div>
							<div class="text pl-3 py-3" style="font-style: white;">
								<h3 >Classic Balcony Room</h3>
							</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a href="#" class="d-flex thumb">
							<div class="img align-self-stretch"
								style="background-image: url(/ticketing/resources/images/opera98.jpg);"></div>
							<div class="text pl-3 py-3">
								<h3>Classic Balcony Room</h3>
							</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a href="#" class="d-flex thumb">
							<div class="img align-self-stretch"
								style="background-image: url(/ticketing/resources/images/opera3.jpg);"></div>
							<div class="text pl-3 py-3">
								<h3>Classic Balcony Room</h3>
							</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a href="#" class="d-flex thumb">
							<div class="img align-self-stretch"
								style="background-image: url(/ticketing/resources/images/opera97.jpg);"></div>
							<div class="text pl-3 py-3">
								<h3>Classic Balcony Room</h3>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- 뮤지컬이든 뭐든 장르 출력시키기 (첫번째) 끝 -->

	<section class="ftco-section testimony-section" style="background-color: #232931; height: 750px;"> <!-- <img
		src="/ticketing/resources/images/blob-shape-2.svg" class="svg-blob"
		alt="Colorlib Free Template"> <img
		src="/ticketing/resources/images/blob-shape-2.svg" class="svg-blob-2"
		alt="Colorlib Free Template"> -->
	<div class="container" >
		<div class="row justify-content-center pb-3">
			<div
				class="col-md-7 text-center heading-section heading-section-white ftco-animate">
				<span class="subheading">Read testimonials</span>
				<h2 class="mb-4">What Client Says</h2>
			</div>
		</div>
		<div class="row ftco-animate justify-content-center">
			<div class="col-md-12">
				<div class="carousel-testimony owl-carousel ftco-owl">
					<div class="item">
						<div class="testimony-wrap text-center py-4 pb-5">
							<div class="user-img"
								style="background-image: url(images/person_1.jpg)">
								<span
									class="quote d-flex align-items-center justify-content-center">
									<i class="icon-quote-left"></i>
								</span>
							</div>
							<div class="text px-4 pb-5">
								<p class="mb-4">Far far away, behind the word mountains, far
									from the countries Vokalia and Consonantia, there live the
									blind texts.</p>
								<p class="name">Jeff Freshman</p>
								<span class="position">Artist</span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimony-wrap text-center py-4 pb-5">
							<div class="user-img"
								style="background-image: url(/ticketing/resources/images/person_2.jpg)">
								<span
									class="quote d-flex align-items-center justify-content-center">
									<i class="icon-quote-left"></i>
								</span>
							</div>
							<div class="text px-4 pb-5">
								<p class="mb-4">Far far away, behind the word mountains, far
									from the countries Vokalia and Consonantia, there live the
									blind texts.</p>
								<p class="name">Jeff Freshman</p>
								<span class="position">Artist</span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimony-wrap text-center py-4 pb-5">
							<div class="user-img"
								style="background-image: url(/ticketing/resources/images/person_3.jpg)">
								<span
									class="quote d-flex align-items-center justify-content-center">
									<i class="icon-quote-left"></i>
								</span>
							</div>
							<div class="text px-4 pb-5">
								<p class="mb-4">Far far away, behind the word mountains, far
									from the countries Vokalia and Consonantia, there live the
									blind texts.</p>
								<p class="name">Jeff Freshman</p>
								<span class="position">Artist</span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimony-wrap text-center py-4 pb-5">
							<div class="user-img"
								style="background-image: url(/ticketing/resources/images/person_1.jpg)">
								<span
									class="quote d-flex align-items-center justify-content-center">
									<i class="icon-quote-left"></i>
								</span>
							</div>
							<div class="text px-4 pb-5">
								<p class="mb-4">Far far away, behind the word mountains, far
									from the countries Vokalia and Consonantia, there live the
									blind texts.</p>
								<p class="name">Jeff Freshman</p>
								<span class="position">Artist</span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimony-wrap text-center py-4 pb-5">
							<div class="user-img"
								style="background-image: url(/ticketing/resources/images/person_3.jpg)">
								<span
									class="quote d-flex align-items-center justify-content-center">
									<i class="icon-quote-left"></i>
								</span>
							</div>
							<div class="text px-4 pb-5">
								<p class="mb-4">Far far away, behind the word mountains, far
									from the countries Vokalia and Consonantia, there live the
									blind texts.</p>
								<p class="name">Jeff Freshman</p>
								<span class="position">Artist</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

	<section class="ftco-section" id="restaurant-section">
	<div class="container">
		<div class="row justify-content-center pb-5">
			<div class="col-md-12 heading-section text-center ftco-animate">
				<span class="subheading">Restaurant</span>
				<h2 class="mb-4">Near Resturant</h2>
				<p>Far far away, behind the word mountains, far from the
					countries Vokalia and Consonantia</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-lg-4 ftco-animate">
				<div class="project">
					<div class="img">
						<img src="/ticketing/resources/images/resto-1.jpg"
							class="img-fluid" alt="Colorlib Template">
					</div>
					<div class="text">
						<h4 class="price">
							<span class="mr-2">menu start at</span>$4.00
						</h4>
						<span>Bern, Swetzerland</span>
						<h3>
							<a href="project.html">Resto Bar, Swetzerland</a>
						</h3>
						<div class="star d-flex clearfix">
							<div class="mr-auto float-left">
								<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
								<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
								<span class="ion-ios-star"></span>
							</div>
							<div class="float-right">
								<span class="rate"><a href="#">(120)</a></span>
							</div>
						</div>
					</div>
					<a href="images/resto-1.jpg"
						class="icon image-popup d-flex justify-content-center align-items-center">
						<span class="icon-expand"></span>
					</a>
				</div>
			</div>
			<div class="col-md-6 col-lg-4 ftco-animate">
				<div class="project">
					<div class="img">
						<img src="/ticketing/resources/images/resto-2.jpg"
							class="img-fluid" alt="Colorlib Template">
					</div>
					<div class="text">
						<h4 class="price">
							<span class="mr-2">menu start at</span>$4.00
						</h4>
						<span>Bern, Swetzerland</span>
						<h3>
							<a href="project.html">Resto Bar, Swetzerland</a>
						</h3>
						<div class="star d-flex clearfix">
							<div class="mr-auto float-left">
								<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
								<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
								<span class="ion-ios-star"></span>
							</div>
							<div class="float-right">
								<span class="rate"><a href="#">(120)</a></span>
							</div>
						</div>
					</div>
					<a href="images/resto-2.jpg"
						class="icon image-popup d-flex justify-content-center align-items-center">
						<span class="icon-expand"></span>
					</a>
				</div>
			</div>
			<div class="col-md-6 col-lg-4 ftco-animate">
				<div class="project">
					<div class="img">
						<img src="images/resto-3.jpg" class="img-fluid"
							alt="Colorlib Template">
					</div>
					<div class="text">
						<h4 class="price">
							<span class="mr-2">menu start at</span>$4.00
						</h4>
						<span>Bern, Swetzerland</span>
						<h3>
							<a href="project.html">Resto Bar, Swetzerland</a>
						</h3>
						<div class="star d-flex clearfix">
							<div class="mr-auto float-left">
								<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
								<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
								<span class="ion-ios-star"></span>
							</div>
							<div class="float-right">
								<span class="rate"><a href="#">(120)</a></span>
							</div>
						</div>
					</div>
					<a href="images/resto-3.jpg"
						class="icon image-popup d-flex justify-content-center align-items-center">
						<span class="icon-expand"></span>
					</a>
				</div>
			</div>
		</div>
	</div>
	</section>


	<section class="ftco-section bg-light" id="blog-section">
	<div class="container">
		<div class="row justify-content-center mb-5 pb-5">
			<div class="col-md-7 heading-section text-center ftco-animate">
				<span class="subheading">Blog</span>
				<h2 class="mb-4">Our Blog</h2>
				<p>Far far away, behind the word mountains, far from the
					countries Vokalia and Consonantia</p>
			</div>
		</div>
		<div class="row d-flex">
			<div class="col-md-6 col-lg-4 d-flex ftco-animate">
				<div class="blog-entry justify-content-end">
					<a href="single.html" class="block-20"
						style="background-image: url('images/image_1.jpg');"> </a>
					<div class="text float-right d-block">
						<div class="d-flex align-items-center pt-2 mb-4 topp">
							<div class="one mr-2">
								<span class="day">12</span>
							</div>
							<div class="two">
								<span class="yr">2019</span> <span class="mos">april</span>
							</div>
						</div>
						<h3 class="heading">
							<a href="single.html">Why Lead Generation is Key for Business
								Growth</a>
						</h3>
						<p>A small river named Duden flows by their place and supplies
							it with the necessary regelialia.</p>
						<div class="d-flex align-items-center mt-4 meta">
							<p class="mb-0">
								<a href="#" class="btn btn-primary">Read More <span
									class="ion-ios-arrow-round-forward"></span></a>
							</p>
							<p class="ml-auto mb-0">
								<a href="#" class="mr-2">Admin</a> <a href="#" class="meta-chat"><span
									class="icon-chat"></span> 3</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-4 d-flex ftco-animate">
				<div class="blog-entry justify-content-end">
					<a href="single.html" class="block-20"
						style="background-image: url('images/image_2.jpg');"> </a>
					<div class="text float-right d-block">
						<div class="d-flex align-items-center pt-2 mb-4 topp">
							<div class="one mr-2">
								<span class="day">12</span>
							</div>
							<div class="two">
								<span class="yr">2019</span> <span class="mos">april</span>
							</div>
						</div>
						<h3 class="heading">
							<a href="single.html">Why Lead Generation is Key for Business
								Growth</a>
						</h3>
						<p>A small river named Duden flows by their place and supplies
							it with the necessary regelialia.</p>
						<div class="d-flex align-items-center mt-4 meta">
							<p class="mb-0">
								<a href="#" class="btn btn-primary">Read More <span
									class="ion-ios-arrow-round-forward"></span></a>
							</p>
							<p class="ml-auto mb-0">
								<a href="#" class="mr-2">Admin</a> <a href="#" class="meta-chat"><span
									class="icon-chat"></span> 3</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-4 d-flex ftco-animate">
				<div class="blog-entry">
					<a href="single.html" class="block-20"
						style="background-image: url('images/image_3.jpg');"> </a>
					<div class="text float-right d-block">
						<div class="d-flex align-items-center pt-2 mb-4 topp">
							<div class="one mr-2">
								<span class="day">12</span>
							</div>
							<div class="two">
								<span class="yr">2019</span> <span class="mos">april</span>
							</div>
						</div>
						<h3 class="heading">
							<a href="single.html">Why Lead Generation is Key for Business
								Growth</a>
						</h3>
						<p>A small river named Duden flows by their place and supplies
							it with the necessary regelialia.</p>
						<div class="d-flex align-items-center mt-4 meta">
							<p class="mb-0">
								<a href="#" class="btn btn-primary">Read More <span
									class="ion-ios-arrow-round-forward"></span></a>
							</p>
							<p class="ml-auto mb-0">
								<a href="#" class="mr-2">Admin</a> <a href="#" class="meta-chat"><span
									class="icon-chat"></span> 3</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

	<!-- <section class="ftco-section contact-section ftco-no-pb" id="contact-section">
      <div class="container">
      	<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <span class="subheading">Contact</span>
            <h2 class="mb-4">Contact Me</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
          </div>
        </div>

        <div class="row block-9">
          <div class="col-md-7 order-md-last d-flex">
            <form action="#" class="bg-light p-4 p-md-5 contact-form">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Your Name">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Your Email">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Subject">
              </div>
              <div class="form-group">
                <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
              </div>
              <div class="form-group">
                <input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">
              </div>
            </form>
          
          </div>

          <div class="col-md-5 d-flex">
          	<div class="row d-flex contact-info mb-5">
		          <div class="col-md-12 ftco-animate">
		          	<div class="box p-2 px-3 bg-light d-flex">
		          		<div class="icon mr-3">
		          			<span class="icon-map-signs"></span>
		          		</div>
		          		<div>
			          		<h3 class="mb-3">Address</h3>
				            <p>198 West 21th Street, Suite 721 New York NY 10016</p>
			            </div>
			          </div>
		          </div>
		          <div class="col-md-12 ftco-animate">
		          	<div class="box p-2 px-3 bg-light d-flex">
		          		<div class="icon mr-3">
		          			<span class="icon-phone2"></span>
		          		</div>
		          		<div>
			          		<h3 class="mb-3">Contact Number</h3>
				            <p><a href="tel://1234567920">+ 1235 2355 98</a></p>
			            </div>
			          </div>
		          </div>
		          <div class="col-md-12 ftco-animate">
		          	<div class="box p-2 px-3 bg-light d-flex">
		          		<div class="icon mr-3">
		          			<span class="icon-paper-plane"></span>
		          		</div>
		          		<div>
			          		<h3 class="mb-3">Email Address</h3>
				            <p><a href="mailto:info@yoursite.com">info@yoursite.com</a></p>
			            </div>
			          </div>
		          </div>
		          <div class="col-md-12 ftco-animate">
		          	<div class="box p-2 px-3 bg-light d-flex">
		          		<div class="icon mr-3">
		          			<span class="icon-globe"></span>
		          		</div>
		          		<div>
			          		<h3 class="mb-3">Website</h3>
				            <p><a href="#">yoursite.com</a></p>
			            </div>
			          </div>
		          </div>
		        </div>
          </div>
        </div>
      </div>
    </section> -->

	<!-- <section class="ftco-section ftco-no-pt ftco-no-pb">
	<div id="map" class="bg-white"></div>
	</section> -->

	<section class="ftco-gallery">
	<div class="container-fluid px-0">
		<div class="row no-gutters">
			<div class="col-md-4 col-lg-2 ftco-animate">
				<a href="/ticketing/resources/images/1.jpg"
					class="gallery image-popup img d-flex align-items-center"
					style="background-image: url(/ticketing/resources/images/1.jpg);">
					<div
						class="icon mb-4 d-flex align-items-center justify-content-center">
						<span class="icon-instagram"></span>
					</div>
				</a>
			</div>
			<div class="col-md-4 col-lg-2 ftco-animate">
				<a href="/ticketing/resources/images/2.jpg"
					class="gallery image-popup img d-flex align-items-center"
					style="background-image: url(/ticketing/resources/images/2.jpg);">
					<div
						class="icon mb-4 d-flex align-items-center justify-content-center">
						<span class="icon-instagram"></span>
					</div>
				</a>
			</div>
			<div class="col-md-4 col-lg-2 ftco-animate">
				<a href="/ticketing/resources/images/3.jpg"
					class="gallery image-popup img d-flex align-items-center"
					style="background-image: url(/ticketing/resources/images/3.jpg);">
					<div
						class="icon mb-4 d-flex align-items-center justify-content-center">
						<span class="icon-instagram"></span>
					</div>
				</a>
			</div>
			<div class="col-md-4 col-lg-2 ftco-animate">
				<a href="/ticketing/resources/images/4.jpg"
					class="gallery image-popup img d-flex align-items-center"
					style="background-image: url(/ticketing/resources/images/4.jpg);">
					<div
						class="icon mb-4 d-flex align-items-center justify-content-center">
						<span class="icon-instagram"></span>
					</div>
				</a>
			</div>
			<div class="col-md-4 col-lg-2 ftco-animate">
				<a href="/ticketing/resources/images/5.jpg"
					class="gallery image-popup img d-flex align-items-center"
					style="background-image: url(/ticketing/resources/images/5.jpg);">
					<div
						class="icon mb-4 d-flex align-items-center justify-content-center">
						<span class="icon-instagram"></span>
					</div>
				</a>
			</div>
			<div class="col-md-4 col-lg-2 ftco-animate">
				<a href="/ticketing/resources/images/6.jpg"
					class="gallery image-popup img d-flex align-items-center"
					style="background-image: url(/ticketing/resources/images/6.jpg);">
					<div
						class="icon mb-4 d-flex align-items-center justify-content-center">
						<span class="icon-instagram"></span>
					</div>
				</a>
			</div>
		</div>
	</div>
	</section>
	<footer class="ftco-footer ftco-section">
	<div class="container">
		<div class="row mb-5">
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">
						About <span><a href="index.html">Ecoland</a></span>
					</h2>
					<p style="font-weight: normal;">Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.</p>
					<ul
						class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
						<li class="ftco-animate"><a href="#"><span
								class="icon-twitter"></span></a></li>
						<li class="ftco-animate"><a href="#"><span
								class="icon-facebook"></span></a></li>
						<li class="ftco-animate"><a href="#"><span
								class="icon-instagram"></span></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4 ml-md-4">
					<h2 class="ftco-heading-2">Information</h2>
					<ul class="list-unstyled">
						<li style="font-weight: normal;"><a href="#"><span class="icon-long-arrow-right mr-2"></span>Online
								Enquiry</a></li>
						<li style="font-weight: normal;"><a href="#"><span class="icon-long-arrow-right mr-2"></span>General
								Enquiry</a></li>
						<li style="font-weight: normal;"><a href="#"><span class="icon-long-arrow-right mr-2"></span>Booking</a></li>
						<li style="font-weight: normal;"><a href="#"><span class="icon-long-arrow-right mr-2"></span>Privacy</a></li>
						<li style="font-weight: normal;"><a href="#"><span class="icon-long-arrow-right mr-2"></span>Refund
								Policy</a></li>
						<li style="font-weight: normal;"><a href="#"><span class="icon-long-arrow-right mr-2"></span>Call
								Us</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Experience</h2>
					<ul class="list-unstyled">
						<li style="font-weight: normal;"><a href="#"><span class="icon-long-arrow-right mr-2"></span>Adventure</a></li>
						<li style="font-weight: normal;"><a href="#"><span class="icon-long-arrow-right mr-2"></span>Hotel
								and Restaurant</a></li>
						<li style="font-weight: normal;"><a href="#"><span class="icon-long-arrow-right mr-2"></span>Beach</a></li>
						<li style="font-weight: normal;"><a href="#"><span class="icon-long-arrow-right mr-2"></span>Nature</a></li>
						<li style="font-weight: normal;"><a href="#"><span class="icon-long-arrow-right mr-2"></span>Camping</a></li>
						<li style="font-weight: normal;"><a href="#"><span class="icon-long-arrow-right mr-2"></span>Party</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Have a Questions?</h2>
					<div class="block-23 mb-3">
						<ul>
							<li style="font-weight: normal;"><span class="icon icon-map-marker"></span><span
								class="text">203 Fake St. Mountain View, San Francisco,
									California, USA</span></li>
							<li style="font-weight: normal;"><a href="#"><span class="icon icon-phone"></span><span
									class="text">+2 392 3929 210</span></a></li>
							<li style="font-weight: normal;"><a href="#"><span class="icon icon-envelope"></span><span
									class="text">info@yourdomain.com</span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 text-center" style="font-weight: normal;">

				<p>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="icon-heart color-danger" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>
		</div>
	</div>
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
		<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke="#eeeeee" />
		<circle class="path" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="/ticketing/resources/js/jquery.min.js"></script>
	<script src="/ticketing/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="/ticketing/resources/js/popper.min.js"></script>
	<script src="/ticketing/resources/js/bootstrap.min.js"></script>
	<script src="/ticketing/resources/js/jquery.easing.1.3.js"></script>
	<script src="/ticketing/resources/js/jquery.waypoints.min.js"></script>
	<script src="/ticketing/resources/js/jquery.stellar.min.js"></script>
	<script src="/ticketing/resources/js/owl.carousel.min.js"></script>
	<script src="/ticketing/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="/ticketing/resources/js/aos.js"></script>
	<script src="/ticketing/resources/js/jquery.animateNumber.min.js"></script>
	<script src="/ticketing/resources/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="/ticketing/resources/js/google-map.js"></script>

	<script src="/ticketing/resources/js/main.js"></script>

</body>
</html>