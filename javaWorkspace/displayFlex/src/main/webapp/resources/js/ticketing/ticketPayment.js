
let ticketData = JSON.parse(sessionStorage.getItem("ticketData"));

console.log(ticketData, typeof ticketData);

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
	
				console.log(ticketData);
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
			console.log("널 진입........");
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
