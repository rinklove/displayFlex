
const trArr = document.querySelectorAll("#tbl_form tr");
for(let i = 0 ; i < trArr.length; ++i){
	trArr[i].addEventListener('click' , handleClick);
}

function handleClick(event){
	const tr = event.currentTarget;
	const no = tr.children[0].innerText;
	const currentPage = document.querySelector('#paging span').innerText;
	// alert('/cinema/serviceCenter/inquiryDetail?onetooneNo=' + no + '&currPage=<%= pvo.getCurrentPage() %>');
	location.href = '/cinema/serviceCenter/inquiryDetail?onetooneNo=' + no + '&currPage=' + currentPage;	
}



$(document).ready(function () {
    // 제목 입력 텍스트박스 이벤트 핸들러
    $("#iDtitle").on("input", function () { // keyup 대신 input 사용
        // 바이트수 세기
        var length = $(this).val().replace(/\s/g, "").replace(/\n/g, "").length; // 공백과 개행 문자 제거
        // 바이트수 표시
        $("#strongContentsCount_title").text(length);
        // 제목 최대 바이트수 체크
        if (length > 100) {
            alert("제목은 최대 100바이트까지 입력 가능합니다.");
            $(this).val($(this).val().substring(0, 100));
            return false;
        }
    });

    // 내용 입력 텍스트박스 이벤트 핸들러
    $("#iDcontents").on("input", function () { // keyup 대신 input 사용
        // 바이트수 세기
        var length = $(this).val().replace(/\s/g, "").replace(/\n/g, "").length; // 공백과 개행 문자 제거
        // 바이트수 표시
        $("#strongContentsCount").text(length);
        // 내용 최대 바이트수 체크
        if (length > 4000) {
            alert("내용은 최대 4000바이트까지 입력 가능합니다.");
            $(this).val($(this).val().substring(0, 4000));
            return false;
        }
    });
});


  
  


window.onload = () => {
	const updateA = document.getElementById('admin-inquiry-update');
	updateA.addEventListener("click", () => {
		updateA.remove();
		const reContentDiv = document.getElementById('reContents');
		const reContent = document.querySelector('#reContents > p').innerText;
		reContentDiv.innerHTML ='';
		
		//textarea 생성
		const updateTextarea = document.createElement('textarea');
		updateTextarea.rows = 5; // 행 수 설정
	    updateTextarea.cols = 100; // 열 수 설정
	    updateTextarea.style.width = '100%';
	    updateTextarea.innerText = reContent;
	    reContentDiv.appendChild(updateTextarea);
	    
	    //취소버튼 생성
	    const cancelBtn = document.createElement('button');
	    cancelBtn.innerText = '취소';
	    
	    cancelBtn.addEventListener("click", () => {
			reContentDiv.innerHTML = '<p>'+reContent+'</p>';
			
			const reTitleDiv = document.getElementById('reTitle');
			reTitleDiv.appendChild(updateA);
		});
		
		reContentDiv.appendChild(cancelBtn);
		
		//수정
		const updateBtn = document.createElement("button");
		updateBtn.innerText = '수정';
		
		updateBtn.addEventListener("click", () => {
			
			const paramNameValue = getQueryStringParameter('onetooneNo');
			
			//답글 번호와 내용 가지고 가서 fetch 사용
			fetch(`/cinema/admin/inquiry/update`, {
				method: "post",
				headers: {
					'Content-Type':'application/json;charset=utf-8'
				},
				body: JSON.stringify({
				    recontent: updateTextarea.value,
				    no: paramNameValue,
				  }),
			})
			.then((res) => {
				if(!res.ok) {
			 		throw new Error();
				 }
				 return res.text();
			})
			.then((data) => {
				alert(data);
				location.reload();
			})
			.catch((err) => {
				alert('답글 수정에 실패하셨습니다.');
				location.reload();
			});	
		});
		
		reContentDiv.appendChild(updateBtn);
	});
	
}

function getQueryStringParameter(name) {
	    const urlParams = new URLSearchParams(window.location.search);
	    return urlParams.get(name);
	}
	
	// 사용 예시
	
	
	
	
