
/*---------------------------예매 선택 정보 */


let ticketData = {};
let seatData = [];

// 포스터 이미지 바꾸끼
function changeMovieImage(){
	
	fetch("http://localhost:9002/cinema/ticket/select/image?movieNo=" + sessionStorage.getItem("movieNo"))
	.then( (resp) => { return resp.text() } ) 
	.then( (movieImgUrl) => { 
			console.log(movieImgUrl);
			
			const posterImg = document.getElementById("posterImg");
			ticketData.posterImg = movieImgUrl;
			posterImg.src = movieImgUrl;
	} );
}

// 상영 날짜 정보
function printDateList(){
	
	fetch("http://localhost:9002/cinema/ticket/select/dateList?movieNo=" + sessionStorage.getItem("movieNo"))
	.then( (resp) => { return resp.json() } ) 
	.then( (voList) => { 
            console.log(voList);
            const dateList = document.getElementById("dateList");

            dateList.innerHTML = "";

            voList.forEach((date, index) => {
                const listItem = createListItem(date, index);
                dateList.appendChild(listItem);
            });
        })
}

// 날짜 li 생성
function createListItem(date, index) {
//    cosole.log("createListItem date : " + date);
//        cosole.log("createListItem index : " + index);

    const listItem = document.createElement("li");
    listItem.className = "ticketingDate";

    const button = document.createElement("button");
    button.type = "button";
    button.onclick = function() {
        changeDateInfo(index);
    };

    const span = document.createElement("span");
    span.className = "text";
    span.id = "movieDate" + index;
    span.textContent = date;

    button.appendChild(span);

    listItem.appendChild(button);

    return listItem;
}

// 시간 생성 (상영관별..?)
function printTimeList(){
 	fetch("http://localhost:9002/cinema/ticket/select/timeList?movieNo=" + sessionStorage.getItem("movieNo"))
	.then( (resp) => { return resp.json() } ) 
	.then( (voList) => { 
            console.log(voList);
            const dateList = document.getElementById("dateList");

            dateList.innerHTML = "";

            voList.forEach((date, index) => {
                const listItem = createListItem(date, index);
                dateList.appendChild(listItem);
            });
        })
}


// 예매 - 영화 선택
 function changeMovieInfo(index) {
	
    const selectedMovie = document.getElementById('movieNo' + index).parentNode;
    selectedMovie.style.cssText = 'background-color: #EDD711; border-radius: 10px;';
    
    if (window.selectedMovie && window.selectedMovie !== selectedMovie) {
      window.selectedMovie.style.backgroundColor = '';
      ticketData = {};
//        window.selectedDate = undefined;
//        window.selectedSeat = undefined;
//        window.selectedTheater = undefined;
//        window.selectedTime = undefined;
//        window.totalReserved = undefined;
	 const timeMenu = document.getElementById('time');
	 const arrow2 = document.getElementById('arrow2');
	 timeMenu.style.display = "none";
	 arrow2.style.display = "none";
	 const seatMenu = document.getElementById('ticketing2')
	 seatMenu.style.display = "none";
    }
    const movieNo = document.getElementById('movieNo' + index);
    const movieInfo = document.getElementById('movieInfo');
    const content = movieNo.innerText;
    movieInfo.innerText = content;

    window.selectedMovie = selectedMovie;

    ticketData.selectedMovie = content;
    const arrow = document.getElementById('arrow1');
    const dateMenu = document.getElementById('date');

    if(ticketData.selectedMovie != null){
      arrow.style.cssText = 'display : flex;'
      dateMenu.style.cssText = 'display : grid;'  
    } 

    console.log(ticketData);
 
   	sessionStorage.setItem("movieNo", index);
   	changeMovieImage();
   	printDateList();
  }

// 예매 - 날짜 선택
  function changeDateInfo(index) {
	  
	
    const selectedDate = document.getElementById('movieDate' + index).parentNode;
    selectedDate.style.cssText = 'background-color: #EDD711; border-radius: 10px;';

    if (window.selectedDate && window.selectedDate !== selectedDate) {
      window.selectedDate.style.backgroundColor = '';
    }

    const movieDate = document.getElementById('movieDate' + index);
    const dateInfo = document.getElementById('dateInfo');
    const content = movieDate.innerText;
    dateInfo.innerText = content;

    window.selectedDate = selectedDate;

    ticketData.selectedDate = content;

    const arrow2 = document.getElementById('arrow2');
    const timeMenu = document.getElementById('time');

    if(ticketData.selectedDate !== null){
      arrow2.style.cssText = 'display : flex;'
      timeMenu.style.cssText = 'display : grid;'  
    } 
    else {
	  arrow2.style.cssText = 'display : none;'
      timeMenu.style.cssText = 'display : none;'
	}

    console.log(ticketData);
   }


// 예매 -상영관, 시간 선택
const selectedTimeButtons = document.getElementsByClassName("selectTime");

Array.from(selectedTimeButtons).forEach(function (button) {
    button.addEventListener('click', function() {
      const selectedTheater = this.closest('div[id^="theater"]').querySelector('div:first-child').innerText;
      button.parentNode.style.backgroundColor = '#EDD711';
 
      if (window.selectedTime && window.selectedTime !== button) {
          window.selectedTime.parentNode.style.backgroundColor = '';
      }


      const timeInfo = document.getElementById('timeInfo');
      timeInfo.innerText = button.innerText;
	
		  const theaterInfo = document.getElementById('theaterInfo');
		  theaterInfo.innerText = selectedTheater

      window.selectedTime = button;

      ticketData.selectedTime = button.innerText;
      ticketData.selectedTheater = theaterInfo.innerText;

      const seatMenu = document.getElementById('ticketing2')

      if(ticketData.selectedTime !== null){
        seatMenu.style.cssText = 'display : block;'  
      }

      console.log(ticketData);
    });
});
    
// 좌석 선택 - 몇 명인지, 몇번 좌석인지
document.querySelectorAll('.seat div').forEach(seat => {
    seat.addEventListener('click', handleSeatClick);
});

function handleSeatClick(event) {
  const selectedSeat = event.currentTarget;
  const row = selectedSeat.parentElement.querySelector('.seatRow').textContent; 
  const seatNumber = selectedSeat.textContent;

  const seatName = row + seatNumber;

  const isSelected = selectedSeat.classList.contains('selected');

  if (isSelected) {
    selectedSeat.classList.remove('selected');
    const button = selectedSeat.querySelector('button');
    button.style.backgroundColor = '';

    seatData.splice(seatData.indexOf('seatName'), 1);
  } else {
    selectedSeat.classList.add('selected');
    const button = selectedSeat.querySelector('button');
    button.style.backgroundColor = '#EDD711';

    seatData.push(seatName);
  }

	ticketData.selectedSeat = seatData;

  const totalReserved = seatData.length;
  ticketData.totalReserved = totalReserved;
  console.log(ticketData);

  const seatInfo = document.getElementById('seatInfo');
  seatInfo.innerText = seatData;
  const reservedInfo = document.getElementById('reservedInfo');
  reservedInfo.innerText = totalReserved;
  // 총 금액
  const payInfo = document.getElementById('payInfo');
  const totalAmount = totalReserved * 8000;
  ticketData.totalAmount = totalAmount;
  payInfo.innerText = totalAmount;
  console.log("마지막" + ticketData);
  sessionStorage.setItem("ticketData", JSON.stringify(ticketData)); 
  
  const selectComplete = document.getElementById('selectComplete'); 
  selectComplete.style.display = "flex";
}

// 다른 항목 선택시 선택정보 초기화
function resetSelectedInfo(){
	
}



/*---------------------------예매 선택 정보 -끝*/

/*선택 완료 버튼*/

function completeSelect(){
  window.location.href = '/cinema/ticketing/payment';
}