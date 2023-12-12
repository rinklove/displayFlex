
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

movieInfo.innerText = ticketData.selectedMovie;
dateInfo.innerText = ticketData.selectedDate;
timeInfo.innerText = ticketData.selectedTime;
theaterInfo.innerText = ticketData.selectedTheater;
reservedInfo.innerText = ticketData.totalReserved;
seatInfo.innerText = ticketData.selectedSeat;
paymentAmount.innerText = ticketData.totalAmount;
totalPayment.innerText = ticketData.totalAmount;
posterImg.src = ticketData.posterImg;



function openPopup(url){
    const ticketPopup = window.open(url, '티켓','width=600, height=569');
}

const checkedCoupon = document.getElementsByName('discount');

checkedCoupon.forEach((checkbox) => {
    checkbox.addEventListener('change', function() {
		
//		console.log(x);
			
        if (checkbox.checked) {
	        const x = checkbox.value;
            console.log(x + "체크했다.......");
        }   
  
  
  		fetch("http://localhost:9002/cinema/ticket")
  		.then((resp) =>{ return resp.json() })
  		.then()
        const discountDetails = document.getElementById("discountDetails");
        
//        if(checkbox.value === 'null'){
//			discountDetails.innerText = "쿠폰 또는 혜택을 선택하세요";
//		}
//        
        const discountValue = document.getElementById("discount-value");
        
        const totalPaymentValue = document.getElementById("totalPayment-value");
    });
});

