<%-- <%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Ecoland - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8"> --%>
<!-- <meta name="viewport"
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
 -->
<div>
	<jsp:include page="mainHeader.jsp" flush="false" />
	<%@ page contentType="text/html; charset=UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%
		request.setCharacterEncoding("UTF-8");
		String cp = request.getContextPath();
	%>

</div>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- <script type="text/javascript"
	src="/springwebMybatis/resources/js/util.js"></script> -->

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
		
		str = f.sample4_postcode.value;
		str = str.trim();
		if(!str){
			alert("\n변경 할 주소를 입력하세요.");
			f.sample4_postcode.focus();
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

		alert("회원정보가 수정되었습니다.");

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


<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	<section class="ftco-section contact-section ftco-no-pb" id="contact-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<span class="subheading">Partycket</span>
					<h2 class="mb-4">My Page</h2>
				</div>
			</div>
			
			<div class="row block-9">
				<c:choose>
					<c:when test="${!empty success }">
						<div class="col-md-7 order-md-last d-flex">
							<form action="" class="bg-light p-4 p-md-5 contact-form"
								method="post" name="myUpdateForm">
								<div class="form-group">
									<label style="font-weight: normal;">아이디 </label> 
									<input type="text" class="form-control" id="userId" name="userId"
										value="${userMainDTO.getUserId()}" readonly />
								</div>
								<div class="form-group">
									<label style="font-weight: normal;">패스워드 </label> <input
										type="text" class="form-control"
										value="${userMainDTO.getUserPwd() }" id="userPwd"
										name="userPwd">
								</div>
								<div class="form-group">
									<label style="font-weight: normal;">이름 </label> <input
										type="text" class="form-control"
										value="${userMainDTO.getUserName() }" readonly id="userName"
										name="userName" />
								</div>
								<div class="form-group" align="left">
									<label style="font-weight: normal;">주소 </label> <br /> <input
										type="text" class="form-control" name="userAddr"
										id="sample4_postcode" value="${userMainDTO.getUserAddr() }"
										name="userAddr" style="width: 73%; float: left" /> <input
										type="button" class="btn btn-secondary"
										onclick="sample4_execDaumPostcode();"
										style="float: right; height: 53px; vertical-align: center;"
										value="우편번호 수정" /><span style="line-height: 100%"><br /></span>
								</div>
								<span style="line-height: 200%"><br /></span>
								<div class="form-group">
									<label style="font-weight: normal;">상세주소 </label> <input
										type="text" class="form-control"
										value="${userMainDTO.getUserFinalAddr() }" id="userFinalAddr"
										name="userFinalAddr">
								</div>
								<div class="form-group">
									<label style="font-weight: normal;">이메일 </label> <input
										type="text" class="form-control"
										value="${userMainDTO.getUserEmail() }" id="userEmail"
										name="userEmail">
								</div>
								<div class="form-group">
									<label style="font-weight: normal;">전화번호 </label> <input
										type="text" class="form-control"
										value="${userMainDTO.getUserPhoneNum() }" id="userPhoneNum"
										name="userPhoneNum">
								</div>
								<br />
								<div class="form-group" align="center">
									<input type="hidden" name="num"
										value="${userMainDTO.getNum() }"> <input type="button"
										value="정보 수정하기" class="btn btn-primary py-3 px-5"
										onclick="update();">
								</div>
							</form>
						</div>
					</c:when>

					<c:when test="${!empty c_success }">
						<div class="col-md-7 order-md-last d-flex">
							<div id="tabs">
								<ul style="text-align: center; width: auto;">
									<li><a href="#tabs-1" style="text-align: center;">회원정보</a></li>
									<li><a href="#tabs-2">등록한 공연 내역</a></li>
									<li><a href="#tabs-3">공연 등록</a></li>
								</ul>
								<div id="tabs-1">
									<jsp:include page="companyInfo.jsp" flush="false" />
								</div>
								<div id="tabs-2">
									<jsp:include page="performList.jsp" flush="false" />
								</div>
								<div id="tabs-3">
									<jsp:include page="regConcert.jsp" flush="false" />
								</div>
							</div>
						</div>
					</c:when>
				</c:choose>

				<c:choose>
					<c:when test="${!empty success }">
				<div class="col-md-5 d-flex">
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
								<br />
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
				</c:when>
				</c:choose>
			</div>
		</div>
	</section>

	<br />
	<br />
	<br />

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
<!-- 	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="/ticketing/resources/js/google-map.js"></script> -->

	<script src="/ticketing/resources/js/main.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#tabs").tabs();
		});
	</script>

	<div>
		<jsp:include page="mainFooter.jsp" flush="false" />
	</div>

</body>
</html>