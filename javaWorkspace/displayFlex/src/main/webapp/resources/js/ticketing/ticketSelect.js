
/*---------------------------예매 선택 정보 */


const ticketData = {};
const seatData = [];

// 예매 - 영화 선택
  function changeMovieInfo(index) {
    const selectedMovie = document.getElementById('movieName' + index).parentNode;
    selectedMovie.style.cssText = 'background-color: #EDD711; border-radius: 10px;';
    if (window.selectedMovie && window.selectedMovie !== selectedMovie) {
      window.selectedMovie.style.backgroundColor = '';
    }

    const movieName = document.getElementById('movieName' + index);
    const movieInfo = document.getElementById('movieInfo');
    const content = movieName.innerText;
    movieInfo.innerText = content;

    window.selectedMovie = selectedMovie;

    ticketData.selectedMovie = content;
    console.log(ticketData);
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
      console.log(ticketData);
    });
});
    
// 인원 선택 - 몇 명인지, 몇번 좌석인지
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
  payInfo.innerText = totalReserved * 8000;
}


/*---------------------------예매 선택 정보 -끝*/