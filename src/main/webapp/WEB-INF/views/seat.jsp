<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String seatRow = (String)request.getAttribute("seatRow");
	String seatNum = (String)request.getAttribute("seatNum");
	int alph = 65;
	int row = 1;
%>
<html>
<head>
    <title>Seat</title>
<style type="text/css">
#minimap{
background-color: #808080;
color: white;
}
#right{
text-align: left;
font-size: 10pt;

}

#header{
	background-color: #7C9AB6;
	color: white;
	margin: top;
}

.btn2_1{
	background-color: #F2F2F2;
	border-color: #F2F2F2;
	border:1px solid #C8C8C8;
	font-size: 12pt;
	width: 110px;
}

.btn2_2{
	background-color: #F2F2F2;
	border-color: #F2F2F2;
	border:1px solid #C8C8C8;
	font-size: 12pt;
	width: 133px;
}

.btn3{
	background-color: #4C7CCE;
	border-color: #4C7CCE;
	color: white;
	font-size: 15pt;
	font-style: solid;
	width: 245px;
}

#seat {
    font-size: 20px;
    text-align: center;
    margin: 0px;
}
td {
    width: 250px;
}
.blank {
    background-color: white;
}
#rowName {
    background-color: white;
}
.seat {
    background-color: #787878;
    cursor: pointer;
}
/* .seat:hover {
      background-color: #C18282 !important;
} */

.tab{
	border:1px solid #C8C8C8;
	border-radius: 5%;
}
</style>
</head>
<body id="test">
		<div style="display:inline-block;" id="seat">
    		<div style="display:inline-block; ">
    		<table>
    		<tr>
    			<td>
	    			<table id="table" style="border-collapse: separate; border-spacing: 3px; width: 700px;">
	    				<tr>
	    				<c:forEach items="${checkSeat }" var="l">
	    					<c:if test="${l.isEmpty == 1 }">
	    						<td class='seat'>${l.seatNum }</td>
	    					</c:if>
	    					<c:if test="${l.isEmpty == 0 }">
								<td class='soldout'>${l.seatNum }</td>	    						
	    					</c:if>
							<c:if test="${l.seatNum == 20 }">
								</tr>
							</c:if>
	    				</c:forEach>
	        		</table>
    			</td>
    			<td>
    				<div id="right"><jsp:include page="right.jsp"></jsp:include></div>
    			</td>
    		</tr>
    		</table>
    		</div>
    	</div>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$('.soldout').click(function() {
	alert("이미 선택된 좌석입니다");
})
$('.seat').click(function() {
	var color = $(this).css("backgroundColor");
	var seatRow = $(this).parents().children().first().html().trim();
	var seatNum = $(this).html().trim();
/*
	회색: rgb(120, 120, 120)
	분홍색: rgb(240, 182, 182)
	탁한 분홍색: rgb(193, 130, 130)
*/
 	//선택된 좌석이 클릭되었을 때 
	if(color == "rgb(240, 182, 182)") {
		$(this).css("backgroundColor", "rgb(120, 120, 120)")
		alert(seatRow+"열 "+seatNum+"석이 취소되었습니다.");
	  	$.get('/ticketing/delete/seatData', {
        	"seatRow": seatRow,
        	"seatNum": seatNum
        },function(data) {
        	$('#right').html(data);
        }); 
	}		
	//선택되지 않은 좌석이 클릭되었을 때
	if(color == "rgb(193, 130, 130)") {
		$(this).css('backgroundColor', 'rgb(240, 182, 182)');
		alert(seatRow+"열 "+seatNum+"석이 선택되었습니다.");
       	$.get('/ticketing/get/seatData', {
        	"seatRow": seatRow,
        	"seatNum": seatNum
        },function(data) {
        	$('#right').html(data);
        });  
	}
	//각각 get으로 controller에 있는 주소에 접근해서 값만 가져옴. 
	//보이는 주소가 아니라 데이터를 주고받기 위한 주소로만 쓰임.
}); 

</script>
</body>
</html>
