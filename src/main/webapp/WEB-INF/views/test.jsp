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


<table width="300" border="1">
<tr>
    <td width="150">이름</td>
    <td width="150">성적</td>
</tr>
</table>

<div style="width: 320px; height: 100px; overflow: auto">
    <table width="300px" border="1">
        <tr>
            <td width="150">홍길동</td>
            <td width="150">99</td>
        </tr>
        <tr>
            <td width="150">홍길순</td>
            <td width="150">95</td>
        </tr>
        <tr>
            <td width="150">김개똥</td>
            <td width="150">82</td>
        </tr>
        <tr>
            <td width="150">김철수</td>
            <td width="150">80</td>
        </tr>
        <tr>
            <td width="150">김영희</td>
            <td width="150">78</td>
        </tr>
        <tr>
            <td width="150">이철수</td>
            <td width="150">75</td>
        </tr>
        <tr>
            <td width="150">이영희</td>
            <td width="150">60</td>
        </tr>
    </table>
</div>

</body>
</html>