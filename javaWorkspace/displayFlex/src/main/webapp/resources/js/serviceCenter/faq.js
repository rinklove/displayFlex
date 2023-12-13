window.onload = () => {
	

	const trArr = document.querySelectorAll("#tab > tr");
	for(let i = 0 ; i < trArr.length; ++i){
		trArr[i].addEventListener('click' ,() => {
			
			const currentPage = document.querySelector('#paging > span').innerText;
			console.log(currentPage);
			const faqNo = trArr[i].children[0].innerText;
			location.href = '/cinema/serviceCenter/faqDetail?faqNo=' + faqNo + '&currPage='+ currentPage;	
		});
	}
	
	const buttonArr = document.querySelectorAll('#faq_icon_wrap > button');
	console.log(buttonArr);
	
	buttonArr.forEach(el => {
		el.addEventListener("click", () => {
		    const type = el.innerText;
		    localStorage.setItem("type", type);
		    fetch(`/cinema/serviceCenter/faqListdata?category=${type}&pno=1`)
		    .then((res) => res.text())
		    .then((data) => {
		        //리스트 동적 생성
		        console.log(data);
		        const accDiv = document.getElementById('acc');
		        accDiv.innerHTML = data;
		        
		        
	        	const trArr = document.querySelectorAll("#tab > tr");
				for(let i = 0 ; i < trArr.length; ++i){
					trArr[i].addEventListener('click' ,() => {
						
						const currentPage = document.querySelector('#paging > span').innerText;
						console.log(currentPage);
						const faqNo = trArr[i].children[0].innerText;
						location.href = '/cinema/serviceCenter/faqDetail?faqNo=' + faqNo + '&currPage='+ currentPage;	
					});
				}
		        
		    });
		});
	});
	
	

	
}

	
	
	

function aa(page) {
	console.log(page)
	function getQueryStringParameter(name) {
	    const urlParams = new URLSearchParams(window.location.search);
	    return urlParams.get(name);
	}
	const category = localStorage.getItem("type");
	const paramNameValue = getQueryStringParameter('category');
		 const aTagArr = document.querySelectorAll('#paging > a');
			aTagArr.forEach(el => {
				fetch(`/cinema/serviceCenter/faqListdata?category=${category}&pno=${page}`)
			    .then((res) => res.text())
			    .then((data) => {
			        //리스트 동적 생성
			        console.log(data);
			        const accDiv = document.getElementById('acc');
			        accDiv.innerHTML = data;
			    });
			})
	}
	












