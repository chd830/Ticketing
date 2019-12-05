<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>다음 지도 시작하기</title>
</head>
<body>
    <p style="margin-top: -12px">
        <em class="link"> <a href="javascript:void(0);"
            onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
                혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요. </a>
        </em>
    </p>
    <div id="map" style="width: 100%; height: 780px;"></div>
 
    <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff10a18701cb9609d0d4b309c8b6c530&libraries=services"></script>
    <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = {
            center : new daum.maps.LatLng(37.479010, 127.011643), // 지도의 중심좌표
            //center : new daum.maps.LatLng("${mapx}", 127.011643), // 지도의 중심좌표
            level : 4
        // 지도의 확대 레벨
        };
 
        // 지도를 생성합니다    
        var map = new daum.maps.Map(mapContainer, mapOption);
 
        // 주소-좌표 변환 객체를 생성합니다
        var geocoder = new daum.maps.services.Geocoder();
 
        var myAddress = [
                "서울특별시 서초구 서초동 남부순환로 2406" ];
 
        function myMarker(number, address) {
            // 주소로 좌표를 검색합니다
            geocoder
                    .addressSearch(
                            //'서울특별시 서초구 서초동 남부순환로 2406',
                            address,
                            function(result, status) {
                                // 정상적으로 검색이 완료됐으면 
                                if (status === daum.maps.services.Status.OK) {
 
                                    var coords = new daum.maps.LatLng(
                                            result[0].y, result[0].x);
 
                                    // 결과값으로 받은 위치를 마커로 표시합니다
                                  
                                    var marker = new daum.maps.Marker({
                                        map : map,
                                        position : coords
                                    });
                                    
 
                                    // 인포윈도우로 장소에 대한 설명을 표시합니다
                                    /*
                                    var infowindow = new daum.maps.InfoWindow(
                                            {
                                                // content : '<div style="width:50px;text-align:center;padding:3px 0;">I</div>'
                                                content : '<div style="color:red;">' +  number + '</div>'
                                            });
                                    infowindow.open(map, marker);
                                     */
 
                                    // 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
                                /*     var content = '<div class="customoverlay">'
                                            + '    <span class="title">'
                                            + '<div style="font-style:normal; color:red; font-weight:bold; font-size:1.0em">'
                                            + number + '</div>' + '</span>'
                                            + '</div>'; */
 
                                    // 커스텀 오버레이가 표시될 위치입니다 
                                    var position = new daum.maps.LatLng(
                                            result[0].y, result[0].x);
 
                                    // 커스텀 오버레이를 생성합니다
                                    var customOverlay = new daum.maps.CustomOverlay(
                                            {
                                                map : map,
                                                position : position,
                                                content : content ,
                                                yAnchor : 1
                                            });
 
                                    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                                    map.setCenter(coords);
                                }
                            });
        }
 
        for (i = 0; i < myAddress.length; i++) {
            myMarker(i + 1, myAddress[i]);
        }
    </script>
 
</body>
</html>