<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>예매 part</title>
<!-- 달력제외부분 -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
	margin-left: 40px;
	font-size: 20px;
}

.cal {
	text-align: left;
}

table.calendar {
	display: inline-table;
	text-align: center;
	height: 30px;
	margin-left: 20px;
}

table.calendar td {
	vertical-align: top;
	width: 25px;
}
</style>
</head>
<body>

	<br/>

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
							    
							    var startYear = 2019;
							    var startMonth = 12;
							    var startDay = 25;
							    var duringDate = 10;
							    var t=0;
							    var flag=false;
							    
							    var count=0;
							    
							    $(document).ready(function() {
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
							        	
										var params = year + ". " + month + ". " + day;
							        	
							      	 	
										$.ajax({
											
											type:"GET",
											url:"get",
											data:{"params": params},
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
							            	$tdDay.eq(i).css("color","white");
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


</body>
</html>