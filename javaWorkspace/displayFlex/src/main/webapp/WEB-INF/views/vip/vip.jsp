<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="resources/css/vip/vip.css">    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<style>
    .vip_container{
        width: 1700;
        height: 700;
        background-color: white;
        margin: auto;
    }

    #vip_content{
        float: right;
        width: 50%;
        height: auto;
        padding: auto;
        display: inline;
        font-size: xx-large;
        
        
    }

    
    #vip_j{
        font-size: small;
        color: grey;
    }
    #jul1 {
        border-top: 4px solid black; /* Set the border thickness for the hr element */
    }

</style>



</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>


    <div class="vip_container">
        <hr id="jul1">
        <h1> &nbsp;&nbsp;&nbsp;&nbsp; VIP 혜택</h1>
        <hr>

        <div id="vip_img">

            <h1><img src="resources/image/vip/vip.png" alt=""></h1>
            <p id="vip_j">- 연 12회 이상 관람시 VIP혜택 적용 가능</p>

        </div>


        <div id="vip_content">
            <br><br><br>
            - 생일 축하 쿠폰 발급(무료 영화 관람권)
            <br><br>
            - 생일 축하 쿠폰 발급(스위트 콤보 쿠폰)
            <br><br>
            - 월 1회 영화 반값 할인 쿠폰 발급
            <br><br>
            - VIP 시사회 우선 초대권 혜택
            <br><br>     
        </div>


    </div>


</body>
</html>