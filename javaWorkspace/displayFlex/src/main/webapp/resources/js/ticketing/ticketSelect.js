
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

			if(voList.length == 0 ){
				const x = document.createElement("li");
				dateList.appendChild(x);
				x.innerText = "상영정보가 없습니다.";
			}
	
            voList.forEach((date, index) => {
                const listItem = createDateList(date, index);
                dateList.appendChild(listItem);
            });
            
            
        })
}

// 날짜 li 생성
function createDateList(date, index) {
//    console.log("createListItem date : " + date);
//    console.log("createListItem index : " + index);

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
	.then( (theatersData) => { 
			console.log(theatersData);

            const theater1 = document.getElementById("theater1_time")
            const theater2 = document.getElementById("theater2_time")
            const theater3 = document.getElementById("theater3_time")
            const theater4 = document.getElementById("theater4_time")
			
			theater1.innerHTML = "";
			theater2.innerHTML = "";
			theater3.innerHTML = "";
			theater4.innerHTML = "";
			
			theatersData.forEach((list) => {
				switch(list.theaterNo){
					case '1' : 
						theater1.appendChild(createTimeDiv(list));
						break;
			        case '2' :
						theater2.appendChild(createTimeDiv(list));
						break;
			        case '3' :
						theater3.appendChild(createTimeDiv(list));
						break;
			        case '4' :	
			        	theater4.appendChild(createTimeDiv(list));	
			        	break;
				}
			})
			
			
//			const theaters = {};
//			
//			// 상영관 및 시간 정보 분류
//			theatersData.forEach((item) => {
//				const theaterNo = item.theaterNo;
//				if (!theaters[theaterNo]) {
//			    	theaters[theaterNo] = [];
//			 	}
//				theaters[theaterNo].push(item.startTime);
//			});
//			
//			console.log(theaters);
//			
//			// 상영관 및 시간 정보 추가
//			const timeContainer = document.getElementById("theater");
//			
//			for (const theaterNo in theaters) {
//			  	const theaterDiv = document.createElement("div");
//				theaterDiv.id = "theater" + theaterNo;
//			  
//			  	const theaterNameDiv = document.createElement("div");
//			  	theaterNameDiv.textContent = theaterNo + "관";
//			  	theaterDiv.appendChild(theaterNameDiv);
//			  
//			  	const timeButtonsDiv = document.createElement("div");
//			  	timeButtonsDiv.className = "theater" + theaterNo + "_time";
//			  	
//			  	theaters[theaterNo].forEach((startTime) => {
//			   		const button = document.createElement("button");
//			    	button.className = "selectTime";
//			    	button.textContent = startTime;
//			    	timeButtonsDiv.appendChild(document.createElement("div").appendChild(button).parentNode);
//			  	});
//			  	
//			  	theaterDiv.appendChild(timeButtonsDiv);
//			  	timeContainer.appendChild(theaterDiv);
//			
//			}
        })
}

// 시간 div 생성
function createTimeDiv(list){
	const div = document.createElement("div");
	const button = document.createElement("button");
	button.type = "button";
	button.onclick = () => changeTimeInfo(list);
	button.className="selectTime";
	button.value= list.theaterNo + ":" +  list.startTime; 
	div.appendChild(button);
	button.textContent =  list.startTime;
	
	return div;
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
   	ticketData.selectedMovieNo = index;
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
    printTimeList();
   }

// 예매 - 상영관, 시간 선택 (다시짜는중...)
// list.theaterNo, list.startTime
function changeTimeInfo(list){
	console.log("아무것도엇ㅂ지롱ㅋㅋ");
	console.log(list);
	const clickedTime = event.target;
	clickedTime.parentNode.style.backgroundColor = '#EDD711';
	
	if (window.selectedTime && window.selectedTime !== clickedTime) {
       window.selectedTime.parentNode.style.backgroundColor = '';
    }

	const timeInfo = document.getElementById('timeInfo');
    timeInfo.innerText = list.startTime;

	const theaterInfo = document.getElementById('theaterInfo');
	theaterInfo.innerText = list.theaterNo + "관";

	window.selectedTime = clickedTime;
	
	ticketData.selectedTime = list.startTime;
    ticketData.selectedTheater = list.theaterNo;
	
	console.log(ticketData);
	
	const seatMenu = document.getElementById('ticketing2')

    if(ticketData.selectedTime !== null){
    	seatMenu.style.cssText = 'display : block;'  
    }
}

// 예매 -상영관, 시간 선택
//const selectedTimeButtons = document.getElementsByClassName("selectTime");
//
//Array.from(selectedTimeButtons).forEach(function (button) {
//    button.addEventListener('click', function() {
//      const selectedTheater = this.closest('div[id^="theater"]').querySelector('div:first-child').innerText;
//      button.parentNode.style.backgroundColor = '#EDD711';
// 
//      if (window.selectedTime && window.selectedTime !== button) {
//          window.selectedTime.parentNode.style.backgroundColor = '';
//      }
//
//
//      const timeInfo = document.getElementById('timeInfo');
//      timeInfo.innerText = button.innerText;
//	
//	  const theaterInfo = document.getElementById('theaterInfo');
//	  theaterInfo.innerText = selectedTheater
//
//      window.selectedTime = button;
//
//      ticketData.selectedTime = button.innerText;
//      ticketData.selectedTheater = theaterInfo.innerText;
//
//      const seatMenu = document.getElementById('ticketing2')
//
//      if(ticketData.selectedTime !== null){
//        seatMenu.style.cssText = 'display : block;'  
//      }
//
//      console.log(ticketData);
//    });
//});
    
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