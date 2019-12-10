<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
  <title>Pay Part</title>
  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
  </script>
  <script>
  $( function() {
    $( "#selectable" ).selectable();
  } );
  </script>
   
  <style>
  #feedback { font-size: 1.4em; }
  #selectable .ui-selecting { background: #FECA40; }
  #selectable .ui-selected { background: #F39814; color: white; }
  #selectable { list-style-type: none; margin: 0; padding: 0; width: 60%; }
  #selectable li { margin: 3px; padding: 0.4em; font-size: 1.4em; height: 18px; }
  </style>

</head>

<body>

<!-- 하단 TAB BAR 시작  --> 
<div id="tabs" style="display: inline-block">
  
  <ul>
    <li><font size="2px;">&nbsp;Step1</font><br/><a href="#tabs-1"><font size="3px;">관람일/회차</font></a></li>
    <li><font size="2px;">&nbsp;Step2</font><br/><a href="#tabs-2"><font size="3px;">좌석선택</font></a></li>
    <li><font size="2px;">&nbsp;Step3</font><br/><a href="#tabs-3"><font size="3px;">할인/쿠폰</font></a></li>
    <li><font size="2px;">&nbsp;Step4</font><br/><a href="#tabs-4"><font size="3px;">수령방법</font></a></li>
    <li><font size="2px;">&nbsp;Step5</font><br/><a href="#tabs-5"><font size="3px;">결제방법</font></a></li>
  </ul>
  
  <div id="tabs-1">
  	<table border="1" bordercolor="#D5D5D5">
	
	<tr bgcolor="#7C9AB6">
		<td width="250">&nbsp;&nbsp;<font color="#ffffff">관람일 선택</font></td>
		<td width="300">&nbsp;&nbsp;<font color="#ffffff">회차선택</font></td>
	</tr>
	
	<tr>
		<td><%-- <jsp:include page="cal.jsp" flush="false"/> --%></td>
		<td>선택 날짜 : 2019.11.17</td>
	</tr>
	<tr>
		<td> 회차선택 </td>
		<td> 좌석 등급/ 잔여석 </td>
	</tr>
	<tr>
		<td>
		<ol id="selectable">
		  <li class="ui-widget-content">[1회] 14:00</li>
		  <li class="ui-widget-content">[2회] 16:00</li>
		</ol>
		</td>
		<td>
			전석 40000원
			<select name="inwon">
				<option value="0" selected="selected">0매</option>
				<option value="1">1매</option>
				<option value="2">2매</option>
				<option value="3">3매</option>
			</select>
		</td>
	</tr>
	</table>

	<br/>
	
	<img src="/ticketing/resources/images/notes.PNG" width="570"/>
    
  </div>
  
  <div id="tabs-2">
  <P>좌석선택</P>
    <%--  <jsp:include page="seat.jsp" flush="false"/> --%>
  </div> 
  
  <div id="tabs-3">
  	<P>할인/쿠폰</P>
  </div> 
  
  <div id="tabs-4">
  <P>수령방법</P>
  	<%-- <jsp:include page="home.jsp" flush="false"/> --%>
  </div>
  <div id="tabs-5">
  <P>결제방법</P>
  	<%-- <jsp:include page="home.jsp" flush="false"/> --%>
  </div>

</div>
 <!-- 하단 TAB BAR 종료  -->

</body>
</html>