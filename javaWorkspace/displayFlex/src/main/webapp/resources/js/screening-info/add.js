    document.addEventListener('DOMContentLoaded', function() {
      flatpickr(document.getElementById('dateInput'), {
        dateFormat: "Y-m-d",
        minDate: "today",
        locale: 'ko', // 한국어로 설정
      });
    });
    
    document.addEventListener('DOMContentLoaded', function() {
    flatpickr('#startTime', {
      enableTime: true,       // 시간 선택 활성화
      noCalendar: true,       // 달력 비활성화
      dateFormat: "H:i",      // 시간 형식 설정
      time_24hr: true,        // 24시간 형식 사용
      locale: 'ko', // 한국어로 설정
    });
  });
  
/*  document.addEventListener('DOMContentLoaded', function() {
    flatpickr('#endTime', {
      enableTime: true,       // 시간 선택 활성화
      noCalendar: true,       // 달력 비활성화
      dateFormat: "H:i",      // 시간 형식 설정
      time_24hr: true,        // 24시간 형식 사용
      locale: 'ko', // 한국어로 설정
      minTime: document.getElementById("startTime").value, 
    });
  });*/
  
  window.onload = () => {
  document.getElementById("startTime").addEventListener("change", () => {
	 flatpickr('#endTime', {
	  value: '',
      enableTime: true,       // 시간 선택 활성화
      noCalendar: true,       // 달력 비활성화
      dateFormat: "H:i",      // 시간 형식 설정
      time_24hr: true,        // 24시간 형식 사용
      locale: 'ko', // 한국어로 설정
      minTime: document.getElementById("startTime").value, 
    });
  });
	  
  }