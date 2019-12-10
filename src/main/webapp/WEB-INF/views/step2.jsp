<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String seatRow = (String)request.getAttribute("seatRow");
	String seatNum = (String)request.getAttribute("seatNum");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<!-- <link rel="stylesheet" href="/ticketing/resources/css/book.css" type="text/css"/> -->

</head>
<body>
<table width="1000" align="center">
	
	<tr height="50" valign="top">
		<td><jsp:include page="header.jsp"></jsp:include></td>
		<%-- <td rowspan="2"><jsp:include page="right.jsp"></jsp:include></td> --%>
	</tr>
	
	<tr height="350" >
		<td><jsp:include page="seat.jsp">
				<jsp:param value="1" name="step"/>
			</jsp:include></td>
		<td></td>
	</tr>
</table>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
</script>
</body>
</html>