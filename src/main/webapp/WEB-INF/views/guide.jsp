<!-- Main header 시작  -->
	 <div>
		<jsp:include page="mainHeader.jsp" flush="false" />
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	</div>
<br/><br/><br/><br/><br/>
<!-- Main header 종료  -->
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  
  	var items
  
  $( function() {	  
    $( "#menu" ).menu({
      items: "> :not(.ui-widget-header)"
    });
  } );
  </script>
  <style>
  .ui-menu { width: 200px; }
  .ui-widget-header { padding: 0.2em; }
  </style>
  
<body>

<ul id="menu">
  <li class="ui-widget-header"><div>예매이용안내</div></li>
  <li><div>예매방법</div></li> 
  <li><div>결제방법</div></li>
  <li><div>배송/반송</div></li>
  <li class="ui-widget-header"><div>Category 2</div></li>
  <li><div>Option 4</div></li>
  <li><div>Option 5</div></li>
  <li><div>Option 6</div></li>
</ul>
 
 
 <!-- footer 시작  -->
	 <div>
		<jsp:include page="mainFooter.jsp" flush="false" />
	</div>
<!-- footer 종료  --> 
	
</body>
</html>


