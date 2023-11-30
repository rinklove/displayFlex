<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="../resources/css/ticketing/ticketPayment.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    

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
            <div class="ticketAccord">
                <input type="checkbox" id="step01">
                <label for="step01">STEP1<em></em></label>
                <div>
                    <p>내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</p>
                    <p>내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</p>
                    <p>내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</p>
                    <p>내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</p>   
                </div>
            </div>
            <div class="ticketAccord">
                <input type="checkbox" id="step02">
                <label for="step02">STEP2<em></em></label>
                <div><p>내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</p></div>
            </div>
            <div class="ticketAccord">
                <input type="checkbox" id="step03">
                <label for="step03">STEP3<em></em></label>
                <div><p>내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</p></div>
            </div>
            <div class="ticketAccord">
                <input type="checkbox" id="step04">
                <label for="step04">STEP4<em></em></label>
                <div><p>내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</p></div>
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