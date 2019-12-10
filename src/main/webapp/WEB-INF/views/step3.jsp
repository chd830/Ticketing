<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String msg= (String)request.getAttribute("msg");
	
	if(msg==null||msg.equals("")){
		//메세지가 있으면 alert(msg)해야함 -> 근데 못하겠음
	}
	
	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Step1</title>

<link rel="stylesheet" href="/ticketing/resources/css/book.css" type="text/css"/>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<style type="text/css">

.white_content {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.8);
    opacity:0;
    -webkit-transition: opacity 400ms ease-in;
    -moz-transition: opacity 400ms ease-in;
    transition: opacity 400ms ease-in;
    pointer-events: none;
    
   
    
    
}
.white_content:target {
    opacity:1;
    pointer-events: auto;
}
.white_content > div {
	position: absolute;
	top: 25%;
	left: 25%;
	width: 40%;
	height: 30%;
	border: 1px solid black;
	background-color: white;
	overflow: auto;	
	font-size: 13pt;
	
}

</style>

</head>


<body>

<form action="" name="step3">
	<div class="post" style="float: left;">
		<div>
			<table width="800" bgcolor="#363636"">
					<tr>
						<td width="16%" bgcolor="#353535"><img style="width: 110px; height: 50px;" src="/ticketing/resources/images/mark.PNG"></td>
						<td width="16%" bgcolor="#797979">&nbsp;&nbsp;<font size="1.5px;" color="#B3B3B3"><b>Step1</b></font><br/>&nbsp;&nbsp;<font size="3px;"  color="#ffffff"><b>관람일/회차</b></font></td>
						<td width="16%" bgcolor="#696969">&nbsp;&nbsp;<font size="1.5px;" color="#B3B3B3"><b>Step2</b></font><br/>&nbsp;&nbsp;<font size="3px;" color="#ffffff"><b>좌석선택</b></font></td>
						<td width="16%" bgcolor="#ffffff">&nbsp;&nbsp;<font size="1.5px;" color="#3A85C7"><b>Step3</b></font><br/>&nbsp;&nbsp;<font size="3px;" color="black"><b>할인/쿠폰</b></font></td>
						<td width="16%" bgcolor="#494949">&nbsp;&nbsp;<font size="1.5px;" color="#B3B3B3"><b>Step4</b></font><br/>&nbsp;&nbsp;<font size="3px;" color="#ffffff"><b>수령방법</b></font></td>
						<td width="16%" bgcolor="#353535">&nbsp;&nbsp;<font size="1.5px;" color="#B3B3B3"><b>Step5</b></font><br/>&nbsp;&nbsp;<font size="3px;" color="#ffffff"><b>결제방법</b></font></td>
					</tr>
			</table>
		</div>
			
		<br/>
			
		<div id="content" >
		
			<table width="770" style="margin-left: 15px; margin-right: 15px;">
				<tr style="border: hidden;">
					<td width="770" style="padding: 5px; padding-left: 20px;
						background-color: #7C9AB6; border-color: #7C9AB6; border: 1px; color: white; size: 6px;">
						<b>할인방법&nbsp;</b>
					</td>
				</tr>
			</table>
		
				
			<table width="680" style="margin-left: 50px; margin-top: 7px;">
				<tr  height="30">
					<td width="80"><font size="2pt"><b>등급선택</b></font></td>
					<td style="background-color: #FDEEEA;" width="600"><font size="2pt" color="#888888">
						<input type="radio" name="v" checked="checked">${stdto.seatClass }
						</font>
					</td>
				</tr>
			</table>
						
					
			<table width="700" height="20" style="margin-left: 50px; margin-top: 10px;" bgcolor="#EFEFEF">
				<tr id="table_tr_top" height="15" >
					<td align="center" width="200">할인명</td>
					<td align="center" width="166">할인금액</td>
					<td align="center" width="100">매수</td>
					<td align="center" width="162">설명</td>
					<td align="center" width="100">사용하기</td>
				</tr>
				
			</table>
			
			
			<!-- 할인 데이터 -->
			<table width="700" style="margin-left: 50px;">
				
				<c:if test="${discountList.size()!=0 }">
			
					<c:forEach var="dto" items="${discountList}">
					
						<tr height="20">
							<td align="center" width="200">${dto.discountName }</td>
							<td align="center" width="166" id="discountPrice" >${dto.discountPrice }</td>
							<td align="center" width="100">
								<select id="discountInwon">
									<c:forEach begin="0" end="${stdto.inwon }" step="1" var="i">
										<option value="${i }">${i }매</option>
									</c:forEach>
								</select>
							</td>
							<td align="center" width="162">${dto.discountDesc }</td>
							<td align="center" width="100"><input type="button" value="사용하기" class="use_discount"></td>
						</tr>
						
					</c:forEach>
				
				</c:if>
				<c:if test="${discountList.size()==0 }">
					<tr>
						<td align="center" colspan="4">보유하신 할인이 없습니다.</td>
					</tr>	
				</c:if>
				
			</table>
			
			<table width="770" style="margin-left: 15px; margin-right: 15px;">
				<tr style="border: hidden;">
					<td width="770" style="padding: 5px; padding-left: 20px;
						background-color: #7C9AB6; border-color: #7C9AB6; border: 1px; color: white; size: 6px;">
						<b>쿠폰선택&nbsp;</b>
					</td>
				</tr>
			</table>
			
			<table width="700" style="margin-left: 50px;">
				<tr  height="30">
					<td></td>
					<td align="right"><a href="#open"><input type="button" value="쿠폰등록" id="blue_btn" name="coupon"></a></td>
				</tr>
			</table>	
			
		
			<table width="700" height="20" style="margin-left: 50px; margin-top: 10px;" bgcolor="#EFEFEF">
				<tr id="table_tr_top" height="15" >
					<td align="center" width="200">쿠폰명</td>
					<td align="center" width="166">쿠폰금액</td>
					<td align="center" width="100">매수</td>
					<td align="center" width="162">설명</td>
					<td align="center" width="100">사용하기</td>
				</tr>
				
			</table>
			
			<!-- 쿠폰등록창 START -->
			<form action="" name="myForm">
	   			<div class="white_content" id="open">
      				<table width="100%" bgcolor="#4C7CCE" style="border-bottom-color: 1px solid black" >
      					<tr >
      						<td style="color: white">&nbsp;할인쿠폰 등록 </td>
      						<td style="color: white" align="right"><a href="#close">x닫기</a></td>
      					</tr>
      				</table>
      			
          			<p style="color: #929393; margin-left: 20px;"><b>쿠폰번호를 입력해주세요</b></p>
          			
          			<table width="90%" bgcolor="#EBF2F8" style="margin-left: 20px;">
          				<tr height="10"></tr>
          				<tr>
          					<td>&nbsp;&nbsp;&nbsp;</td>
          					<td style="font-size: 12pt;"><b>쿠폰번호 입력&nbsp;&nbsp;</b></td>
          					<td><input type="text" name="couponCode"></td>
          					<td><input type="button" value=" 등록 " onclick="coupon_input();" style="background-color: #4C7CCE; color: white; border: none; size: 12pt;"></td>
          					<td>&nbsp;&nbsp;&nbsp;</td>
          				</tr>
          				<tr height="10"></tr>
          			</table>
          			<br/>
          			<table style="color: #888888; font-size: 10pt; margin-left: 20px;" >
           			<tr>
           				<td>·발급된 쿠폰은 My공연 > 공연할인쿠폰에서 확인가능합니다.</td>
           			</tr>
           			<tr height="1"></tr>
           			<tr>
           				<td>·쿠폰은 아이디당 1회 발급가능하며, 타쿠폰과 중복사용이 불가능합니다.</td>
           			</tr>
           			<tr height="1"></tr>
           			<tr>
           				<td>·쿠폰은 명시된 기간에만 발급 및 사용이 가능합니다.</td>
           			</tr>
     			</table>
   			</div>
   		</form>
  		<!-- 쿠폰등록창 END -->
			
			
			<!-- 쿠폰 데이터 -->
			<table width="700" height="80" style="margin-left: 50px;">
				<c:if test="${couponList.size()!=0 }">
			
					<c:forEach var="dto" items="${couponList}">
						<tr height="20">
							<td align="center" width="200">${dto.couponCode }</td>
							<td align="center" width="166" id="couponPrice" >${dto.couponPrice }</td>
							<td align="center" width="100">
								<select id="couponInwon">
									<c:forEach begin="0" end="${stdto.inwon }" step="1" var="i">
										<option value="${i }">${i }매</option>
									</c:forEach>
								</select>
							</td>
							<td align="center" width="162">${dto.couponDesc }</td>
							<td align="center" width="100"><input type="button" value="사용하기" class="use_coupon"></td>
						</tr>
			
					</c:forEach>
				
				</c:if>
				<c:if test="${couponList.size()==0 }">
					<tr>
						<td align="center" colspan="4">보유하신 쿠폰이 없습니다.</td>
					</tr>	
				</c:if>	
			</table>
			
			
			
			
			<font style="margin-left: 50px;">
				<font color="#EC4955" size="2pt;"><b>주의사항)</b></font><font color="#888888" size="2pt;"> 할인은 자동선택 되지 않으니, </font><font color="#EC4955" size="2pt;"><b>적용 받고자 하는 할인이 있는 경우 직접 선택</b></font><font color="#888888" size="2pt;">해주시기 바랍니다.</font>
			</font>
			
			

		</div>
			
		<br/>
			
			
	</div>
	
	<div id="resultDiv" class="post" style="vertical-align: top; float: left; margin-left: 0px;" align="right">
		<jsp:include page="detail3.jsp" />	
	</div>
		
		
</form>
		
		
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

	function coupon_input(){
		
		var f = document.myForm;
		
		var couponCode = f.couponCode.value;
		
		if(!couponCode){
			alert("쿠폰번호를 입력하세요");
			couponCode.focus();
		}else{
		
			f.action = "<%=cp%>/coupon.action?couponCode="+couponCode;
			f.submit();
		}
	}
	
	$(".use_coupon").click(function(){ 
		

		var f = document.step3;
		
		var tr = $(this).parent().parent();
		var td = tr.children();
		var couponPrice = td.eq(1).text();
		var inwon = f.couponInwon.value;
		
		if(inwon=="0"){
			alert("매수를 선택해주세요");
			f.couponInwon.focus();
			return;
		}
		
		$.ajax({
			type:"GET",
			url:"use_coupon.action",
			data:{"couponPrice":couponPrice,"inwon":inwon},
			datatype : "text",
			success:function(args){
				$("#resultDiv").html(args);
			},
			error:function(e){
				alert(e.responseText);
			}
		})	
	});
	
	$(".use_discount").click(function(){ 
		
		var f = document.step3;
		
		var tr = $(this).parent().parent();
		var td = tr.children();
		var discountPrice = td.eq(1).text();
		var inwon = $("#discountInwon option:selected").val();
		
		
		if(inwon=="0"){
			alert("매수를 선택해주세요");
			f.discountInwon.focus();
			return;
		}

		$.ajax({
			type:"GET",
			url:"use_discount.action",
			data:{"discountPrice":discountPrice,"inwon":inwon},
			datatype : "text",
			success:function(args){
				$("#resultDiv").html(args);
			},
			error:function(e){
				alert("E/////"+e.responseText);
			}
		})	
	});
</script>

</body>
</html>