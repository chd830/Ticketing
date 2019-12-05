<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style type="text/css">

.white{
	width: 55%;
	height: 60%;
}


</style>
</head>



<body style="background: rgba(0,0,0,0.8)">



<div style="border: 3px solid #0076A3; margin-top:40px; margin-left: 40px; background: white;" class="white" >

	<table
		style="background-color: #F6F6F8; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: #cccccc;"
		width="100%">
		<tr>
			<td style="padding-left: 10px; padding-top: 10px;"><font
				color="#4D7CCE" size="4px"><b>TICKET&nbsp;</b></font><font
				size="4px"><b>결제가 정상적으로 완료되었습니다.</b></font></td>
		</tr>
		<tr>
			<td
				style="padding-left: 10px; padding-bottom: 3px; font-size: 8pt; color: #888888;">▶예매
				상세내역은 마이페이지 > MY공연 > 예매확인/취소에서 확인하실 수 있습니다.</td>
		</tr>

	</table>
	
	<!-- 예매정보 -->
		
				
				<table width="33%" style="float: left; margin-left: 20px;" >
				
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
			
				<table width="33%" style="float: left; margin-left: 20px; border-collapse: collapse;" cellpadding="2" >
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
							<td align="right"><font size="2px" color="#888888">${stdto.discountPrice*stdto.inwon }</font> </td>
						</tr>
						<tr>
							<td style="padding-left: 10px;"><font size="2px" color="#888888">할인쿠폰</font> </td>
							<td align="right"><font size="2px" color="#888888">${stdto.couponPrice*stdto.inwon }</font> </td>
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
							<td align="right"><font size="2px" color="#888888"><b>${stdto.discountPrice*stdto.inwon+stdto.couponPrice*stdto.inwon-stdto.pointPrice }</b></font> </td>
						</tr>
						<tr height="1"><td>&nbsp;</td></tr>
						<tr style="background-color: #0076A3; ">
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
				
				<table width="25%" style="margin-top: 20px;">
					<tr>
						<td style="padding-left: 30px;">
							<img src="/ticketing/resources/images/hong.png"/>
						</td>
					</tr>
	    		</table>
	    		<!-- 예매내역확인 버튼 -->	
	    		
	    		<input type="button" value="예매내역확인" style="padding-left: 50px; padding-right: 50px; padding-top:5px; padding-bottom:5px; font-size: 15pt; font-weight: bold; color: #ffffff; background-color: #4D7CCE; border-color: #4D7CCE; margin-top: 50px; margin-left: -40%;">
	    		
	    		<br/><br/><br/>
	    		
	    	</div>

</body>
</html>