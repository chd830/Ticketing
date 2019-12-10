<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="utf-8">

<script type="text/javascript">
$(function(){
	
	listPage(1);
});

$(document).ready(function(){
	
	$(function() {
		$("#sendButton").click(function(){
			var params = "subject=" + $("#subject").val() +
							"&message=" + $("message").val();
			var radioVal = $('input[name="radio"]:checked').val();
	
			$.ajax(
				type:"POST",
				url:"poster",
				data:params,radioval
				 
			},
			
			beforeSend:showRequest,
			error:function(e){
				
				alert(e.responseText);
			}
							
		});
		
	});
	
});

function showRequest() {
	
	var subject = $.trim($("#subject").val());
	var message = $.trim($("#message").val());
	
	
	
	if(!subject) {
		
		alert("\n제목을 입력하세요");
		$("#subject").focus();
		return false;
	}
	
	if(!message) {

		alert("\n내용을 입력하세요");
		$("#message").focus();
		return false;
	}
	
	if(message.length>200) {
		
		alert("\n200자이상 입력 불가합니다. ");
		$("#message").focus();
		return false;
	}
	return true;
}

function listPage(page) {
	
	var url = "poster";
	$.post(url,{pageNum:page},function(args) {
		
		$("#listData").html(args);
		
	});
	
	$("#listData").show();
		
} 

function deleteData(num,page) {
	  
	var url = "poster";
	
	$.post(url,{num:num,pageNum:page},function(args) {
		
		$("#listData").html(args); 
		
	});		
}
</script>

<head>
<title>관람후기</title>
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

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
</head>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	<div class="col-md-12 tour-wrap">
	

	<%-- 		<c:if test="${totalDataCount!=0 }">
				<table width="600" border="0" cellpadding="0" cellspacing="0"
					align="center">
					<c:forEach var="dto" items="${lists }">
						<tr>
							<td colspan="2" bgcolor="#999999" height="1"></td>
						</tr>

						<tr height="30" bgcolor="#dbdbdb">
							<td width="300" style="padding-left: 10px;"><b>No
									${dto.listNum }.&nbsp;${dto.name }(<a
									href="mailto:${dto.email}">${dto.email}</a>)
							</b></td>

							<td width="300" align="right" style="padding-right: 10px;">
								${dto.created }&nbsp;<a
								href="javascript:deleteData('${dto.num }','${pageNum }')">삭제</a>
							</td>
						</tr>

						<tr>
							<td height="50" style="padding-left: 10px;" colspan="2">${dto.content }</td>
					</c:forEach>

					<tr>
						<td colspan="2" bgcolor="#dbdbdb" height="2"></td>
					</tr>

					<tr height="30">
						<td align="center" colspan="2">${pageIndexList }</td>
					</tr>

				</table>
			</c:if>
 --%>
	</div>
	

			<!-- END comment-list -->
			<div class="comment-form-wrap pt-5">
				<h3 class="mb-5">Leave a comment</h3>

				<div class="form-group">
					<label for="name">subject *</label> <input type="text"
						class="form-control" id="subject">
				</div>
				<div class="form-group">
					<fieldset>
						<legend>별점 </legend>
						<label for="radio-1">★★★★★강력추천</label> <input type="radio"
							name="radio" id="radio-1"> <label for="radio-2">★★★★추천</label>
						<input type="radio" name="radio" id="radio-2"> <label
							for="radio-3">★★★보통</label> <input type="radio" name="radio"
							id="radio-3"> <label for="radio-2">★★아쉬움</label> <input
							type="radio" name="radio" id="radio-4"> <label
							for="radio-3">★실망</label> <input type="radio" name="radio"
							id="radio-5">
					</fieldset>
				</div>
				<div class="form-group">
					<label for="message">Message</label>
					<textarea name="" id="message" cols="30" rows="10"
						class="form-control"></textarea>
				</div>
				<div class="form-group">
					<input type="submit" value="Post Comment"
						class="btn py-3 px-4 btn-primary" id="sendButton">
				</div>
			</div>
	
	
<!-- 	<span id="listData" style="display: none"></span>  -->

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		$(function() {
			$("input").checkboxradio();
		});
	</script>


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
	<script src="/ticketing/resources/js/main.js"></script>

</body>
</html>