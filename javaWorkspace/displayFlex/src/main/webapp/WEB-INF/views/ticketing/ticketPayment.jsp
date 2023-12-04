<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <script src="../resources/bootstrap-5.3.2-dist/js/bootstrap.js"></script>
    <link rel="stylesheet" href="../resources/css/ticketing/ticketPayment.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="../resources/bootstrap-5.3.2-dist/css/bootstrap.css">
    <script defer src="../resources/js/ticketing/ticketPayment.js"> </script>

    <title>예매페이지-결제</title>

</head>
<body>
<!--     <header> -->
<!--         <nav>     -->
            <%@ include file="/WEB-INF/views/common/header.jsp" %>
<!--         </nav> -->
<!--     </header> -->
    <main>
        <div class="empty"></div>
        <div id="stepMenu_area">
            <div class="accordion" id="step-accordion">
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                      <div class="step-name">
                        <p>STEP1</p>
                        <span>할인쿠폰</span>
                      </div>
                    </button>
                  </h2>
                  <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#step-accordion">
                    <div class="accordion-body">
                      <!-- 할인쿠폰 -->
                      <div id="step-coupon">
                        <p>FLEX 할인쿠폰</p>
                        <table id="couponList">
                            <thead>
                                <tr>
                                    <th>사용가능 쿠폰</th>
                                    <th>쿠폰 번호</th>
                                    <th>유효 기간</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for(int i = 0; i < 20; i++){%>
                                <tr>
                                    <td><input class="form-check-input" type="checkbox" value="coupon<%= i %>" id="flexCheckDefault" name ="couponCheck" onclick="checkbox(this);">쿠폰<%= i %></td>
                                    <td>쿠폰번호...</td>
                                    <td>2010-11-10</td>
                                </tr>
                                <% } %>
                            </tbody>

                        </table>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                      <div class="step-name">
                        <p>STEP2</p>
                        <span>할인혜택</span>
                      </div>
                    </button>
                  </h2>
                  <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#step-accordion">
                    <div class="accordion-body">
                      <!-- 할인 혜택 -->
                      <div id="step-discount">
                        <div id="gradeDiscount">
                          <div><span>등급할인</span></div>
                          <span><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">VIP 할인</span>
                        </div>
                        <div id="specialDiscount">
                          <div><span>우대사항</span></div>
                          <span><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">어린이</span>
                          <span><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">경로할인</span>
                          <span><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">장애인</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                      <div class="step-name">
                        <p>STEP3</p>
                        <span>결제수단</span>
                      </div>
                    </button>
                  </h2>
                  <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#step-accordion">
                    <div class="accordion-body">
                      <!-- 결제수단 -->
                      <div id="step-payment">
                        <div><h4>결제 방법</h4></div>
                        <div id="paymentMethod">
                          <div id="kakaoPay"><button><span><img src="../resources/image/ticketing/payment_icon_yellow_small.png" alt="카카오페이"></span></button></div>
                          <div><button><span>결제수단2</span></button></div>
                          <div><button><span>결제수단3</span></button></div>
                          <div><button><span>결제수단4</span></button></div>
                          
                          <div><button><span>결제수단5</span></button></div>
                          <div><button><span>결제수단6</span></button></div>
                          <div><button><span>결제수단7</span></button></div>
                          <div><button><span>결제수단8</span></button></div>
                          
                          <div><button><span>결제수단9</span></button></div>
                          <div><button><span>결제수단10</span></button></div>
                          <div><button><span>결제수단11</span></button></div>
                          <div><button><span>결제수단12</span></button></div>
                        </div>
                      	<div>뭘 넣지..........</div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
        </div>
        <div id="paymentInfo_area">
            <div id="paymentInfo">
                <div id="paymentAmount">
                    <div>
                        <div><span>결제 금액</span></div>
                        <div><span id="paymentAmount-value">0</span><span>원</span></div>
                    </div>
                </div>
                <div id="discount">
                    <div>
                        <div><span>할인 내역</span></div>
                        <div><span id="discountDetails">쿠폰 또는 혜택을 선택하세요</span></div>
                        <div><span id="discount-value">0</span><span>원</span></div>                            
                    </div>
                </div>
                <div id="totalPayment">
                    <div>
                        <div><span>최종 결제 금액</span></div>
                        <div></div>
                        <div><span id="totalPayment-value">0</span><span>원</span></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="empty"></div>
    </main>

    <div id="selectInfo">
        <div id="ticket-posterImg">
			    <img src="http://file.koreafilm.or.kr/thm/02/00/01/14/tn_DPF000702.jpg" alt="벼랑 위의 포뇨" id="posterImg">
		    </div>
        <div id="ticket-movieName">
            <span id="movieInfo">벼랑 위의 포뇨</span>
        </div>
        <div id="ticket-movieInfo">
            <table>
                <tbody>
                    <tr>
                        <td>일시</td>
                        <td><span id="dateInfo"></span><span id="timeInfo"></span></td>
                    </tr>
                    <tr>
                        <td>상영관</td>
                        <td><span id="theaterInfo"></span></td>
                    </tr>
                    <tr>
                        <td>인원</td>
                        <td id="reservedInfo"></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="ticket-seatInfo">
            <table>
                <tbody>
                    <tr>
                        <td>좌석명</td>
                        <td>일반석</td>
                    </tr>
                    <tr>
                        <td>좌석번호</td>
                        <td id="seatInfo"></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="ticket-payInfo">
            <table>
                <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="ticket-payButton">
            <button type="button" onclick="openPopup('/cinema/ticket/popup');">
                <i class="bi bi-arrow-right-circle-fill"></i>
                <span>결제하기</span>
            </button>
        </div>
    </div>

    <footer>
        푸터영역

    </footer>

</body>
</html>