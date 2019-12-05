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
</head>

<body>



	<div class="post" style="float: left;">
		<table width="800" bgcolor="#363636"">
				<tr>
					<td width="16%" bgcolor="#353535"><img style="width: 110px; height: 50px;" src="/ticketing/resources/images/mark.PNG"></td>
					<td width="16%" bgcolor="#797979">&nbsp;&nbsp;<font size="1.5px;" color="#B3B3B3"><b>Step1</b></font><br/>&nbsp;&nbsp;<font size="3px;"  color="#ffffff"><b>관람일/회차</b></font></td>
					<td width="16%" bgcolor="#696969">&nbsp;&nbsp;<font size="1.5px;" color="#B3B3B3"><b>Step2</b></font><br/>&nbsp;&nbsp;<font size="3px;" color="#ffffff"><b>좌석선택</b></font></td>
					<td width="16%" bgcolor="#5F5F5F">&nbsp;&nbsp;<font size="1.5px;" color="#B3B3B3"><b>Step3</b></font><br/>&nbsp;&nbsp;<font size="3px;" color="#ffffff"><b>할인/쿠폰</b></font></td>
					<td width="16%" bgcolor="#494949">&nbsp;&nbsp;<font size="1.5px;" color="#B3B3B3"><b>Step4</b></font><br/>&nbsp;&nbsp;<font size="3px;" color="#ffffff"><b>수령방법</b></font></td>
					<td width="16%" bgcolor="#ffffff">&nbsp;&nbsp;<font size="1.5px;" color="#3A85C7"><b>Step5</b></font><br/>&nbsp;&nbsp;<font size="3px;" color="black"><b>결제방법</b></font></td>
				</tr>
		</table>
	
	<div  id="header">
		<table width="800">
			<tr>
				<td style="padding-left: 20px;">
				관람일 변경&nbsp;
				<select id="day">
					<option id="일요일">일요일</option>
				</select>
				
				</td>
			
				<td>
			
				회차 변경&nbsp;
				<select id="order">
					<option id="7일">7일</option>
				</select>
			
				</td>
			</tr>
		</table>
	</div>

</div>

</body>
</html>