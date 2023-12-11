const trArr = document.querySelectorAll("#tab > tr");
	for(let i = 0 ; i < trArr.length; ++i){
		trArr[i].addEventListener('click' , handleClick);
	}

function handleClick(event){


	const tr = event.currentTarget;
	const recommendMvNo = tr.children[0].innerText;
	location.href = '/cinema/serviceCenter/recommendDetail?recommendMvNo=' + recommendMvNo + '&currPage=<%= pvo.getCurrentPage() %>';	
}

