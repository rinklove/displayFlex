
/*---------------------------예매 선택 정보 */


const ticketData = {};

// 예매 - 영화 선택
  function changeMovieInfo(index) {
    const selectedMovie = document.getElementById('movieName' + index).parentNode;
    selectedMovie.style.backgroundColor = '#EDD711';

    if (window.selectedMovie && window.selectedMovie !== selectedMovie) {
      window.selectedMovie.style.backgroundColor = '';
    }

    const movieName = document.getElementById('movieName' + index);
    const movieInfo = document.getElementById('movieInfo');
    const content = movieName.innerText;
    movieInfo.innerText = content;

    window.selectedMovie = selectedMovie;

    ticketData.selectedMovie = content;
  }

// 예매 - 날짜 선택
  function changeDateInfo(index) {
    const selectedDate = document.getElementById('movieDate' + index).parentNode;
    selectedDate.style.backgroundColor = '#EDD711';

    if (window.selectedDate && window.selectedDate !== selectedDate) {
      window.selectedDate.style.backgroundColor = '';
    }

    const movieDate = document.getElementById('movieDate' + index);
    const dateInfo = document.getElementById('dateInfo');
    const content = movieDate.innerText;
    dateInfo.innerText = content;

    window.selectedDate = selectedDate;

    ticketData.selectedDate = content;
  }
// 예매 -상영관, 시간 선택

// 인원 선택 - 몇 명인지, 몇번 좌석인지

// 총 금액

/*---------------------------예매 선택 정보 -끝*/