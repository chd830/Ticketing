<%@ page contentType="text/html; charset=UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

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
    
    <script type="text/javascript">
    
	function userLogin(){
		
		var f = document.myForm;
		
		if(!f.userId.value) { 
			
			alert("아이디를 입력하세요")
			f.userId.focus();
			return;
		}
		
		if(!f.userPwd.value) {
			
			alert("패스워드 입력하세요")
			f.userPwd.focus();
			return;
		}
	
		f.action ="userLogin_ok.action";
		f.submit();
	
	}
    
    </script>
    
  </head>
  
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="<%=cp%>/main.action">Ecoland</a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
	          <li class="nav-item"><a href="#home-section" class="nav-link"><span>Home</span></a></li>
	          <li class="nav-item"><a href="<%=cp%>/login.action" class="nav-link"><span>Login</span></a></li>
	          <li class="nav-item"><a href="<%=cp%>/userSignUp.action" class="nav-link"><span>Sign Up</span></a></li>
	          <li class="nav-item"><a href="#about-section" class="nav-link"><span>Musical</span></a></li>
	          <li class="nav-item"><a href="#destination-section" class="nav-link"><span>Concert</span></a></li>
	          <li class="nav-item"><a href="#restaurant-section" class="nav-link"><span>Classic</span></a></li>
	          <li class="nav-item"><a href="#blog-section" class="nav-link"><span>Exhibition</span></a></li>
	          <li class="nav-item"><a href="#contact-section" class="nav-link"><span>Theater</span></a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
	  
	 <!--  <section class="hero-wrap" style="background-image: url('images/destination-single.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-start"> -->
        <br/><br/><br/><br/>
          <div class="Layer" align="center">
            <h1 class="mb-3 bread"><b>Login<b/></h1>
            <p><a href="#" class="btn btn-primary py-2 px-4">General Membership Login</a> 
            <a href="#" class="btn btn-black py-2 px-4">Corporate Membership Login</a></p>
          </div>
      <!--   </div>
      </div>
    </section> -->

    <section class="ftco-section ftco-services-2 ftco-no-pt">
    	<!-- <div class="container-fluid px-0 bg-light">
    		<div class="container">
    			
    		</div>
    	</div> -->
      <div class="container">
        <div class="row">
        	
    			<div style="margin: 0 auto;" align="center"> <!-- start -->
    				<!-- <div class="pt-5 mt-5"> -->
         
              
              <div class="comment-form-wrap pt-5" style="width: 650px; background-color: white">
                <form action="" class="p-5 bg-light" name="myForm" method="post">
                  <div class="form-group" align="left">
                    <label for="name" style="font-weight: normal;">Id *</label>
                    <input type="text" class="form-control" name="userId">
                  </div>
                  <div class="form-group" align="left">
                    <label for="name" style="font-weight: normal;">Password *</label>
                    <input type="password" class="form-control" name="userPwd">
                  </div>
                  
                  <br/>
                  
                  <div class="form-group" style="width: 300px;">
                    <input type="button" value="Login" class="btn py-3 px-4 btn-primary" onclick="userLogin();">
                    &nbsp;&nbsp;
                    <input type="button" value="Sign Up" class="btn py-3 px-4 btn-primary"
                    onclick="javascript:location.href='userSignUp.action';">
                  </div>
				
				<tr height="30">
	<td colspan="2" align="center">
	<font color="#000000"><b>${message }</b></font>
	</td>
</tr> 
				
                </form>
              </div>
            </div>
    			</div>
        </div>
      </div>
      
    </section> <!-- .section -->


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
    
  </body>
</html>