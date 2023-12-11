const trArr = document.querySelectorAll("#tab > tr");
	for(let i = 0 ; i < trArr.length; ++i){
		trArr[i].addEventListener('click' , handleClick);
	}

function handleClick(event){
	const tr = event.currentTarget;
	const noticeNo = tr.children[0].innerText;
	location.href = '/cinema/serviceCenter/noticeDetail?noticeNo=' + noticeNo + '&currPage=<%= pvo.getCurrentPage() %>';	
}
   	
// function setOptionSelected() {
// 	const optionTag = document.querySeleterAll("main select option");
// 	for(let i = 0; i < optionTagArr.length; i++){
// 		const optionTag = optionTagArr[i];${}
// 		if(optionTag.value == <%=vo.getCategoryNo() %>) {
// 			optionTagArr[].selected = true;
// 		}
// 	}
// }

// setOptionSelected();