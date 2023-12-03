
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

movieInfo.innerText = ticketData.selectedMovie;
dateInfo.innerText = ticketData.selectedDate;
timeInfo.innerText = ticketData.selectedTime;
theaterInfo.innerText = ticketData.selectedTheater;
reservedInfo.innerText = ticketData.totalReserved;
seatInfo.innerText = ticketData.selectedSeat;
paymentAmount.innerText = ticketData.totalAmount;

totalPayment.innerText = ticketData.totalAmount;

function openPopup(url){
    const ticketPopup = window.open(url, '티켓','width=600, height=569');
}

function checkbox(coupon){
	
	const checkCoupon = document.getElementsByName("couponCheck");
  	checkCoupon.forEach((cc) => {
   	 cc.checked = false;
  	})
	coupon.checked = true;

	ticketData.appliedCoupon = coupon.defaultValue;
	console.log(ticketData);
  
	const discountDetails = document.getElementById("discountDetails");
  	discountDetails.innerText = ticketData.appliedCoupon;
  	
}


