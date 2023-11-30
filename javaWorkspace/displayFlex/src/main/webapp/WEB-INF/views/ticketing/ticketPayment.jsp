<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="../resources/css/ticketing/ticketPayment.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="../resources/bootstrap-5.3.2-dist/css/bootstrap.css">
    <script src="../resources/bootstrap-5.3.2-dist/js/bootstrap.js"></script>

    <title>예매페이지-결제</title>

</head>
<body>
    <header>
        <nav>    
            <%@ include file="/WEB-INF/views/common/header.jsp" %>
        </nav>
    </header>
    <main>
        <div class="empty">빈공간</div>
        <div id="stepMenu_area">
            <div class="accordion" id="step-accordion">
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                      <div class="step-name">
                        <p>STEP1</p>
                        <p>할인쿠폰</p>
                      </div>
                    </button>
                  </h2>
                  <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                      <div id="coupon-table">
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
                                <% for(int i = 0; i < 10; i++){%>
                                <tr>
                                    <td><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">쿠폰....</td>
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
                        <p>등급할인</p>
                      </div>
                    </button>
                  </h2>
                  <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                      <strong>dd</strong> ?? 
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                      <div class="step-name">
                        <p>STEP3</p>
                        <p>우대사항</p>
                      </div>
                    </button>
                  </h2>
                  <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                      <strong>dd</strong> ?? 
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingFour">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                      <div class="step-name">
                        <p>STEP4</p>
                        <p>결제수단</p>
                      </div>
                    </button>
                  </h2>
                  <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                      <strong>dd</strong> ?? 
                    </div>
                  </div>
                </div>
              </div>
        </div>
        <div id="paymentInfo_area">
            <div id="paymentInfo">
                <div id="payment">
                    <div>
                        <div><span>결제 금액</span></div>
                        <div><span>14000</span><span>원</span></div>
                    </div>
                </div>
                <div id="discount">
                    <div>
                        <div><span>할인 내역</span></div>
                        <div><span>무슨무슨 쿠폰</span></div>
                        <div><span>1000</span><span>원</span></div>                            
                    </div>
                </div>
                <div id="totalPayment">
                    <div>
                        <div><span>최종 결제 금액</span></div>
                        <div></div>
                        <div><span>13000</span><span>원</span></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="empty">빈공간</div>
    </main>

    <div id="selectInfo">
        <div id="ticket-posterImg">
			<img src="http://file.koreafilm.or.kr/thm/02/00/01/14/tn_DPF000702.jpg" alt="벼랑 위의 포뇨" id="posterImg">
		</div>
        <div id="ticket-movieName">
            <span>벼랑 위의 포뇨</span>
        </div>
        <div id="ticket-movieInfo">
            <table>
                <tbody>
                    <tr>
                        <td>일시</td>
                        <td>2023년 11월 10일(금) 10:00</td>
                    </tr>
                    <tr>
                        <td>상영관</td>
                        <td>2관</td>
                    </tr>
                    <tr>
                        <td>인원</td>
                        <td>2명</td>
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
                        <td>C1, C2</td>
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
            <button type="button" onclick="window.location.href='/cinema/ticket/payment'">
                <i class="bi bi-check-circle-fill"></i>
                <span>결제하기</span>
            </button>
        </div>
    </div>

    <footer>
        푸터영역

    </footer>

</body>
</html>