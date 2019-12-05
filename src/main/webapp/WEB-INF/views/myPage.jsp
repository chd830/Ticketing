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

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="/springwebMybatis/resources/js/util.js"></script>

<script type="text/javascript">

	function update(){
		
		f = document.myUpdateForm;
		
		str = f.userPwd.value;
		str = str.trim();
		if(!str){
			alert("\n변경 할 비밀번호를 입력하세요.");
			f.userPwd.focus();
			return;
		}
		f.userPwd.value = str;
		
		str = f.userAddr.value;
		str = str.trim();
		if(!str){
			alert("\n변경 할 주소를 입력하세요.");
			f.userAddr.focus();
			return;
		}		
		
		f.userAddr.value = str;
		
		str = f.userFinalAddr.value;
		str = str.trim();
		if(!str){
			alert("\n변경 할 상세주소를 입력하세요.");
			f.userFinalAddr.focus();
			return;
		}	
		
		f.userFinalAddr.value = str;
		
		f.userEmail.value = str;
		
		str = f.userEmail.value;
		str = str.trim();
		if(!str){
			alert("\n변경 할 상세주소를 입력하세요.");
			f.userEmail.focus();
			return;
		}	
		
		f.userEmail.value = str;
		
		str = f.userPhoneNum.value;
		str = str.trim();
		if(!str){
			alert("\n변경 할 상세주소를 입력하세요.");
			f.userPhoneNum.focus();
			return;
		}	
		
		f.userPhoneNum.value = str;
		
		f.action = "<%=cp%>/myPage_ok.action";
		f.submit();
		
	}

</script>

<script>
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}
						document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('sample4_roadAddress').value = fullRoadAddr;
						document.getElementById('sample4_jibunAddress').value = data.jibunAddress;
						if (data.autoRoadAddress) {
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';
						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
						} else {
							document.getElementById('guide').innerHTML = '';
						}
					}
				}).open();
	}
</script>


</head>


<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target"
		id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="<%=cp%>/main.action">Ecoland</a>
		<button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle"
			type="button" data-toggle="collapse" data-target="#ftco-nav"
			aria-controls="ftco-nav" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> Menu
		</button>

		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav nav ml-auto">
				<li class="nav-item"><a href="#home-section" class="nav-link"><span>Home</span></a></li>


				<li class="nav-item"><a href="<%=cp%>/logout.action"
					class="nav-link"><span>Logout</span></a></li>
				<li class="nav-item"><a href="<%=cp%>/myPage.action"
					class="nav-link"><span>My Page</span></a></li>

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

	<section class="ftco-section contact-section ftco-no-pb"
		id="contact-section">
	<div class="container">
		<div class="row justify-content-center mb-5 pb-3">
			<div class="col-md-7 heading-section text-center ftco-animate">
				<span class="subheading">Partycket</span>
				<h2 class="mb-4">My Page</h2>
				<!--  <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p> -->
			</div>
		</div>

		
		<div class="row block-9">
			<c:choose>
				<c:when test="${!empty success }">
					<div class="col-md-7 order-md-last d-flex">
						<form action="" class="bg-light p-4 p-md-5 contact-form" method="post" name="myUpdateForm">
							<div class="form-group">
							<label style="font-weight: normal;">아이디 </label>
								<input type="text" class="form-control"
									value="${userMainDTO.getUserId()}" readonly/>
							</div>
							<div class="form-group">
							<label style="font-weight: normal;">패스워드 </label>
								<input type="password" class="form-control"
									value="${userMainDTO.getUserPwd() }">
							</div>
							<div class="form-group">
							<label style="font-weight: normal;">이름 </label>
								<input type="text" class="form-control"
									value="${userMainDTO.getUserName() }" readonly/>
							</div>
							<div class="form-group" align="left">
								<label style="font-weight: normal;">주소 </label> <br /> <input
									type="text" class="form-control" name="userAddr"
									id="sample4_postcode" value="${userMainDTO.getUserAddr() }"
									style="width: 73%; float: left" /> <input type="button"
									class="btn btn-secondary" onclick="sample4_execDaumPostcode();"
									style="float: right; height: 53px; vertical-align: center;"
									value="우편번호 수정" /><span style="line-height: 100%"><br /></span>
							</div>
							<span style="line-height: 200%"><br /></span>
							<div class="form-group">
							<label style="font-weight: normal;">상세주소 </label>
								<input type="text" class="form-control"
									value="${userMainDTO.getUserFinalAddr() }" >
							</div>
							<div class="form-group">
							<label style="font-weight: normal;">이메일 </label>
								<input type="text" class="form-control"
									value="${userMainDTO.getUserEmail() }" >
							</div>
							<div class="form-group">
							<label style="font-weight: normal;">전화번호 </label>
								<input type="text" class="form-control"
									value="${userMainDTO.getUserPhoneNum() }" >
							</div>
							<br/>
							<div class="form-group" align="center">
								<input type="submit" value="정보 수정하기" 
									class="btn btn-primary py-3 px-5" onclick="update();">
							</div>
						</form>
					</div>
					</c:when>
				
				<c:when test="${!empty c_success }">
					<div class="col-md-7 order-md-last d-flex">
						<form action="" class="bg-light p-4 p-md-5 contact-form">
							<div class="form-group">
								<input type="text" class="form-control"
									value="${companyMainDTO.companyId }" readonly />
							</div>
							<div class="form-group">
								<input type="password" class="form-control"
									value="${companyMainDTO.companyPwd }" />
							</div>
							<div class="form-group">															
								<input type="text" class="form-control"
									value="${companyMainDTO.companyName }" readonly />
							</div>
							<div class="form-group">
								<input type="text" class="form-control"
									value="${companyMainDTO.companyAddr }" readonly />
							</div>
							<div class="form-group">
								<input type="submit" value="Send Message"
									class="btn btn-primary py-3 px-5">
							</div>
						</form>
					</div>
				</c:when>
			</c:choose>



			<div class="col-md-5 d-flex" >
				<div class="row d-flex contact-info mb-5">
					<div class="col-md-12 ftco-animate">
						<div class="box p-2 px-3 bg-light d-flex" style="width: 460px;">
							<div class="icon mr-3">
								<span class="icon-map-signs"></span>
							</div>
							<div>
								<h3 class="mb-3">Address</h3>
								<font color="#e2c0bb"><p>${userMainDTO.getUserAddr() }&nbsp;&nbsp;|&nbsp;
								&nbsp;${userMainDTO.getUserFinalAddr() }</p></font>
							</div>
							<br/>
						</div>
						<div class="box p-2 px-3 bg-light d-flex">
							<div class="icon mr-3">
								<span class="icon-phone2"></span>
							</div>
							<div>
								<h3 class="mb-3">Contact Number</h3>
								<p>
									<a href="tel://1234567920">${userMainDTO.getUserPhoneNum() }</a>
								</p>
							</div>
						</div>
						<div class="box p-2 px-3 bg-light d-flex">
							<div class="icon mr-3">
								<span class="icon-paper-plane"></span>
							</div>
							<div>
								<h3 class="mb-3">Email Address</h3>
								<p>
									<a href="mailto:info@yoursite.com">${userMainDTO.getUserEmail() }</a>
								</p>
							</div>
						</div>
						<div class="box p-2 px-3 bg-light d-flex">
							<div class="icon mr-3">
								<span class="icon-globe"></span>
							</div>
							<div>
								<h3 class="mb-3">Website</h3>
								<p>
									<a href="#">yoursite.com</a>
								</p>
							</div>
						</div>
						
						<div class="box p-2 px-3 bg-light d-flex">
							<div class="icon mr-3">
								<span class="icon-globe"></span>
							</div>
							<div>
								<h3 class="mb-3">Point</h3>
								<p>
									<a href="#">${userMainDTO.getUserPoint() }</a>
								</p>
							</div>
						</div>
						
						<div class="box p-2 px-3 bg-light d-flex">
							<div class="icon mr-3">
								<span class="icon-globe"></span>
							</div>
							<div>
								<h3 class="mb-3">Coupon</h3>
								<p>
									<a href="#">${userMainDTO.getUserCoupon() }</a>
								</p>
							</div>
						</div>
						
				</div>
			</div>
		</div>
		</div>
	</div>
	</section>

	<br/><br/><br/>

	<footer class="ftco-footer ftco-section">
	<div class="container" >
		<div class="row mb-5">
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">
						About <span><a href="index.html">Ecoland</a></span>
					</h2>
					<p>Far far away, behind the word mountains, far from the
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
						<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Online
								Enquiry</a></li>
						<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>General
								Enquiry</a></li>
						<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Booking</a></li>
						<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Privacy</a></li>
						<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Refund
								Policy</a></li>
						<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Call
								Us</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Experience</h2>
					<ul class="list-unstyled">
						<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Adventure</a></li>
						<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Hotel
								and Restaurant</a></li>
						<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Beach</a></li>
						<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Nature</a></li>
						<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Camping</a></li>
						<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Party</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Have a Questions?</h2>
					<div class="block-23 mb-3">
						<ul>
							<li><span class="icon icon-map-marker"></span><span
								class="text">203 Fake St. Mountain View, San Francisco,
									California, USA</span></li>
							<li><a href="#"><span class="icon icon-phone"></span><span
									class="text">+2 392 3929 210</span></a></li>
							<li><a href="#"><span class="icon icon-envelope"></span><span
									class="text">info@yourdomain.com</span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 text-center">

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