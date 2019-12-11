<!-- Main header 시작  -->
	 <div>
		<jsp:include page="mainHeader.jsp" flush="false" />
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	</div>
<br/><br/><br/><br/><br/>
<!-- Main header 종료  -->

<body>
	<!--상단 포스터 시작  -->
<<<<<<< HEAD
	<div>
	<div style="border-bottom: 1px solid black; width: 950px; margin-left: 480px;">
<<<<<<< HEAD
=======
 	<div>
	<div style="border-bottom: 1px solid black; width: 400px; margin-left: 500px;">
>>>>>>> fdcaf7b32d52df90f0105efad85dae39978dae98
=======
>>>>>>> b4715e2c6bee6371c0d746af47787eb64439deb2
		<h3>
			<span id="spanPerfName">${p_dto.performName}</span>      
		</h3>
	</div>
	<br/>
	<div id="container" align="center" style="vertical-align: top; border: 0pt groove #3f51b5;">
		<div class="post">
			<img src="<c:url value='/image/${p_dto.performMainImage }'/>"
									style="width: 270px; height: 450px; padding-right: 20px;" class="img-fluid">
		</div>
			
		<div class="post" style="vertical-align: top; border: 0pt groove #3f51b5; width: 400px; " >
		
			<table border="0" width="400" style="color: #333333;">
				<tr valign="top" style="padding-left: 15px;">
					<td>장르</td>
					<td>${p_dto.genreName}</td>
				</tr>  
				<tr valign="top">
					<td>일시</td>
					<td>${p_dto.performStartDate} ~ ${p_dto.performEndDate}</td>
				</tr>
				<tr valign="top">
					<td>장소</td>
					<td>${p_dto.placeName}</td>

				</tr>
				<tr valign="top">
					<td>등급</td>
					<td>${p_dto.ratingName}</td>
				</tr>
				<tr valign="top">
					<td>관람시간</td>
					<td>${p_dto.performRunningTime}분</td>
				</tr>
				<tr><td colspan="2" style="border-bottom: 1px solid #e6e6e6; margin-top: 20px;"><br/><br/></td></tr>
			</table>
			<br/>
			<table align="left" border="0" width="500" style="color: #333333">
				<tr>
					<td width="100" style="padding-bottom: 30px;" valign="middle">티켓가격</td>
					
					<td width="400" style="padding-left: 30px;">
					<c:if test="${pay_dto.notSelectClass!=0}">
						전석:<font color="#ea002c"> ${pay_dto.notSelectClass}</font><br/>
					</c:if>
					<c:if test="${pay_dto.notSelectClass==0}">
						R석 : <font color="#ea002c">${pay_dto.rclass}</font><br/>
			
						S석 : <font color="#ea002c">${pay_dto.sclass}</font><br/>
					
						V석 : <font color="#ea002c">${pay_dto.vclass}</font><br/><br/>
					</c:if> 
					</td>
				</tr>	
				
			</table>		
<<<<<<< HEAD
	</div>
		<div class="post" style="vertical-align: top; border: 0pt groove #3f51b5; height: 500px; padding-left: 20px; 
		border-left: 1px solid #e6e6e6;">
			<jsp:include page="home.jsp" flush="false" />
=======
	</div> 
		<div class="post" style="vertical-align: top; border: 0pt groove #3f51b5; height: 550px; padding-left: 40px; border-left: 1px solid #e6e6e6;" id="home">
			<%-- <jsp:include page="home.jsp" flush="false" /> --%>
>>>>>>> fdcaf7b32d52df90f0105efad85dae39978dae98
		</div>
	</div>
	<div style="border-bottom: 1px solid black; width: 950px; margin-left: 480px;" ></div>
	
</div>

	<!--상단 포스터 종료  -->


	<!-- 하단 TAB BAR 시작  -->
<<<<<<< HEAD
	<br/><br/><br/>
	<div id="tabs" style="width: 950px; margin: auto;">
<<<<<<< HEAD
=======
 	<br/><br/><br/>
	<div id="tabs">
>>>>>>> fdcaf7b32d52df90f0105efad85dae39978dae98
=======
>>>>>>> b4715e2c6bee6371c0d746af47787eb64439deb2
		<ul style="text-align: center;">
			<li><a href="#tabs-1" style="text-align: center;">상세정보</a></li>
			<li><a href="#tabs-2">관람후기</a></li>
			<li><a href="#tabs-3">공연장정보</a></li>
			<li><a href="#tabs-4">취소/환불안내</a></li>
		</ul>
		<div id="tabs-1">
			<jsp:include page="information.jsp" flush="false"/>
		</div>
		<div id="tabs-2"> 
			<jsp:include page="review.jsp" flush="false" />
		</div>
		<div id="tabs-3">
			<jsp:include page="map.jsp" flush="false" />
		</div>
		<div id="tabs-4">
			<jsp:include page="cancle.jsp" flush="false" />
		</div>
	</div>
<<<<<<< HEAD
<<<<<<< HEAD
=======
		<div class="post">
			
		</div> 
	<!-- 하단 TAB BAR 종료  -->

	<!-- footer 시작  -->
	<%-- 	 <div>
			<jsp:include page="footer.jsp" flush="false" />
		</div>  --%>
	<!-- footer 종료  -->
>>>>>>> fdcaf7b32d52df90f0105efad85dae39978dae98
=======
>>>>>>> b4715e2c6bee6371c0d746af47787eb64439deb2
	
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#tabs").tabs();
	});
	
	$(document).ready(function() {
		
		$.get('calData', function(args) {
			$('#home').html(args);
		});
		
		
	});
	
</script>

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> b4715e2c6bee6371c0d746af47787eb64439deb2
<br/><br/><br/><br/><br/>
	<!-- 하단 TAB BAR 종료  -->

 <!-- footer 시작  -->
	 <div>
		<jsp:include page="mainFooter.jsp" flush="false" />
	</div>
<!-- footer 종료  --> 
	
<<<<<<< HEAD
=======
>>>>>>> fdcaf7b32d52df90f0105efad85dae39978dae98
=======
>>>>>>> b4715e2c6bee6371c0d746af47787eb64439deb2
</body>
</html>


