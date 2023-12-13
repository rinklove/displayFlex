/**
 * 
 */

window.onload = () => {
	const buttonArr = document.querySelectorAll('#smallMenu button');
	
//	buttonArr.forEach(el => {
//		el.addEventListener("click", () => {
//			console.log(el.innerText);			
//		})
//	});
	
	for (let index = 0; index < buttonArr.length ; index++) {
		const el = buttonArr[index];
		el.addEventListener("click", () => {
			console.log(el.innerText);
		fetch(`http://127.0.0.1:9002/cinema/store/menu?category=${el.innerText}`)
		.then( ( resp )=>{
			console.log(resp);
			return resp.text();
		})
		.then( ( data )=>{ 
			const itemPhoto = document.querySelector('.itemPhoto');
			itemPhoto.innerHTML = data;
			
			// 세 자리마다 쉼표 추가
          	const priceElements = document.querySelectorAll('#third > b');
          	priceElements.forEach((priceElement) => {
            const formattedValue = Number(priceElement.innerText).toLocaleString();
            // 가격 업데이트
            priceElement.innerText = formattedValue + "원";
			});
			} )
		.catch( ()=>{ alert("리스트 불러오기 실패..."); });
		})
	}
	
};
























