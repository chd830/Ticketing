<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String start = (String)request.getAttribute("start");
	
	String end = (String)request.getParameter("end");
	
	//List list = (List)request.getAttribute("timeList");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>예매 part</title>
<!-- 달력제외부분 -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/ticketing/resources/css/book.css" type="text/css"/> -->
<style>
    fieldset {
      border: 0;
    }
    label {
      display: block;
      margin: 30px 0 0 0;
    }
    .overflow {
      height: 200px;
    }
</style>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<!-- 달력제외부분 -->

<style type="text/css">
.cal_top {
	margin-left: 55px;
	font-size: 18px;
}

.cal {
	text-align: left;
}

table.calendar {
	display: inline-table;
	text-align: center;
	height: 30px;
}

table.calendar td {
	vertical-align: top;
	width: 25px;
}
.home{
	size: 3px;

}
</style>

<script type="text/javascript">


</script>
</head>
<body id="home">

<form action="" name="myForm" method="post">
	<div>
		<div style="margin-bottom: 15px;"><font size="2px;"><b>예매 가능 관람 일시</b></font></div>
		<div style="margin-left: 10px;">
				<div class="cal_top">
					<div style="margin-left: 27px;">
						<a href="#" id="movePrevMonth"><span id="prevMonth" class="cal_tit">&lt;</span></a>
						<span id="cal_top_year"></span> <span id="cal_top_month"></span>
						<a href="#" id="moveNextMonth"><span id="nextMonth" class="cal_tit">&gt;</span></a>
					</div>
				</div>
				<div id="cal_tab" class="cal"></div>
				<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
				<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
				
				<script type="text/javascript">
			    var today = null;
			    var year = null;
			    var month = null;
			    var firstDay = null;
			    var lastDay = null;
			    var $tdDay = null;
			    var $tdSche = null;
			    
			    var startYear = ${year1};
			    var startMonth = ${mon1};
			    var startDay = ${day1};
			    var duringDate = ${duringDate};
			    var t=0;
			    var flag=false;
			    
			    var count=0;
			    
			    $(document).ready(function() {
			    	console.log("startYear: "+startYear+", startMonth: "+startMonth);
			        drawCalendar();
			        initDate();
			        drawDays();
			        $("#movePrevMonth").on("click", function(){movePrevMonth();});
			        $("#moveNextMonth").on("click", function(){moveNextMonth();});
			    });
			    
			    function drawCalendar(){
			        var setTableHTML = "";
			        setTableHTML+='<table class="calendar" >';
			        setTableHTML+='<tr><th><font size="1.5px;" color="red"><b>일</b></font></th><th><font size="1.5px;"><b>월</b></font></th><th><font size="1.5px;"><b>화</b></font></th><th><font size="1.5px;"><b>수</b></font></th><th><font size="1.5px;"><b>목</b></font></th><th><font size="1.5px;"><b>금</b></font></th><th><font size="1.5px;" color="blue"><b>토</b></font></th></tr><br/>';
			        for(var i=0;i<6;i++){
			            setTableHTML+='<tr height="25">';
			            for(var j=0;j<7;j++){
			                setTableHTML+='<td class="time" style="text-overflow:ellipsis;overflow:hidden;white-space:nowrap">';
			                setTableHTML+='    <div class="cal-day"></div>';
			                setTableHTML+='    <div class="cal-schedule"></div>';
			                setTableHTML+='</td>';
			            }
			            setTableHTML+='</tr>';
			        }
			        setTableHTML+='</table>';
			        $("#cal_tab").html(setTableHTML);
			        
			        $('.cal-day').click(function() {
			        	
			        	var btnColor = $(this).css("backgroundColor");
			        	console.log(btnColor);
			        	console.log(count);
			        
			        	var year = $('#cal_top_year').text();
			        	console.log(year);
			        	
			        	var month = $('#cal_top_month').text();
			        	console.log(month);
			        	
			        	var day = $(this).text();
			        	console.log(day);
			        	
						$.ajax({
							type:"GET",
							url:"getDate",
							data:{"year":year,"month":month,"day":day},
							success:function(args){
								
								$("#resultDIV").html(args);
							
							},
							error:function(e){
								alert(e.responseText);
							}
						
						}); 
			        	
						
					
			      	 if(count==0){
			        		
			        		if(btnColor == "rgb(124, 140, 148)") { //gray -> pink
			        			
			        			count=1;
			        			$(this).css('backgroundColor', '#EC2A32');
			        			console.log(count);
			        			
			        			
			        		}else if(btnColor == "rgb(236, 42, 50)") { //pink -> gray
			        			
			        			count=1;
			        			$(this).css('backgroundColor', '#7C8C94');
			        			console.log(count);
			        		}
			        		
			        	}else{ //1
			        		
			        		if(btnColor == "rgb(236, 42, 50)"){ //pink -> gray
			        			
			        			count=0;
			        			$(this).css('backgroundColor', '#7C8C94');
			        			console.log(count);
			    				
			        		}
			        	
							if(btnColor == "rgb(124, 140, 148)") { //gray -> 미동없음
			        			
			        			alert("클릭을 해제하세요");
			        			
			        		}
			        	
						}
			        	
			        });
			    }

			    function sendIt(){
			    	var f = document.myForm;
			    	var time = f.time.value;
			    	if(count == 0) {
			    		alert("날짜를 선택하세요.");
			    		return;
			    	}
			    	if(time == 0) {
			    		alert("시간을 선택하세요.");
			    		return;
			    	}
			    	f.action = "<%=cp%>/step1.action?time=" + time;
			    	f.submit();
			    }
			    
			    function initDate(){
			        $tdDay = $("td div.cal-day")
			        $tdSche = $("td div.cal-schedule")
			        dayCount = 1;
			        today = new Date();
			        year = today.getFullYear();
			        month = today.getMonth()+1;
			        firstDay = new Date(year,month-1,1);
			        lastDay = new Date(year,month,0);
			    }
			    
			    function drawDays(){
			    	
			    	$("#cal_top_year").text(year);
			        $("#cal_top_month").text(month);
			        
			        for(var i=firstDay.getDay();i<firstDay.getDay()+lastDay.getDate();i++){
			        	if(month==startMonth&&year==startYear&&dayCount==startDay){
			        		flag=true;
			        	}else {
			        		$tdDay.eq(i).css("background-color","white");
			            	$tdDay.eq(i).text(dayCount);
			        	}
			            
			            if(flag) {
			            	$tdDay.eq(i).css("background-color","#7C8C94");
			            	$tdDay.eq(i).css("color","black");
			            	$tdDay.eq(i).text(dayCount++);
			            	t++;
			            }else $tdDay.eq(i).text(dayCount++);
			            
			            
			            if(t==duringDate) {
			            	flag=false;
			            	t=0;
			            }
			            
			        }
			        
			        for(var i=0;i<35;i+=7){
			            $tdDay.eq(i).css("color","red");
			        }
			        for(var i=6;i<35;i+=7){
			            $tdDay.eq(i).css("color","blue");
			        }
			        
			     
			        
			    }
			    function movePrevMonth(){
			        month--;
			        if(month<=0){
			            month=12;
			            year--;
			        }
			        if(month<10){
			            month=String("0"+month);
			        }
			        getNewInfo();
			        }
			    function moveNextMonth(){
			        month++;
			        if(month>12){
			            month=1;
			            year++;
			        }
			        if(month<10){
			            month=String("0"+month);
			        }
			        getNewInfo();
			    }
			    function getNewInfo(){
			        for(var i=0;i<42;i++){
			            $tdDay.eq(i).text("");
			        }
			        dayCount=1;
			        firstDay = new Date(year,month-1,1);
			        lastDay = new Date(year,month,0);
			        drawDays();
			    }
			</script>
		</div>
	</div>

	
	<div style="vertical-align: top;" id="test">
		<div>
			<font size="2px;"><b>회차선택</b></font>&nbsp;&nbsp;&nbsp;&nbsp;
			<select name="time" id="time">
				<option selected="selected" value="0">회차선택</option>
				<c:forEach var="l" items="${ timeList }">
					<option value="${l.performTime }">${l.performTime }</option>				
				</c:forEach>
			</select>
		</div>
		
		<div>
			<div>
				<font size="2px;"><b>예매 가능 좌석 </b></font><br/>
			</div>
			<div class="home" style="margin-top: 3px;">
			<!-- 	<table border="1">
					<tr>
						<td width="200">
						<font size="3px;">본 공연은 잔여좌석 서비스를 제공하지 않습니다.</font>
						</td>
					</tr>
				</table> -->
				<table border="1">
					<tr>
						<td width="200">
						<font size="3px;">본 공연은 잔여좌석 서비스를 제공하지 않습니다.</font>
						</td>
					</tr>
				</table>
				
				<!-- <textarea rows="5" cols="25">본 공연은 잔여좌석 서비스를 제공하지 않습니다.</textarea> -->
			<div style="margin-top: 3px;">
				<table border="">
					<tr>
						<td>
						<!-- 공연 -->
							<c:if test="${performGenreCode == 3 or performGenreCode == 5 or performGenreCode == 6 }">
								 <div>
									 <font size="2px;">본 공연은 잔여좌석 서비스를 제공하지 않습니다.</font>
								 </div>
							</c:if>
						
						 <!-- 콘서트 좌석 등급 및 잔여석 표시 -->
						 	<c:if test="${performGenreCode == 2 or performGenreCode == 1 or performGenreCode == 4}">
								<div style="width: 240px; height: 130px; overflow: auto; margin-left: 10px; border-color: #ffffff" >
								    <table width="220px" border="0" style="border-color: #FFFFFF; border-collapse: collapse;" cellpadding="0" cellspacing="0">
								    	<c:forEach var="l" items="${ seatPriceList }">
								    		<tr height="5" style="background-color: #ffffff"></tr>
									        <tr style="background-color: #F3F3F3;">
									            <td width="200" ><font size="2px;"> 지정석 R석 ${l.rclass }원</font> </td>
									        </tr>
									        <tr height="5" style="background-color: #ffffff"></tr>
									         <tr style="background-color: #F3F3F3;">
									            <td width="200" ><font size="2px;"> 지정석 S석 ${l.sclass }원</font> </td>
									        </tr>
									        <tr height="5" style="background-color: #ffffff"></tr>
									         <tr style="background-color: #F3F3F3;">
									            <td width="200" ><font size="2px;"> 지정석 V석 ${l.vclass }원</font> </td>
									        </tr>
									        <tr height="5" style="background-color: #ffffff"></tr>
										</c:forEach>
								    </table>
								</div>
							</c:if>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div style="margin-left: 135px;">
			<input type="hidden" id="performGenreCode" name="performGenreCode" value="${performGenreCode }">
			<input type="hidden" id="step" name="step" value="1">
			<input type="button" id="book" value="예매하기" style="background-color: #EA4955; border-color: #EA4955;color: #ffffff" onclick="sendIt();">
		</div>
	</div>
</form>


</body>
</html>