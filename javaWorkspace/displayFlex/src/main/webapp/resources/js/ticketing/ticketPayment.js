
let ticketData = JSON.parse(sessionStorage.getItem("ticketData"));
console.log("payment >>>>" + ticketData);


const movieInfo = document.getElementById("movieInfo");
const dateInfo = document.getElementById("dateInfo");
const timeInfo = document.getElementById("timeInfo");
const theaterInfo = document.getElementById("theaterInfo");
const reservedInfo = document.getElementById("reservedInfo");
const seatInfo = document.getElementById("seatInfo");
const paymentAmount = document.getElementById("paymentAmount-value");
const discountValue = document.getElementById("discount-value");
const totalPayment = document.getElementById("totalPayment-value");
const posterImg = document.getElementById("posterImg");

//현재 적용된 할인 금액

movieInfo.innerText = ticketData.selectedMovie;
dateInfo.innerText = ticketData.selectedDate;
timeInfo.innerText = ticketData.selectedTime;
theaterInfo.innerText = ticketData.selectedTheater;
reservedInfo.innerText = ticketData.totalReserved;
seatInfo.innerText = ticketData.selectedSeat;
paymentAmount.innerText = ticketData.paymentAmount;
totalPayment.innerText = ticketData.paymentAmount;
posterImg.src = ticketData.posterImg;



function openPopup(url){
    const ticketPopup = window.open(url, '티켓','width=600, height=569');
}

const checkedCoupon = document.getElementsByName('discount');

checkedCoupon.forEach((checkbox) => {
    checkbox.addEventListener('change', function() {
					
  
  		if(checkbox.value !== 'null' && !isNaN(checkbox.value)){
			console.log(checkbox.value + " 할인쿠폰 선택했다...")
	  		fetch("http://localhost:9002/cinema/ticket/payment", {
				  method: "POST",
				  headers: {
				  	"Content-Type": "application/json"
				  },
				  	body: checkbox.value
			})
	  		.then((resp) =>{ return resp.json() })
	  		.then((couponVo) => {
        		const discountDetails = document.getElementById("discountDetails");
//        		const paymentAmountValue = document.getElementById("paymentAmount-value");
		        const discountValue = document.getElementById("discount-value");
		        const totalPaymentValue = document.getElementById("totalPayment-value");
				
				ticketData.retainedNo = couponVo.retainedNo;
				ticketData.discount = parseInt(couponVo.discount);
				
				ticketData.totalAmount = ticketData.paymentAmount - ticketData.discount;

				discountDetails.innerText = couponVo.name;
				discountValue.innerText = ticketData.discount;
				totalPaymentValue.innerHTML = ticketData.totalAmount;
	
				console.log("쿠폰선택후  >>>> " + ticketData);
			  })
			  .catch(()=>{
				  
			  })
		} else if(checkbox.value.includes("할인")){
			
			const discountDetails = document.getElementById("discountDetails");
		    const discountValue = document.getElementById("discount-value");
		    const totalPaymentValue = document.getElementById("totalPayment-value");
			
			discountDetails.innerHTML = checkbox.value;
		    ticketData.discount = 1000;
		    
		    discountValue.innerHTML = ticketData.discount;
		    totalPaymentValue.innerHTML = ticketData.paymentAmount - ticketData.discount;
			
//			fetch("http://localhost:9002/cinema/ticket/payment", {
//			    method: "POST",
//			    headers: {
//				  	"Content-Type": "application/json"
//				},
//					body: checkbox.value
//				})
//			.then((resp) =>{ return resp.json() })
//	  		.then((x) => {
//				console.log(x);  
//			})
//			 
				
			
		}     
        if(checkbox.value === 'null'){
			const discountDetails = document.getElementById("discountDetails");
		    const discountValue = document.getElementById("discount-value");
		    const totalPaymentValue = document.getElementById("totalPayment-value");
		    discountDetails.innerText = "쿠폰 또는 혜택을 선택하세요";
		    ticketData.discount = 0;
		    discountValue.innerHTML = ticketData.discount;
		    totalPaymentValue.innerHTML = ticketData.paymentAmount;
		    
		}
        
        
//        const totalPaymentValue = document.getElementById("totalPayment-value");
    });
});

//function totalPayment(discountMethod, discountValue){
//	// 할인금액 처리
//	const discountDetails = document.getElementById("discountDetails");
//	const discountValue = document.getElementById("discount-value");
//	ticketData.di
//	ticketData.discount = discountValue;
//		
//	
//	// 최종 결제금액 처리
//	const totalPaymentValue = document.getElementById("totalPayment-value");
//	const totalPayment = ticketData.paymentAmount - discountValue;
//	ticketData.totalPayment = totalPayment;
//	totalPaymentValue = totalPayment;
//	
//	totalPaymentValue.innerHTML = ticketData.paymentAmount;
//}



//                                              결제

//구매자 정보

console.log("페이버튼 >>" + ticketData)

const user_email = "zz";

const username = "zz";

const buyButton = document.getElementById('kakapay')
buyButton.setAttribute('onclick', `kakaoPay('${user_email}', '${username}')`)

var IMP = window.IMP;

var today = new Date();
var hours = today.getHours();
var minutes = today.getMinutes(); 
var seconds = today.getSeconds(); 
var milliseconds = today.getMilliseconds();
var makeMerchantUid = `${hours}` + `${minutes}` + `${seconds}` + `${milliseconds}`;

function kakaoPay(useremail, username) {
    if (confirm("예매 하시겠습니까?")) { // 구매 클릭시 한번 더 확인하기
//        if (localStorage.getItem("access")) { // 회원만 결제 가능
        if (true){
//            const emoticonName = document.getElementById('title').innerText
			const emoticonName = "emoticonName";
            IMP.init("imp70267381"); // 가맹점 식별코드
            IMP.request_pay({
                pg: 'kakaopay.TC0ONETIME', // PG사 코드표에서 선택
                pay_method: 'kakaopay', // 결제 방식
//                merchant_uid: "IMP" + makeMerchantUid, // 결제 고유 번호
                name: '영화이름', 
                amount: 100, // 가격
                //구매자 정보 ↓
                buyer_email: `${useremail}`,
                buyer_name: `${username}`,
                // buyer_tel : '010-1234-5678',
                // buyer_addr : '서울특별시 강남구 삼성동',
                // buyer_postcode : '123-456'
            }, async function (rsp) { // callback
                if (rsp.success) { //결제 성공시
                    console.log(rsp);
					//DB 에 인서트

                    if (response.status == 200) { // DB저장 성공시
                        alert('결제 완료!')
                        window.location.reload();
                    } else { // 결제완료 후 DB저장 실패시
                        alert(`error:[${response.status}]\n결제요청이 승인된 경우 관리자에게 문의바랍니다.`);
                        // DB저장 실패시 status에 따라 추가적인 작업 가능성
                    }
                } else if (rsp.success == false) { // 결제 실패시
                    alert(rsp.error_msg)
                }
            });
        }
        else { // 비회원 결제 불가
            alert('로그인이 필요합니다!')
        }
    } else { // 구매 확인 알림창 취소 클릭시 돌아가기
        return false;
    }
}
