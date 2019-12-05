<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>포스터</title>


<style>
.post {
	display: inline-block;

}
.selector img{
position: absolute; top:0; left: 0;
width: 100%;
height: 100%;
}


</style>
</head>
<body>
	<!-- Main 시작  -->
	<%-- <div>
		<jsp:include page="header.jsp" flush="false" />
	</div> --%>
	<!-- Main 종료  -->

	<!--상단 포스터 시작  -->
	<div>
	<div style="border-bottom: 1px solid black; width: 400px; margin-left: 500px;">
		<h3>
			<span id="spanPerfName">${p_dto.performName}</span>      
		</h3>
	</div>
	<br/>
	<div id="container" align="center" style="vertical-align: top; border: 0pt groove #3f51b5;">
		<div class="post">
			<img src="<c:url value='/image/${p_dto.performMainImage }'/>"
									style="width: 250px; height: 450px;" class="img-fluid">
		</div>
			
		<div class="post" style="vertical-align: top; border: 0pt groove #3f51b5; width: 400px; padding-left: 40px;" >
		
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
				<tr><td colspan="2" style="border-bottom: 1px solid #e6e6e6; height: 20px; width: 400;"><br/><br/></td></tr>
			</table>
			<br/>
			<table align="left" border="0" width="500" style="color: #333333">
				<tr>
					<td width="100" valign="middle" style="padding-bottom: 30px;">티켓가격</td>
					<td width="400" valign="middle" style="padding-left: 30px;">
					
					
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
	</div>
		<div class="post" style="vertical-align: top; border: 0pt groove #3f51b5; height: 550px; padding-left: 40px; 
		border-left: 1px solid #e6e6e6;">
			<jsp:include page="home.jsp" flush="false" />
		</div>
	</div>
	<hr/>
</div>

	<!--상단 포스터 종료  -->


	<!-- 하단 TAB BAR 시작  -->
	<br/><br/><br/>
	<div id="tabs">
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
		<div class="post">
			
		</div>
	<!-- 하단 TAB BAR 종료  -->

	<!-- footer 시작  -->
	<%-- <div>
		<jsp:include page="footer.jsp" flush="false" />
	</div> --%>
	<!-- footer 종료  -->
	
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#tabs").tabs();
	});
</script>
</body>
</html>