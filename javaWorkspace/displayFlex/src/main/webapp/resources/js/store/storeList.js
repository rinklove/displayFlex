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







const menu = document.querySelector("#smallMenu > div:first-child > button");

function handleMenuClick(){
    const currentColor = menu.style.color;  
    let newColor;
    if(currentColor === "#0C4667"){
        newColor = "#abc95f";
    }else{
        newColor = "#0C4667";
    }

    menu.style.color = newColor;
}

menu.addEventListener("click", handleMenuClick);






















