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
  
  
  document.addEventListener('DOMContentLoaded', function() {
    flatpickr('#endTime', {
      enableTime: false,       // 시간 선택 활성화
      noCalendar: true,       // 달력 비활성화
      dateFormat: "H:i",      // 시간 형식 설정
      time_24hr: true,        // 24시간 형식 사용
      locale: 'ko', // 한국어로 설정
      value: '',
    });
  });
  
  const deleteTableRow = (row) => {
        document.getElementById("info-table").deleteRow(row.rowIndex);
    };
  
  const addTableRow = () => {
		  const tbody = document.getElementById("info-table").getElementsByTagName("tbody")[0];
		  
		  let newRow = tbody.insertRow();
		  
		  let titleCell = newRow.insertCell(0);
		  let theaterCell = newRow.insertCell(1);
		  let screenDayCell = newRow.insertCell(2);
		  //시작 시간 ~ 종료 시간 형태
		  let periodCell = newRow.insertCell(3);
		  let deleteCell = newRow.insertCell(4);
		  
		  titleCell.innerHTML = document.getElementById("title").value;
		  theaterCell.innetHinnerHTML = document.getElementById("theater").value;
		  screenDayCell.innerHTML = document.getElementById("dateInput").value;
		  periodCell.innerHTML = document.getElementById("startTime").value + " ~ " + document.getElementById("endTime").value;

		  const deleteLink = document.createElement('a');
        deleteLink.href = '#';
        deleteLink.textContent = 'X';
        deleteLink.addEventListener('click', function () {
            deleteTableRow(newRow);
        });
        
        deleteCell.appendChild(deleteLink);
	}
	
	const checkValidate = () => {
		const allTr = document.querySelectorAll("#info-table > tbody > tr");
		
		allTr.forEach(function (row, rowIndex) {
            const cells = row.querySelectorAll('td');
            const rowData = Array.from(cells).map(function (cell) {
                return cell.textContent;
            });
            console.log(`행 ${rowIndex + 1}: [${rowData.join(', ')}]`);
        });
		return false;
	}
	  
    
  
  window.onload = () => {
	  
	  document.getElementById("startTime").addEventListener("input", () => {
		  const startTime = document.getElementById("startTime").value;
		 flatpickr('#endTime', {
	      enableTime: true,       // 시간 선택 활성화
	      minTime: startTime, 
	      noCalendar: true,       // 달력 비활성화
	      dateFormat: "H:i",      // 시간 형식 설정
	      time_24hr: true,        // 24시간 형식 사용
	      locale: 'ko', // 한국어로 설정
	    });
	  });
	
	
	document.getElementById("startTime").addEventListener("change", () => {
		  const startTime = document.getElementById("startTime");
		  const endTime = document.getElementById("endTime");
		  if(startTime.value > endTime.value) {
			 flatpickr('#endTime', {
			  value: '',
		      enableTime: true,       // 시간 선택 활성화
		      minTime: startTime.value, 
		      noCalendar: true,       // 달력 비활성화
		      dateFormat: "H:i",      // 시간 형식 설정
		      time_24hr: true,        // 24시간 형식 사용
		      locale: 'ko', // 한국어로 설정
		    });
			  
		  } 
	  });
  }
  
  