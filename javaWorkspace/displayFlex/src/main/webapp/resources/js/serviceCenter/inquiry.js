
const trArr = document.querySelectorAll(" #tab > tr");
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
	
	
	
	
