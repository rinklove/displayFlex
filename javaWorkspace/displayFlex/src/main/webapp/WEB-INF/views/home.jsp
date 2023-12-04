<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String x = (String) session.getAttribute("alertMsg");
	session.removeAttribute("alertMsg");
%>

<link rel="stylesheet" href="/cinema/resources/css/home.css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DisplayFlex</title>

    <script>
	<% if( x != null ){ %>
	    alert('<%= x %>');
	<% } %>
	</script>
  
</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div id="wrap">

        <div class="poster">
            <img src="/cinema/resources/image/home/ponyo.jpeg" alt="포뇨사진">
        </div>
	    <div class="info">
	    	<div>다시 보고 싶으신 영화가 있으신가요?</div>
	    	<div><span><a href="/cinema/serviceCenter/recommendWrite">여기를 클릭</a>해서 다시 보고 싶은 영화를 요청하세요!</span></div>
	    </div>
	    <div class="event">
	    	<div>1</div>
	    	<div>2</div>
	    </div>

    </div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    
</body>
</html>