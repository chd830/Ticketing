<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	//String performDetailImage = request.getParameter("performDetailImage");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<c:forEach var="dto" items="${lists}">
	<div align="center" style="margin-top: 20px;">
<%-- 	<c:set var="performDetailImage" value="<%=performDetailImage %>"/>
 --%>	<img src="<c:url value='/image/${dto.performDetailImage }'/>" style="width: 700px;">
 
 <%-- " style="width: 700px; height: 1997px;" /> --%>
	</div>								
	</c:forEach>
</body>

</html>