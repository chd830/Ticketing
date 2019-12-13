<%@page import="com.ticket.dto.SelectedTicketDTO"%>
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

<link rel="stylesheet" href="/ticketing/resources/css/book.css"
	type="text/css" />
</head>


<body>

	<div style="vertical-align: top; float: left;">
		<div>
			<table width="200" bgcolor="#363636">
				<tr style="border-bottom-color: #ffffff;">
					<td><img src="/ticketing/resources/images/${performReaddto.performMainImage }" /></td>
					<td><font size="1px" color="#ffffff">${performReaddto.performName }<br />${performReaddto.performStartDate } ~ <br/> ${performReaddto.performEndDate }<br />${Read_placedto.placeName}<br /></font></td>
				</tr>
			</table>
		</div>

		<table width="200" bgcolor="#363636">
			<tr>
				<td class="tdblack" colspan="2"></td>

			</tr>
		</table>

		<div>
			<table width="200" bgcolor="#363636">
				<tr>
					<td><font size="2px" color="#ffffff">선택내역</font></td>
				</tr>
				<tr>
					<td><font size="1px" color="#BFBFBF">날짜</font></td>
					<td><font size="1px" color="#ffffff">${stdto.getSelectedDate() }</font>
					</td>
				</tr>
				<tr>
					<td><font size="1px" color="#BFBFBF">시간</font></td>
					<td><font size="1px" color="#ffffff">${stdto.getTime() }</font></td>
				</tr>
				<tr>
					<td><font size="1px" color="#BFBFBF">매수</font></td>
					<td><font size="1px" color="#ffffff">${stdto.inwon } 매</font></td>
				</tr>
				<tr>
					<td><font size="1px" color="#BFBFBF">좌석</font></td>
					<td>
						<c:if test="${stdto.performGenreCode != 1 }">
							<font size="1px" color="#ffffff">비지정석</font>
						</c:if>
						<c:if test="${stdto.performGenreCode == 1 }">
							<font size="1px" color="#ffffff">콘서트 좌석</font>
						</c:if>
					</td>
				</tr>

				<tr height="30"></tr>

			</table>
		</div>

		<table width="200" bgcolor="#363636">
			<tr>
				<td class="tdblack" colspan="2"></td>

			</tr>
		</table>

		<div>
			<table width="200" bgcolor="#363636">
					<tr>
						<td><font size="2px" color="#ffffff">결제내역</font></td>
					</tr>
					<tr>
						<td><font size="1px" color="#BFBFBF">티켓금액</font> </td>
						<td><font size="1px" color="#ffffff">${stdto.ticketPrice}</font> </td>
					</tr>
					<tr>
						<td><font size="1px" color="#BFBFBF">예매수수료</font> </td>
						<td><font size="1px" color="#ffffff">${500*stdto.inwon }</font> </td>
					</tr>
					<tr>
						<td><font size="1px" color="#BFBFBF">배송료</font> </td>
						<td><font size="1px" color="#ffffff">0</font> </td>
					</tr>
					<tr>
						<td><font size="1px" color="#C3E3FA">총 금액(+)</font> </td>
						<td><font size="1px" color="#ffffff">${stdto.ticketPrice}</font> </td>
					</tr>
			</table>	
			</div>

		<table width="200" bgcolor="#363636">
			<tr>
				<td colspan="2"
					style="border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: #000000"></td>

			</tr>
		</table>



		<div>
			<table width="200" bgcolor="#363636">
				<tr>
					<td><font size="1px" color="#BFBFBF">할인금액</font></td>
					<td><font size="1px" color="#ffffff">${stdto.discountPrice }</font></td>
				</tr>
				<tr>
					<td><font size="1px" color="#BFBFBF">할인쿠폰</font></td>
					<td><font size="1px" color="#ffffff">${stdto.couponPrice }</font></td>
				</tr>
				<tr>
					<td><font size="1px" color="#BFBFBF">Yes머니</font></td>
					<td><font size="1px" color="#ffffff">${stdto.pointPrice }</font></td>
				</tr>
				<tr>
					<td><font size="1px" color="#BFBFBF">예치금</font></td>
					<td><font size="1px" color="#ffffff"></font></td>
				</tr>
				<tr>
					<td><font size="1px" color="#BFBFBF">YES상품권</font></td>
					<td><font size="1px" color="#ffffff"></font></td>
				</tr>
				<tr>
					<td><font size="1px" color="#BFBFBF">공연예매권</font></td>
					<td><font size="1px" color="#ffffff"></font></td>
				</tr>
				<tr>
					<td><font size="1px" color="#BFBFBF">기타결제</font></td>
					<td><font size="1px" color="#ffffff"></font></td>
				</tr>
				<tr>
					<td><font size="1px" color="#C3E3FA">총 할인금액(-)</font></td>
					<td><font size="1px" color="#ffffff">${stdto.discountPrice+stdto.couponPrice+stdto.pointPrice }</font></td>
				</tr>
			</table>
		</div>

		<table width="200" bgcolor="#363636">
			<tr>
				<td class="tdblack" colspan="2"></td>

			</tr>
		</table>

		<div>
			<table width="200" bgcolor="#363636">
					<tr height="9"><td></td></tr>
					<tr>
						<td><font size="1.5px" color="#ffffff">최종 결제 금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
						<td><font size="4px" color="#ffffff"><b>${stdto.ticketPrice*stdto.inwon+500*stdto.inwon+stdto.discountPrice*stdto.inwon+stdto.couponPrice }</b></font><font size="2px;" color="#ffffff">원</font></td>
					</tr>
			</table>		
		</div>
		
	
	<div>
		<table width="200" bgcolor="#363636">
			<tr height="9">
				<td></td>
			</tr>
			<tr>
				<td><input type="button"
					style="color: #ffffff; width: 88px; height: 35px; margin-left: 7px; background-color: #818181; border-color: #818181;"
					value="이전단계"
					onclick="javascript:location.href='<%=cp%>/step2.action';">
				</td>
				<td><input type="button" id="detail_btn"
					style="width: 88px; height: 35px;" value="다음단계"
					onclick="javascript:location.href='<%=cp%>/step4.action';"></td>
			</tr>
			<tr height="15">
				<td></td>
			</tr>
		</table>
	</div>
	



</body>
</html>