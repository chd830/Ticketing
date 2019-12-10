<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<head>
    <title>Ecoland - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <link rel="stylesheet" href="/ticketing/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/ticketing/resources/css/animate.css">
    <link rel="stylesheet" href="/ticketing/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/ticketing/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/ticketing/resources/css/magnific-popup.css">
    <link rel="stylesheet" href="/ticketing/resources/css/aos.css">
    <link rel="stylesheet" href="/ticketing/resources/css/ionicons.min.css">
    <link rel="stylesheet" href="/ticketing/resources/css/flaticon.css">
    <link rel="stylesheet" href="/ticketing/resources/css/icomoon.css">
    <link rel="stylesheet" href="/ticketing/resources/css/style.css">
    
  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">Ecoland</a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
	          <li class="nav-item"><a href="index.html#home-section" class="nav-link"><span>Home</span></a></li>
	          <li class="nav-item"><a href="index.html#services-section" class="nav-link"><span>Services</span></a></li>
	          <li class="nav-item"><a href="index.html#about-section" class="nav-link"><span>About</span></a></li>
	          <li class="nav-item"><a href="index.html#destination-section" class="nav-link"><span>Destination</span></a></li>
	          <li class="nav-item"><a href="index.html#hotel-section" class="nav-link"><span>Hotel</span></a></li>
	          <li class="nav-item"><a href="index.html#restaurant-section" class="nav-link"><span>Restaurant</span></a></li>
	          <li class="nav-item"><a href="index.html#blog-section" class="nav-link"><span>Blog</span></a></li>
	          <li class="nav-item"><a href="index.html#contact-section" class="nav-link"><span>Contact</span></a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
	  
	  <section class="hero-wrap hero-wrap-2" style="background-image: url('images/destination-single.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread">Discount</h1>
             <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Discount <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
    
     <div  align="center">
    	<img src="/ticketing/resources/image/batang.png" alt="이미지없음">
    </div>
    
    <table align="center"><tr height="200"><td>&nbsp;</td></tr></table>
    
    <c:forEach var="dto" items="${discountDataList }">

		<table align="center" width="500">
			<tr>
				<td align="right">(총 ${dto.amount } 남음)</td>
			</tr>
		</table>

		<c:if test="${dto.amount==0 }">

		    <table border="1px" bordercolor="#D39F97" width="500" align="center">
		    	<tr style="border-bottom-color: #FFFFFF;">
		    		<td style="font-size: 15pt; color: #D39F97; padding: 10px;">
		    			&nbsp;${dto.discountName }<br/>
		    		</td>
		    	</tr>
		    	<tr style="border-bottom-color: #FFFFFF;">
		    		<td align="right" style="padding-right: 10px;">
		    			<font size="12" color="#000000"><b><del>${dto.discountPrice }원</del></b></font>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td style="font-size: 10pt; padding: 10px;">
		    			&nbsp;${dto.discountDesc }
		    		</td>
		    	</tr>
		    	
		    	
	    		<tr style="border-top: 2px dotted #D39F97;" height="50">
		    		<td style="background-color: #D39F97; color:#ffffff; font-size: 18pt;" align="center">
		    			<a onclick="exit();" style="cursor: pointer;"><del>다운받기↓</del></a>
		    		</td>
		    	</tr>
		    </table>
		    		    	
	    </c:if>
	    
	    <c:if test="${dto.amount!=0 }">
    	
		    <table border="1px" bordercolor="#D39F97" width="500" align="center">
		    	<tr style="border-bottom-color: #FFFFFF;">
		    		<td style="font-size: 15pt; color: #D39F97; padding: 10px;">
		    			&nbsp;${dto.discountName }<br/>
		    		</td>
		    	</tr>
		    	<tr style="border-bottom-color: #FFFFFF;">
		    		<td align="right" style="padding-right: 10px;">
		    			<font size="12" color="#000000"><b>${dto.discountPrice }원</b></font>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td style="font-size: 10pt; padding: 10px;">
		    			&nbsp;${dto.discountDesc }
		    		</td>
		    	</tr>
		    	
		    	
	    		<tr style="border-top: 2px dotted #D39F97;" height="50">
	    			
		    		<td style="background-color: #D39F97; color:#ffffff; font-size: 18pt;" align="center">
		    			<a onclick="download_discount(${dto.discountCode});" style="cursor: pointer;">다운받기↓</a>
		    			<input type="hidden" value="${dto.discountCode }" name="discountCode">
		    		</td>
		    	</tr>	
	    	
	    	 </table>
	    		
	    </c:if>

	    <table align="center"><tr height="20"><td>&nbsp;</td></tr></table>
    
    </c:forEach>
    
	<table align="center"><tr height="100"><td>&nbsp;</td></tr></table>
	
	 <div  align="center">
    	<img src="/ticketing/resources/image/cou.PNG" alt="이미지없음">
    </div>

    <footer class="ftco-footer ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">About <span><a href="index.html">Ecoland</a></span></h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Online Enquiry</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>General Enquiry</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Booking</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Privacy</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Refund Policy</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Call Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Experience</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Adventure</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Hotel and Restaurant</a></li>
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
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

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
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="/ticketing/resources/js/google-map.js"></script>
  
  <script src="/ticketing/resources/js/main.js"></script>
  
  <script type="text/javascript">
  
  function exit(){
	  alert("선착순 종료되었습니다.");
  }
  
  function download_discount(discountCode){

		$.ajax({
			type:"GET",
			url:"download_check.action",
			data:{"discountCode":discountCode},
			datatype : "text",
			success:function(args){
				
				if(args=="thankyou"){
				
					alert("할인쿠폰을 지급했습니다.");
					location.href = "<%=cp%>/download_discount?discountCode="+discountCode;
					
				}
				else{
					alert("이미 할인쿠폰을 받았습니다.");		
				}
			},
			error:function(e){
				alert(e.responseText);
			}
		})	
  }
		
  </script>
  
  
  
  
  
  
  
  
  
  </body>
  
</html>