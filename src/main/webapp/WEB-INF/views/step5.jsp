<%@page import="com.ticket.dto.SelectedTicketDTO"%>
<%@page import="com.ticket.dto.AccountDTO"%>
<%@page import="com.ticket.dto.AutoImageDTO"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	int point = (Integer)request.getAttribute("point");	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Step1</title>

<link rel="stylesheet" href="/ticketing/resources/css/book.css" type="text/css"/>
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
	width: 80%;
	height: 80%;
	border: 1px solid black;
	background-color: white;
	overflow: auto;	
	font-size: 13pt;
	
}

.white_content1 {
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
.white_content1:target {
    opacity:1;
    pointer-events: auto;
}
.white_content1 > div {
	position: absolute;
	top: 5%;
	left: 5%;
	width: 65%;
	height: 60%;
	border: 3px solid #0076A3;
	background-color: white;
	overflow: auto;	
	font-size: 13pt;
	
}

.post5{
display: inline-block;

margin-left: 0px;
}

</style>


</head>

<body onload="start();">
	<form action="" name="myForm">
		<div class="post" style="float: left;">
			<div>
				<table width="800" bgcolor="#363636">
					<tr>
						<td width="16%" bgcolor="#353535"><img style="width: 110px; height: 50px;" src="/ticketing/resources/images/mark.PNG"></td>
						<td width="16%" bgcolor="#797979">&nbsp;&nbsp;<font size="1.5px;" color="#B3B3B3"><b>Step1</b></font><br/>&nbsp;&nbsp;<font size="3px;"  color="#ffffff"><b>관람일/회차</b></font></td>
						<td width="16%" bgcolor="#696969">&nbsp;&nbsp;<font size="1.5px;" color="#B3B3B3"><b>Step2</b></font><br/>&nbsp;&nbsp;<font size="3px;" color="#ffffff"><b>좌석선택</b></font></td>
						<td width="16%" bgcolor="#5F5F5F">&nbsp;&nbsp;<font size="1.5px;" color="#B3B3B3"><b>Step3</b></font><br/>&nbsp;&nbsp;<font size="3px;" color="#ffffff"><b>할인/쿠폰</b></font></td>
						<td width="16%" bgcolor="#494949">&nbsp;&nbsp;<font size="1.5px;" color="#B3B3B3"><b>Step4</b></font><br/>&nbsp;&nbsp;<font size="3px;" color="#ffffff"><b>수령방법</b></font></td>
						<td width="16%" bgcolor="#ffffff">&nbsp;&nbsp;<font size="1.5px;" color="#3A85C7"><b>Step5</b></font><br/>&nbsp;&nbsp;<font size="3px;" color="black"><b>결제방법</b></font></td>
					</tr>
				</table>
			</div>
				
				
			
				<div id="content" class="result">
				
					<table width="770" style="margin-left: 15px; margin-right: 15px;">
						<tr style="border: hidden;">
							<td width="770" style="padding: 5px; padding-left: 20px;
								background-color: #7C9AB6; border-color: #7C9AB6; border: 1px; color: white; size: 6px;">
								<b>결제방법&nbsp;</b>
							</td>
						</tr>
					</table>
					
				
			
				
				<table width="735"  style="margin-left: 35px; color: #888888">
					
					<tr>
						<td width="120">YES머니</td>
						<td><input type="text" style="background-color: #EBEBE4;" value="0" id="inputPoint" name="point">원  <input type="checkbox" id="allPointUse"> 전액사용(총 <b>${point }</b>원)
					</tr>
					<tr>
						<td>예치금</td>
						<td><input type="text" style="background-color: #EBEBE4;" value="0" id="inputDeposit" name="deposit">원 <input type="checkbox" id="allDepositUse">전액사용(총 <b>0</b>원)</td>
					<tr>
						<td>YES24상품권</td>
						<td><input type="text" style="background-color: #EBEBE4;" value="0">원 <input type="button" value="사용하기" id="blue_btn" onclick="giftcart();">  (총 <b>0</b>원 / 사용가능 <b>0</b>장)</td>
					</tr>
					<tr>
						<td>공연예매권</td>
						<td>사용가능 예매권[총 <b>0</b>장]<input type="button" value="예매권 번호 등록/사용하기" id="pink_btn"></td>
					</tr>
					
					<tr>
						<td class="td" colspan="2"></td>
						<td></td>
					</tr>
					
					<tr>
						<td><font color="#3A85C7">결제방법선택</font></td>
						<td>
							<input type="radio" checked="checked"><font color="#888888">무통장입금</font>
							<select id="bank">
								<option style="color: #888888" value="nobank">은행선택</option>
								<option style="color: #888888" value="신한은행">신한은행</option>
								<option style="color: #888888" value="국민은행">국민은행</option>
								<option style="color: #888888" value="농협은행">농협은행</option>
								<option style="color: #888888" value="우리은행">우리은행</option>
								<option style="color: #888888" value="하나은행">하나은행</option>								
							</select>
							<a href="#open"><input type="button" value="현금영수증 발행안내▶" style="background-color: #7C8C94; color: white; size: 3pt;"></a>
						</td>
					</tr>
				
					<tr>
						<td class="td" colspan="2"></td>
						<td></td>
					</tr>
					
					<tr>
						<td><font color="#3A85C7">자동주문방지</font></td>
						<td>
							<table>
							
							
								<tr>
									<td rowspan="3">
										<img id="autoImage" name="img" src="/ticketing/resources/images/autoOrder/${aidto.imagePath }" width="200"/>
									</td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td style="padding: 0px;"><p class="reloadImage" style="cursor: pointer;"><img src="/ticketing/resources/images/reload.png">새로고침</p></td>
									
								</tr>
								<tr>
									<td></td>
									<td>
										<input type="text" id="autoImageValue"/>
									</td>
									
								</tr>
							</table>
						</td>
					</tr>
					
				
					
					<tr>
						<td class="td" colspan="2"></td>
						<td></td>
					</tr>
					
					<tr>
						<td colspan="2"></td>
						<td></td>
					</tr>
			
				</table>
				
				<table border="0px;" width="330" style="margin-left: 35px;">
				
					<tr>
						
						<td style="background-color: #F4F4F4; border-color: gray; padding-left: 10px;"><b>
						<font color="#888888" size="2pt;">취소 가능 마감 시간 : </font><font color="#EC4955" size="2pt;">${cancelDate }</font></b>
						</td>
					</tr>
				
				</table>
				
				<table align="center" width="745" style="margin-left: 35px; color: #888888; font-size: 8pt;"  >
				
					
					<tr>
						<td colspan="2"></td>
						<td></td>
					</tr>
					
					<tr>
						<td colspan="2">
						<img src="/ticketing/resources/images/susu.png" style="margin-left: 0px;" width="725"/>
						</td>		
						<td></td>
					</tr>
					
					
					<tr height="40">
						<td colspan="2"></td>
						<td></td>
					</tr>
			
				</table>
				
				<font style="margin-left: 220px;">
					<font color="#888888"><input type="checkbox" id="agree1" style="cursor: pointer;">취소수수료 및 취소기한을 확인하였으며, 동의합니다.<input type="checkbox" id="agree2" style="cursor: pointer;">제 3자 정보제공에 동의합니다. <a onclick="detailgo()" style="cursor: pointer;">상세보기</a></font>
				</font>

				<br/>	
				<br/>
	
			</div>	
		</div>
		
	
		
		<!-- detail.jsp -->
	
		<div id="resultDiv" class="post" style="vertical-align: top; float: left; margin-left: 0px; position: relative;" align="right">
			<jsp:include page="detail5.jsp" >
				<jsp:param value="5" name="step"/>
			</jsp:include>
		</div>
		
			<table width="200" bgcolor="#363636" class="post5" style="margin-top: 535px; margin-left: -200px;">
				<tr height="9"><td></td></tr>
				<tr>
					<td><input type="button" style="color:#ffffff;  width: 88px; height: 35px; margin-left: 7px; background-color: #818181; border-color: #818181;" value="이전단계"
						onclick="javascript:location.href='<%=cp%>/step4.action';"></td>
					<td><input type="button" id="detail_btn" style="width: 88px; height: 35px;" value="결제하기" onclick="pay();"></td>
				</tr>
				<tr height="15"><td></td></tr>
			</table>
	
	</form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		<!-- 현금영수증 발행 안내 창 START -->
			<form action="" name="cashReceipt">
    			<div class="white_content" id="open">
	
        			<div>
        			
        				<table width="100%" bgcolor="#4C7CCE" style="border-bottom-color: 1px solid black" >
        					<tr >
        						<td style="color: white">&nbsp;현금영수증 발행 안내 </td>
        						<td style="color: white" align="right"><a href="#close">x닫기</a></td>
        					</tr>
        				</table>

            			<table style="color: #888888; margin-left: 20px;" >
	            			<tr>
	            				<td style="font-size: 9pt;  font-weight:bold; text-decoration: underline; ">현금영수증은 MY공연>예매확인/취소>예매내역 상세보기</td>
	            			</tr>
	            			<tr>
	            				<td style="font-size: 9pt;  font-weight:bold; text-decoration: underline; ">에서 신청 및 수정하실 수 있습니다.</td>
	            			</tr>
	            			<tr>
	            				<td style="font-size: 9pt;">(YES머니, 쿠폰 등 비현금성 결제는 포함되지 않습니다.)</td>
	            			</tr>
	            			
	            			<tr>
	            				<td style="font-size: 9pt; color: red;">문화비 소득공제는 현금영수증을 신청한 경우에 한해서만 적용</td>
	            			</tr>
	            			<tr>
	            				<td style="font-size: 9pt; color: red;">받으실 수 있습니다.</td>
	            			</tr>
	            			<tr>
	            				<td style="font-size: 9pt;">개인(소득증빙)은 휴대폰번호로, 사업자(지출증빙)은 사업자등록</td>
	            			</tr>
	            			<tr>
	            				<td style="font-size: 9pt;">번호로 발행할 수 있으며 개인→타인, 개인→사업자, 사업자→개</td>
	            			</tr>
	            			<tr>
	            				<td style="font-size: 9pt;">인 등으로 변경해서 발행할 수 있습니다.</td>
	            			</tr>
	            			<tr height="2"></tr>
	            			<tr>
	            				<td style="font-size: 9pt;">(* 현금영수증 발생 신청 2~3일 후 국세청 홈페이지에서 확인 가</td>
	            			</tr>
	            			<tr>
	            				<td style="font-size: 9pt;">능합니다. )</td>
	            			</tr>
	            			
	            			<tr><td align="center"><a href="#close"><input type="button" value="확인" onclick="close"></a></td></tr>
            			</table>
            			
        			</div>
        			
        			
    			</div>
    		</form>
   			<!-- 쿠폰등록창 END -->
   			
			<div class="white_content1" id="open_pay">
			
				<div>
					<table style="background-color: #F6F6F8; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: #cccccc;" width="850">
						<tr>
							<td  style="padding-left: 10px; padding-top: 10px;"><font color="#4D7CCE" size="4px"><b>TICKET&nbsp;</b></font><font size="4px"><b>결제가 정상적으로 완료되었습니다.</b></font></td>
						</tr>
						<tr>
							<td style="padding-left: 10px; padding-bottom: 3px; font-size: 8pt; color: #888888;">▶예매 상세내역은 마이페이지 > MY공연 > 예매확인/취소에서 확인하실 수 있습니다.</td>
						</tr>
						
					</table>
					
			
					<!-- 예매정보 -->
			
					
					<table width="300" style="float: left; margin-left: 20px;" >
					
						<tr>
							<td colspan="2"><font size="3px"><b>∨&nbsp;예매정보</b></font></td>
						</tr>
						<tr>
							<td style="border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: #4D7CCE;"  colspan="2"></td>
						</tr>	

						<tr >
							<td style="padding-left: 10px;"><font size="2px" color="#888888">예약번호</font> </td>
							<td><font size="3px" color="#ED4955"><b> Y1519462827[총 1장]</b></font> </td>
						</tr>
						<tr>
							<td style="padding-left: 10px;"><font size="2px" color="#888888">공연명</font> </td>
							<td><font size="2px" color="#888888"><b>팬미팅</b></font> </td>
						</tr>
						<tr>
							<td style="padding-left: 10px;"><font size="2px" color="#888888">공연장</font> </td>
							<td><font size="2px" color="#888888"><b>LIVE HE</b></font> </td>
						</tr>
						<tr>
							<td style="padding-left: 10px;"><font size="2px" color="#888888">관람일시</font> </td>
							<td><font size="2px" color="#888888">2019.12.08 (일) [1회] 17시 00분</font> </td>
						</tr>
						<tr>
							<td style="padding-left: 10px;"><font size="2px" color="#888888">좌석</font> </td>
							<td><textarea rows="5" cols="20">전석 1층 C구역 12열 007번</textarea></td>
						</tr>
						<tr>
							<td style="padding-left: 10px;"><font size="2px" color="#888888">수령방법</font> </td>
							<td><font size="2px" color="#888888">현장수령</font> </td>
						</tr>
						
						<tr height="30"></tr>
							
						<!-- 예매 후 유의사항 -->
						<tr>
							<td colspan="2"><font size="3px"><b>∨&nbsp;예매 후 유의사항</b></font></td>
						</tr>
						<tr>
							<td style="border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: #4D7CCE;"  colspan="2"></td>
						</tr>	
						<tr>
							<td style="padding-left: 10px;"><font size="2px" color="#888888">취소가능일시: </font> </td>
							<td><font size="2px" color="#4D7CCE"><b> 2019년 12월 07일 11:00 까지</b></font> </td>
						</tr>
					</table>	
				

				
					<!-- 결제정보 -->
				
					<table width="300" style="float: left; margin-left: 20px;" >
							<tr>
							<td colspan="2"><font size="3px"><b>∨&nbsp;결제정보</b></font></td>
						</tr>
							<tr>
							<td style="border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: #4D7CCE;"  colspan="2"></td>
						</tr>	
							<tr>
								<td style="padding-left: 10px;"><font size="2px" color="#888888">티켓금액</font> </td>
								<td align="right"><font size="2px" color="#888888">40,000</font> </td>
							</tr>
							<tr>
								<td style="padding-left: 10px;"><font size="2px" color="#888888">예매수수료</font> </td>
								<td align="right"><font size="2px" color="#888888">500</font> </td>
							</tr>
							<tr>
								<td style="padding-left: 10px;"><font size="2px" color="#888888">배송료</font> </td>
								<td align="right"><font size="2px" color="#888888">0</font> </td>
							</tr>
							<tr style="background-color: #F3F5F6;">
								<td style="padding-left: 10px;"><font size="2px" color="#888888"><b>(+)금액</b></font> </td>
								<td align="right"><font size="2px" color="#888888"><b>40,500</b></font> </td>
							</tr>
							<tr>
								<td style="padding-left: 10px;"><font size="2px" color="#888888">할인금액</font></td>
								<td align="right"><font size="2px" color="#888888">${stdto.discountPrice }</font> </td>
							</tr>
							<tr>
								<td style="padding-left: 10px;"><font size="2px" color="#888888">할인쿠폰</font> </td>
								<td align="right"><font size="2px" color="#888888">${stdto.couponPrice }</font> </td>
							</tr>
							<tr>
								<td style="padding-left: 10px;"><font size="2px" color="#888888">Yes머니</font> </td>
								<td align="right"><font size="2px" color="#888888">${stdto.pointPrice }</font> </td>
							</tr>
							<tr>
								<td style="padding-left: 10px;"><font size="2px" color="#888888">예치금</font> </td>
								<td align="right"><font size="2px" color="#888888"></font> </td>
							</tr>
							<tr>
								<td style="padding-left: 10px;"><font size="2px" color="#888888">YES상품권</font> </td>
								<td align="right"><font size="2px" color="#888888"></font> </td>
							</tr>
							<tr>
								<td style="padding-left: 10px;"><font size="2px" color="#888888">공연예매권</font> </td>
								<td align="right"><font size="2px" color="#888888"></font> </td>
							</tr>
							<tr>
								<td style="padding-left: 10px;"><font size="2px" color="#888888">기타결제</font> </td>
								<td align="right"><font size="2px" color="#888888"></font> </td>
							</tr>
							<tr style="background-color: #F3F5F6;">
								<td style="padding-left: 10px;"><font size="2px" color="#888888"><b>(-)금액</b></font> </td>
								<td align="right"><font size="2px" color="#888888"><b>0</b></font> </td>
							</tr>
							
							<tr style="background-color: #0076A3;">
								<td style="padding: 13px; "><font color="#ffffff" size="2px">총 결제 금액</font></td>
								<td align="right"><font color="#ffffff" size="4px"><b>50,500</b></font> <font color="#ffffff" size="2px">원</font></td>	
							</tr>
							
							<tr>
								<td style="padding-left: 10px;"><font size="2px" color="#888888">결제수단</font> </td>
								<td align="right"><font size="2px" color="#888888">무통장입금</font> </td>
							</tr>
							<tr>
								<td style="padding-left: 10px;"><font size="2px" color="#888888">입금계좌/은행</font> </td>
								<td align="right"><font size="2px" color="#888888">${adto.accountNum} / ${adto.accountBank }</font></td>
							</tr>
							<tr>
								<td style="padding-left: 10px;"><font size="2px" color="#888888">입금금액/마감</font> </td>
								<td align="right"><font size="2px" color="#888888">50,500원 / 2019-12-03 23:59:59</font> </td>
							</tr>
					
					</table>	
					
					<table style="margin-top: 20px; margin-left: 20px;">
						<tr>
							<td>
								<img src="/ticketing/resources/images/hong.png"/>
							</td>
						</tr>
		    		</table>
		    		<!-- 예매내역확인 버튼 -->	
		    		
		    		<input type="button" value="예매내역확인" style="padding-left: 50px; padding-right: 50px; padding-top:5px; padding-bottom:5px; font-size: 15pt; font-weight: bold; color: #ffffff; background-color: #4D7CCE; border-color: #4D7CCE; margin-top: 50px; margin-left: -330px;">
		    		
		    </div>	
		</div>


   			
	
	
	
	
	
	
	
	
	
	
	
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script>

function start(){
	
	var IMP = window.IMP;
	IMP.init('imp53208811');
	
}

	function detailgo(){
		
		 window.open("WEB-INF/views/cal.jsp","제3자 정보제공","width=500,height=500");
	}
	
	function deposit(){
		
		var f = document.myForm;
		
		var depo = f.deposit.value;
		if(depo==0){
			alert("사용할 예치금이 없습니다.");
			f.deposit.focus();
		}
		
		
	}
	
	function point(){
		
		var f = document.myForm;
		
		var point = f.point.value;
		if(point==0){
			alert("사용할 포인트가 없습니다.");
			f.deposit.focus();
		}
		
		
	}
	
	//포인트 전액 사용
	$("#allPointUse").change(function(){
	
		var point = '${point}';
		
		if($('#allPointUse').is(":checked")){
			
			if(point==0){
				alert("사용 가능한 포인트가 없습니다.");
				
			}else{
				$('#inputPoint').val(point);
			}
			
			
		}else{
			
			$('#inputPoint').val(0);
			
		}

		var f = document.myForm;
		var usePoint = $('#inputPoint').val();
			
			$.ajax({
				type:"GET",
				url:"use_point.action",
				data:{"pointPrice":usePoint},
				dataType:"text",
				success:function(args){
					
					$("#resultDiv").html(args);

				},
				error:function(e){
					alert(e.responseText);
				}
			})
	
		
	})
	
	//예치금 전액 사용
	$("#allDepositUse").change(function(){
	
		var deposit = '${deposit}';
		
		if($('#allDepositUse').is(":checked")){
			
			if(deposit==0) {
				alert("사용 가능한 예치금이 없습니다.");
				return;
			}else{
				$('#inputDeposit').val(point);
			}	
			
		}else{
			
			$('#inputDeposit').val(0);
			
		}

		var f = document.myForm;
		var useDeposit = $('#inputDeposit').val();
			
			$.ajax({
				type:"GET",
				url:"use_deposit.action",
				data:{"useDeposit":useDeposit},
				dataType:"text",
				success:function(args){
					
					$("#resultDiv").html(args);

				},
				error:function(e){
					alert(e.responseText);
				}
			})
	
		
	})

	$("#inputPoint").change(function(){

		var f = document.myForm;
		var point = $('#inputPoint').val();		
		
		if(point>'${point }'){
			
			alert("보유한 포인트보다 많이 사용할 수 없습니다.");
			$('#inputPoint').val(0);
			
		}
		
		
		$.ajax({
			type:"GET",
			url:"use_point.action",
			data:{"pointPrice":point},
			dataType:"text",
			success:function(args){
				
				$("#resultDiv").html(args);

			},
			error:function(e){
				alert(e.responseText);
			}
		})
		
	})
	
	var imagePath = '${aidto.imagePath}';

	
	//최종 결제
	function pay(){
		
		var f = document.myForm;
		
		var bank = f.bank.value;
		
		if(bank=="nobank"){
			alert("무통장입금 은행을 선택하세요");
			f.bank.focus();
			return;
		}
		
		var agree1_c = f.agree1.checked;
		
		if(!agree1_c){
			alert("취소수수료 약관에 동의하세요");
			f.agree1.focus();
			return;
		}
		
		var agree2_c = f.agree2.checked;
		
		if(!agree2_c){
			alert("제 3자 정보제공 약관에 동의하세요");
			f.agree2.focus();
			return;
		}
		
		var imageCode = f.autoImageValue.value;
		//var imagePath = '${aidto.imagePath}';
		
		
		
		var flag="";
		
		if(!imageCode){
			alert("자동주문방지 문자를 입력하세요");
			f.autoImageValue.focus();
			return;
		}else{
			$.ajax({
				type:"GET",
				url:"autoPayPre.action",
				data:{"imageCode":imageCode,"imagePath":imagePath},
				dataType:"text",
				success:function(args) {
					console.log(args);
					flag=args;
					
					if(flag=="1"){
						
						
						
						/* IMP.request_pay({
						    pg : 'uplus',
						    pay_method : 'card',
						    merchant_uid : 'merchant_' + new Date().getTime(),
						    name : 'YES24',
						    amount : '${stdto.ticketPrice*stdto.inwon+500*stdto.inwon+stdto.discountPrice*stdto.inwon+stdto.couponPrice*stdto.inwon+stdto.pointPrice }',
						    buyer_email : 'iamport@siot.do',
						    buyer_name : '구매자이름',
						    buyer_tel : '010-1234-5678',
						    buyer_addr : '서울특별시 강남구 삼성동',
						    buyer_postcode : '123-456',
						    m_redirect_url : '/ticketing/laststep?bank='+encodeURI(bank)
						}, function(rsp) {
						    if ( rsp.success ) {
						        var msg = '결제가 완료되었습니다.';
						        msg += '고유ID : ' + rsp.imp_uid;
						        msg += '상점 거래ID : ' + rsp.merchant_uid;
						        msg += '결제 금액 : ' + rsp.paid_amount;
						        msg += '카드 승인번호 : ' + rsp.apply_num;
						        
						        location.href = '/ticketing/laststep?bank='+encodeURI(bank);
						        
						    } else {
						        var msg = '결제에 실패하였습니다.';
						        msg += '에러내용 : ' + rsp.error_msg;
						    }
						    alert(msg);
						}); */
						
						//document.myForm.action = 'ticketing/laststep?bank='+encodeURI(bank);
						//document.myForm.submit();
						
						location.href = '/ticketing/laststep?bank='+encodeURI(bank);
						
						/* $.get('/ticketing/laststep',{"bank":bank},function(result){
							location.href = '/ticketing/'+result;
						}) */
					
					}else{
						
						alert("자동주문방지 문자를 잘못 입력하셨습니다. \n자동주문방지 문자를 다시 확인해주세요.");
						f.autoImageValue.focus();
						return;
					}
	
				},
				error:function(e){
					alert(e.responseText);
				}
			})
			
			
			
	}
			
	
	}
	
	$(".reloadImage").click(function(){ 
			
		var img = document.getElementById('img');
		
		$.ajax({
			type:"GET",
			url:"reloadImage.action",
			success:function(args){
				
				imagePath = args;
				$('#autoImage').attr("src","/ticketing/resources/images/autoOrder/"+args)
				
			},
			error:function(e){
				alert(e.responseText);
			}
		})	
	});
	
  
</script>
</body>
</html>