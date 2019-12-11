<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="form-group">
		<input type="text" class="form-control"	value="${companyMainDTO.companyId }" readonly />
	</div>
	<div class="form-group">
		<input type="password" class="form-control"	value="${companyMainDTO.companyPwd }" />
	</div>
	<div class="form-group">
		<input type="text" class="form-control" value="${companyMainDTO.companyName }" readonly />
	</div>
	<div class="form-group">
		<input type="text" class="form-control" value="${companyMainDTO.companyAddr }" readonly />
	</div>
	<div class="form-group">
		<input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">
	</div>
</body>
</html>