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
		})
	}
	
	fetch("http://127.0.0.1:9002/cinema/store/menu?category=cate")
	.then( ( resp )=>{ return resp.json() } )
	.then( ( el.innerText )=>{ vo.category } )
	.catch( ()=>{ alert("리스트 불러오기 실패..."); });
}
	
	

