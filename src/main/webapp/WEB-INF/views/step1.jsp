<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String str = (String)request.getAttribute("params");
	
	String userId = (String)request.getAttribute("userId");
	String performCode = (String)request.getAttribute("performCode");
	String selectedYear = (String)request.getAttribute("selectedYear");
	String selectedMonth = (String)request.getAttribute("selectedMonth");
	String selectedDay = (String)request.getAttribute("selectedDay");
	String time = (String)request.getAttribute("time");

	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Step1</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/ticketing/resources/css/book.css"
	type="text/css" />
<link rel="icon" type="image/png" href="http://example.com/myicon.png">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style type="text/css">
.resultDIV {
	font-size: 13px;
	color: #ED292F;
	font-weight: bold;
}

#bgcolor1 {
	background-color: #EB4956;
	color: #ffffff;
}

#bgcolor2 {
	background-color: #ffffff;
	color: #888888;
}
.datecolor{
	font-size: 13px;
	color: #ED292F;
	font-weight: bold; 
}

</style>
</head>
<body>

	<div class="post" style="vertical-align: top; float: left;">
		<div>
			<table width="800" bgcolor="#363636">
				<tr>
					<td width="16%" bgcolor="#353535"><img
						style="width: 110px; height: 50px;"
						src="/ticketing/resources/images/mark.PNG"></td>
					<td width="16%" bgcolor="#ffffff">&nbsp;&nbsp;<font
						size="1.5px;" color="#3A85C7"><b>Step1</b></font><br />&nbsp;&nbsp;<font
						size="3px;" color="black"><b>관람일/회차</b></font></td>
					<td width="16%" bgcolor="#696969">&nbsp;&nbsp;<font
						size="1.5px;" color="#B3B3B3"><b>Step2</b></font><br />&nbsp;&nbsp;<font
						size="3px;" color="#ffffff"><b>좌석선택</b></font></td>
					<td width="16%" bgcolor="#5F5F5F">&nbsp;&nbsp;<font
						size="1.5px;" color="#B3B3B3"><b>Step3</b></font><br />&nbsp;&nbsp;<font
						size="3px;" color="#ffffff"><b>할인/쿠폰</b></font></td>
					<td width="16%" bgcolor="#565656">&nbsp;&nbsp;<font
						size="1.5px;" color="#B3B3B3"><b>Step4</b></font><br />&nbsp;&nbsp;<font
						size="3px;" color="#ffffff"><b>수령방법</b></font></td>
					<td width="16%" bgcolor="#494949">&nbsp;&nbsp;<font
						size="1.5px;" color="#B3B3B3"><b>Step5</b></font><br />&nbsp;&nbsp;<font
						size="3px;" color="#ffffff"><b>결제 방법</b></font></td>
				</tr>
			</table>
		</div>

		<div>
			<table border="1" bordercolor="#BEBEBE" bgcolor="#ffffff"
				style="margin-left: 15px; margin-top: 10px;" width="770"
				cellpadding="0" cellspacing="0">
				<tr bgcolor="#7C9AB6">
					<td width="300">&nbsp;&nbsp;<font color="#ffffff" size="2px;"><b>관람일 선택</b></font></td>
					<td width="470">&nbsp;&nbsp;<font color="#ffffff" size="2px;"><b>회차선택</b></font></td>
				</tr>
				<tr>
					<td>
						<div style="margin-left: 225px; margin-top: 10px;">
							&nbsp;<!-- <input type="button" value="당일예매" style="font-size: 11px; border-radius: 5px; border-color: #F9F9F9; background-color: #ffffff"> -->
						</div>
						<div style="margin-left: 10px;">
							<div class="cal_top">
								<div style="margin-left: 38px;">
									<a href="#" id="movePrevMonth"><span id="prevMonth"
										class="cal_tit">&lt;</span></a> <span id="cal_top_year"></span> <span
										id="cal_top_month"></span> <a href="#" id="moveNextMonth"><span
										id="nextMonth" class="cal_tit">&gt;</span></a>
								</div>
							</div>
							
							<div id="cal_tab" class="cal" style="margin-left: 30px;"></div>

						</div>
						<div style="margin-left: 28px; margin-bottom: 30px;">
							<img src="/ticketing/resources/images/color.PNG">
						</div>
					</td>
					<td>
						<div style="margin-left: 30px;">
							<div style="margin-top: 20px;">
								<table>
									<tr>
										<td><font size="2px"><b>선택 날짜&nbsp;&nbsp;&nbsp;&nbsp;</b></font></td>
										<td width="150" bgcolor="#F9F9F9">
											<div id="resultDIV" class="resultDIV"><%=selectedYear%>.<%=selectedMonth%>.<%=selectedDay%></div>
										</td>
									</tr>
								</table>
							</div>

							<br />

							<div style="margin-top: 10px;">
								<div>
									<table border="0" bordercolor="#ffffff" cellpadding="0"
										cellspacing="0">
										<tr>
											<td width="150"
												style="border-top: 0; border-top-color: #ffffff"><font
												size="2px"><b>회차선택</b></font></td>
											<td width="200"><font size="2px"><b>&nbsp;&nbsp;좌석등급/잔여석</b></font></td>
										</tr>
									</table>
								</div>
								<div style="margin-top: 10px;">
									<div class="post">
										<table border="1" bordercolor="#DCDCDC" cellpadding="0" cellspacing="0" height="150" width="150">
											<tr>
												<td width="150">
													<div>
														<table border="1" cellpadding="0" cellspacing="0" bordercolor="#DCDCDC" style="border-spacing: 5px;">
															<tr>
																<td class="check" <%if (time.equals("16:00")) {%> id="bgcolor1"
																	<%} else {%> id="bgcolor2" <%}%>>&nbsp;<font
																	size="2px">&nbsp;&nbsp;[1회]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;16:00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
															</tr>
															<tr>
																<td class="check" <%if (time.equals("18:00")) {%> id="bgcolor1"
																	<%} else {%> id="bgcolor2" <%}%>>&nbsp;<font
																	size="2px">&nbsp;&nbsp;[2회]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18:00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
															</tr>

														</table>
													</div>
												</td>
											</tr>
										</table>
									</div>
									<div class="post">
										<table border="1" bordercolor="#DCDCDC" cellpadding="0"
											cellspacing="0" height="150">
											<tr>
												<td width="200">
												<!-- 공연 -->
												<% if(performCode == "1111"){ %>
													 <div>
														 <table cellpadding="0" cellspacing="0" style="margin-left: 5px;">
															<tr height="50">
																<td bgcolor="#F9F9F9">
																	<div class="post" style="margin-right: 130px; vertical-align: top;">
																		<font size="1.5px;" color="#8888A4"><b>전석</b></font>
																	</div>
																</td>
																<td bgcolor="#F9F9F9">
																	
																	<div class="post">
																		<font size="1.5px;" color="#8888A4"><b>40000원</b></font><br />
																		<select name="inwon" id="inwon">
																			<option value="0" selected="selected">0매</option>
																			<option value="1">1매</option>
																			<option value="2">2매</option>
																			<option value="3">3매</option>
																		</select>
																	</div>
																</td>
															</tr>
															<tr height="50">
																<td colspan="2"></td>
															</tr>
														</table> 
													</div>
												<%}else{ %>	
													<!-- 콘서트 좌석 등급 및 잔여석 표시 -->
													<div style="width: 240px; height: 130px; overflow: auto; margin-left: 10px; border-color: #ffffff" >
													    <table width="220px" border="0" style="border-color: #FFFFFF; border-collapse: collapse;" cellpadding="0" cellspacing="0">
													        <tr style="background-color: #F3F3F3;">
													            <td width="200" ><font size="2px;"> 지정석 VIP석 187,000원</font> </td>
													            <td width="200" ><font size="2px;">(잔여 : 0석)</font></td>
													        </tr>
													        <tr height="5" style="background-color: #ffffff"></tr>
													         <tr style="background-color: #F3F3F3;">
													            <td width="200" ><font size="2px;"> 지정석 S석 187,000원</font></td>
													            <td width="200" ><font size="2px;">(잔여 :1석)</font></td>
													        </tr>
													        <tr height="5" style="background-color: #ffffff"></tr>
													         <tr style="background-color: #F3F3F3;">
													            <td width="200" ><font size="2px;"> 지정석 R석 187,000원</font></td>
													            <td width="200" ><font size="2px;">(잔여:0석)</font></td>
													        </tr>
													        <tr height="5" style="background-color: #ffffff"></tr>
													         <tr style="background-color: #F3F3F3;">
													            <td width="200" ><font size="2px;"> 지정석 A석 187,000원</font></td>
													            <td width="200" ><font size="2px;">(잔여:7석)</font></td>
													        </tr>
													        <tr height="5" style="background-color: #ffffff"></tr>
													         <tr style="background-color: #F3F3F3;">
													            <td width="200" ><font size="2px;"> 지정석 B석 187,000원</font></td>
													            <td width="200" ><font size="2px;">(잔여:0석)</font></td>
													        </tr>
													        <tr height="5" style="background-color: #ffffff"></tr>
													         <tr style="background-color: #F3F3F3;">
													            <td width="200" ><font size="2px;"> 지정석 C석 187,000원</font></td>
													            <td width="200" ><font size="2px;">(잔여:10석)</font></td>
													        </tr>
													        <tr height="5" style="background-color: #ffffff"></tr>
													         <tr style="background-color: #F3F3F3;">
													            <td width="200" ><font size="2px;"> 지정석 D석 187,000원</font></td>
													            <td width="200" ><font size="2px;">(잔여:0석)</font></td>
													        </tr>
													        <tr height="5" style="background-color: #ffffff"></tr>
													         <tr style="background-color: #F3F3F3;">
													            <td width="200" ><font size="2px;"> 지정석 E석 187,000원</font></td>
													            <td width="200" ><font size="2px;">(잔여:12석)</font></td>
													        </tr>
													        <tr height="5" style="background-color: #ffffff"></tr>
													        
													    </table>
													</div>
													<%} %>
												</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
							<div style="margin-top: 15px; margin-left: 310px; margin-bottom: 30px;">
								<input type="button" value="좌석다시선택"
									style="color: #ffffff; background-color: #4E91CC; border-radius: 5px;">
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>

		<br />

		<div style="margin-left: 13px">
			<img src="/ticketing/resources/images/notes.PNG" width="730"
				height="130" />
		</div>
	</div>

	<div class="post" id="detailDIV" style="vertical-align: top;">
		<jsp:include page="detail.jsp">
			<jsp:param value="1" name="step" />
		</jsp:include>
	</div>
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
			var startDay = 2;
			var duringDate = 10;
			var t = 0;
			var flag = false;
			var cnt = 0;
			var selectedYear = <%=selectedYear%>
			var selectedMonth = <%=selectedMonth%>
			var selectedDay = <%=selectedDay%>
			var count=0;
			
			var chch = true;
									    
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
				        	
				        	console.log("cnt1: " + cnt);
				        	var btnColor = $(this).css("backgroundColor");
				        	
				        	var year = $('#cal_top_year').text();
				        	console.log(year);
				        	
				        	var month = $('#cal_top_month').text();
				        	console.log(month);
				        	
				        	var day = $(this).text();
				        	console.log(day);
				        	
							var params = year + "." + month + "." + day;
				        	
				        	// 홈에서 불러온 값을 바탕으로 배경색 설정한 부분 제어하는 부분
				        	if(cnt >= 1) {
				        		
				        		if(btnColor == "rgb(124, 140, 148)") { // gray
									cnt++;
									alert("관람일 선택 클릭을 해제하세요....(1)");
									return;
				        		
				        		}else{ 
				        			
				        			count=1;
				        			cnt=0;
				        			$(this).css('backgroundColor', '#7C8C94'); // gray
				        			return;
				        		
				        		}
				        		
				        	}
				        	
				        	console.log(count + " :::2121212");
							// 배경색 제어 부분 ( home에서 불러온 값 제외하고 제어하는 부분 )
						    if(count==1){
						        		
						    	console.log(count +"///1212121");
						       			if(btnColor == "rgb(124, 140, 148)") { //gray -> pink
							        		
						        			
											$.ajax({
												
												type:"GET",
												url:"changeDate",
												data:{"params": params},
												success:function(args){
													console.log("args: "+args);
													$("#resultDIV").html(args);
												
												},
												error:function(e){
													alert(e.responseText);
												}
											
											}); 
								      	 	 
								      	 	var check = "2222";
								      	 	 
								      	 	$.ajax({
									    			
									    			type:"GET",
									    			url:"detailDate",
									    			data:{"check": check},
									    			success:function(args){
									    				$('#detailDIV').html(args);
									    			},
									    			error:function(e){
									    				alert(e.responseText);
									    			}
									    		
									    		});
								      	 	
								      	 	
								      	 	count=0;
						        			$(this).css('backgroundColor', '#EC2A32');
						        			
						        			
						        		}else if(btnColor == "rgb(236, 42, 50)") { //pink -> gray
						        			count=0;
						        			cnt=0;
						        			$(this).css('backgroundColor', '#7C8C94');
						        			
						        		}
						        	
						     }else{ 
						        		
						       			if(btnColor == "rgb(236, 42, 50)"){ //pink -> gray
						        			count=1;
						        			$(this).css('backgroundColor', '#7C8C94');
						        		
						        		}
						        	
										if(btnColor == "rgb(124, 140, 148)") { //gray -> 미동없음
											alert("관람일 선택 클릭을 해제하세요....(2)");
										}
						     } 
						   
					   });  // cal-day click 끝
				}// drawCalendar 끝
									    
				   
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
					           	t++; // 회색배경으로 표시되어야하는 기간 count 세는 변수
				           }else{
				        	    $tdDay.eq(i).text(dayCount++);
				           }
				           
				           
				           if(t == duringDate) {
					           	flag=false;
					           	t=0;
				           }
				           
				           if( month==selectedMonth && year==selectedYear && dayCount==selectedDay+1){
				            	$tdDay.eq(i).css("background-color","#EC2A32");
				            	$tdDay.eq(i).text(dayCount-1);
				            	cnt = 1;
				            }
				           
				        // $tdDay.eq(i).text(++dayCount);
		
					}
		
					for (var i = 0; i < 35; i += 7) {
						$tdDay.eq(i).css("color", "red");
					}
					for (var i = 6; i < 35; i += 7) {
						$tdDay.eq(i).css("color", "blue");
					}
					console.log("cnt: " + cnt);
				}
		
				function movePrevMonth() {
					month--;
					if (month <= 0) {
						month = 12;
						year--;
					}
					if (month < 10) {
						month = String("0" + month);
					}
					getNewInfo();
				}
		
				function moveNextMonth() {
					month++;
					if (month > 12) {
						month = 1;
						year++;
					}
					if (month < 10) {
						month = String("0" + month);
					}
					getNewInfo();
				}
		
				function getNewInfo() {
					for (var i = 0; i < 42; i++) {
						$tdDay.eq(i).text("");
					}
					dayCount = 1;
					firstDay = new Date(year, month - 1, 1);
					lastDay = new Date(year, month, 0);
					drawDays();
				}
	</script>
	
	<script type="text/javascript">
		
		var timecnt = 1;
		
		
		// 관람시간 선택 부분
		$('.check').click(function() {
					
					var btnColor = $(this).css("backgroundColor");
					console.log(btnColor);
					
					if (timecnt == 0) {

						if (btnColor == "rgba(0, 0, 0, 0)" || btnColor == "rgb(255, 255, 255)") {
							
							
							var time = $(this).text();
							
							$.ajax({
									
									type:"GET",
									url:"changeTime",
									data:{"time": time},
									success:function(args){
										console.log("args: "+args);
										//$("#resultDIV").html(args);
									
									},
									error:function(e){
										alert(e.responseText);
									}
								
								});
							
							
							var check = "3333";

							$.ajax({
								
								type:"GET",
								url:"detailDate",
								data:{"check": check},
								success:function(args){
									$('#detailDIV').html(args);
								},
								error:function(e){
									alert(e.responseText);
								}
							
							});
							
							$(this).css('backgroundColor', '#EB4956');
							$(this).css('color', '#FFFFFF');
							
							timecnt = 1;

						} else if(btnColor == "rgb(235, 73, 86)") {
							$(this).css('backgroundColor', '#FFFFFF');
							$(this).css('color', 'black');
							timecnt = 0;
						}
					
					
					} else {

						if (btnColor == "rgb(235, 73, 86)") { //pink

							timecnt = 0;

							$(this).css('backgroundColor', '#FFFFFF');
							$(this).css('color', 'black');
							
						}

						if (btnColor == "rgba(0, 0, 0, 0)" || btnColor == "rgb(255, 255, 255)") {
							alert("선택한 시간회차를 해제해주세요.");

						}

					}

				})
	</script>
	<script type="text/javascript">
	
		$('#inwon').change(function() {
			
			var inwon = this.value;
			console.log(inwon);
			
			/* $.get('/ticketing/changeInwon', {
				"inwon": inwon
			}, function(args) {
				console.log(args);
			}); */
			
			$.ajax({
				
				type:"GET",
				url:"changeInwon",
				data:{"inwon": inwon},
				success:function(args){
					console.log("args: "+args);
					//$("#resultDIV").html(args);
				
				},
				error:function(e){
					alert(e.responseText);
				}
			
			});
			
			var check = "4444";
			
			$.ajax({
				
				type:"GET",
				url:"detailDate",
				data:{"check": check},
				success:function(args){
					console.log("args: "+args);
					$("#detailDIV").html(args);
				
				},
				error:function(e){
					alert(e.responseText);
				}
			
			});
			
		});
	
	
	</script>
	<script type="text/javascript">
	
	// window업로드 되자마자 받은 dto를 ajax에서 modelandview를 통해 detail로 보낸다.
	
	$(document).ready(function(){
		
		var check = "1111";

		$.ajax({
			
			type:"GET",
			url:"detailDate",
			data:{"check": check},
			success:function(args){
				$('#detailDIV').html(args);
			},
			error:function(e){
				alert(e.responseText);
			}
		
		});
		
		
	});

	</script>
</body>
</html>