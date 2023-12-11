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
			} )
		.catch( ()=>{ alert("리스트 불러오기 실패..."); });
		})
	}
	
}

function clickMenu(){
	const itmePhoto = document.querySelector()
}

