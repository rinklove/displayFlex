const trArr = document.querySelectorAll("#tab > tr");
	for(let i = 0 ; i < trArr.length; ++i){
		trArr[i].addEventListener('click' , handleClick);
	}

function handleClick(event){
	const tr = event.currentTarget;
	const faqNo = tr.children[0].innerText;
	location.href = '/cinema/serviceCenter/faqDetail?faqeNo=' + faqNo + '&currPage=<%= pvo.getCurrentPage() %>';	
}



const buttonArr = document.querySelectorAll('#faq_icon_wrap > button');
console.log(buttonArr);

buttonArr.forEach(el => {
    const type = el.innerTextl
    fetch(`/cinema/ --- 신규 경로 생성 ?category=${type}&pno=1`)
    .then((res) => res.json())
    .then((data) => {
        //리스트 동적 생성
    })
})












