<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Step4</title>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>

<style type="text/css">
.cal_top {
	margin-left: 40px;
	font-size: 20px;
	
}

.cal {
	text-align: left;
}

table.calendar {
	display: inline-table;
	text-align: center;
	
}

table.calendar td {
	vertical-align: top;
	width: 25px;
}

.post{
display: inline-block;
}

.titlecolor1{
size: 2px;
color: #B3B3B3;
}

#content{
	font-size: 12px;
	font: #888888;
	margin-top: 10px;
}

</style>
   
<style>
  #feedback { font-size: 1.4em; }
  #selectable .ui-selecting { background: #FECA40; }
  #selectable .ui-selected { background: #F39814; color: white; }
  #selectable { list-style-type: none; margin: 0; padding: 0; width: 60%; }
  #selectable li { margin: 3px; padding: 0.4em; font-size: 10px; height: 10px; }
</style>

</head>


<body>

	<div class="post" style="float: left;">
			<div>
				<table width="800"  bgcolor="#363636">
					<tr>
						<td width="16%" bgcolor="#353535"><img style="width: 110px; height: 50px;" src="/ticketing/resources/images/mark.PNG"></td>
						<td width="16%" bgcolor="#797979">&nbsp;&nbsp;<font size="1.5px;" color="#B3B3B3"><b>Step1</b></font><br/>&nbsp;&nbsp;<font size="3px;"  color="#ffffff"><b>관람일/회차</b></font></td>
						<td width="16%" bgcolor="#696969">&nbsp;&nbsp;<font size="1.5px;" color="#B3B3B3"><b>Step2</b></font><br/>&nbsp;&nbsp;<font size="3px;" color="#ffffff"><b>좌석선택</b></font></td>
						<td width="16%" bgcolor="#5F5F5F">&nbsp;&nbsp;<font size="1.5px;" color="#B3B3B3"><b>Step3</b></font><br/>&nbsp;&nbsp;<font size="3px;" color="#ffffff"><b>할인/쿠폰</b></font></td>
						<td width="16%" bgcolor="#ffffff">&nbsp;&nbsp;<font size="1.5px;" color="#3A85C7"><b>Step4</b></font><br/>&nbsp;&nbsp;<font size="3px;" color="black"><b>수령방법</b></font></td>
						<td width="16%" bgcolor="#494949">&nbsp;&nbsp;<font size="1.5px;" color="#B3B3B3"><b>Step5</b></font><br/>&nbsp;&nbsp;<font size="3px;" color="#ffffff"><b>결제 방법</b></font></td>
					</tr>
				</table>
			</div>
			
			
			<div>
				<table width="770" style="margin-left: 15px; margin-right: 15px; margin-top: 10px;">
					<tr style="border: hidden;">
						<td id="header" width="770" height="10" style="padding: 5px; padding-left: 20px;" bgcolor="#7C9AB6">
							<b><font color="#ffffff" size="2px">수령방법&nbsp;</font></b>
						</td>
					</tr>
				</table>
			</div>
			
			<div id="content">
				<div>
					<table style="margin-left: 30px; margin-top: 7px;">
						<tr height="15">
							<td><b>수령방법선택&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
							<td bgcolor="#FDEEEA" width="550" height="30"><input type="checkbox"><font size="1.5px;">현장수령[배송불가 할인 포함]</font></td>
						</tr>
					</table>
				</div>
				
				<br/><br/>
				
				<div>
					<table style="margin-left: 30px;">
						<tr>
							<td colspan="2">주문자 확인&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						</tr>
						<tr>
							<td colspan="2" height="0.5" width="745" bgcolor="#D5D5D5"></td>
						</tr>
					</table>
				</div>
				
				<div>
					<table style="margin-left: 30px; margin-top: 15px;">
						<tr>
							<td><font color="#888888">이름&nbsp;&nbsp;&nbsp;</font></td>
							<td><font color="#888888"><input type="text" value="${uidto.userName }"></font></td>
						</tr>
						<tr>
							<td><font color="#888888">긴급연락처&nbsp;&nbsp;&nbsp;</font></td>
							<td><font color="#888888"><input type="text" value="${uidto.userPhoneNum.substring(0,3) }"> - <input type="text" value="${uidto.userPhoneNum.substring(4,8) }"> - <input type="text" value="${uidto.userPhoneNum.substring(9,12) }"></font></td>
						</tr>
						<tr>
							<td><font color="#888888">e-mail&nbsp;&nbsp;&nbsp;</font></td>
							<td><font color="#888888"><input type="text" value="${uidto.userEmail.substring(0,goll) }"> @ <input type="text" value="${uidto.userEmail.substring(goll+1) }"></font></td>
						</tr>
					</table>
				</div>
				
				<br/>
				
				<div style="margin-left: 30px; margin-top: 15px;"><img src="/ticketing/resources/images/note4.PNG" width="640"/></div>
			
			</div>
		
		</div>
		
		<div class="post" style="float: left;" >
			<jsp:include page="detail.jsp">
				<jsp:param value="4" name="step"/>
			</jsp:include>
		</div>	

</body>
</html>