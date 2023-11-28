<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/cinema/resources/css/saleinfo/saleinfo.css">


<style>
    .sale_container {
        width: 1700px;
        height: 700px;
        background-color: white;
        margin: auto;
    }

    #sale_chil {
        border: 1px solid gold;
        float: left;
        width: 33%;
        padding: auto;
    }

    #sale_old {
        border: 1px solid red;
        float: left;
        width: 33%;
        padding: auto;
    }

    #sale_jang {
        border: 1px solid blue;
        float: left;
        width: 33%;
        padding: auto;
    }
    #jul1 {
        border-top: 4px solid black; 
    }
</style>

</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="sale_container">
        <hr id="jul1">
        <h1 style="font-size: 25px;"> &nbsp;&nbsp;&nbsp;&nbsp; 우대할인혜택</h1>
        <hr>
        <div id="sale_chil">
            <img src="resources/image/sale/child.png" alt="어린이할인"><br><br>
            <div>어린이할인</div> <br>

            <div>
                미취학 아동 2000원 할인
                <div style="color: gray;font-size: 10px;" ><br><br>
                    -만 4세 ~ 만12세:미취학 아동 ~ 초등학생(의료보험증, 주민등록 초/등본 확인)<br><br>
                    -48개월 미만의 경우 증빙원(예:의료보험증, 주민등록 초/등본 등) 지참 시에만 무료 관람 가능
                </div>
            </div>

        </div>
        <div id="sale_old">
            <img src="resources/image/sale/old.png" alt="경로할인"><br><br>
            <div>경로할인</div> <br>

            <div>
                만 65세 이상 1000원 할인
                <div style="color: gray;font-size: 10px;" ><br><br>
                    - 만 65세 이상 본인에 한함<br><br>
                    - 1958년 이전 출생자(신분증 미소지시 현금 차액 지불)
                </div>
            </div>
        </div>
        <div id="sale_jang">
            <img src="resources/image/sale/jang.png" alt="장애인할인"><br><br>
            <div>장애인할인</div> <br>

            <div>
                장애인 영화관람료 1000원 할인
                <div style="color: gray;font-size: 10px;" ><br><br>
                    - 현장에서 복지카드를 소지한 장애인<br><br>
                    - 1급 ~ 3급까지 동반 1인까지 적용 / 4~6급은 본인에 한함
                </div>
            </div>
            
        </div>
    </div>
</body>
</html>
      

    

</body>
</html>