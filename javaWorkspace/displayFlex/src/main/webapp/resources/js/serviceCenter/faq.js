const trArr = document.querySelectorAll("#tab > tr");
	for(let i = 0 ; i < trArr.length; ++i){
		trArr[i].addEventListener('click' , handleClick);
	}

function handleClick(event){
	const tr = event.currentTarget;
	const faqNo = tr.children[0].innerText;
	location.href = '/cinema/serviceCenter/faqDetail?faqNo=' + faqNo + '&currPage=<%= pvo.getCurrentPage() %>';	
}

const buttonArr = document.querySelectorAll('#faq_icon_wrap > button');
console.log(buttonArr);

buttonArr.forEach(el => {
    const type = el.innerText;
    fetch(`/cinema/serviceCenter/faqListdata?category=${type}&pno=1`)
    .then((res) => res.text())
    .then((data) => {
        //리스트 동적 생성
        const accDiv = document.getElementById('acc');
        console.log(data);
    })
})
















