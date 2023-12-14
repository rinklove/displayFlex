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
			console.log(el);
		fetch(`http://127.0.0.1:9002/cinema/store/menu?category=${el.innerText}`)
		.then( ( resp )=>{
			console.log(resp);
			return resp.text();
		})
		.then( ( data )=>{ 
			const itemPhoto = document.querySelector('.itemPhoto');
			itemPhoto.innerHTML = data;
			
			formatPrices();
			} )
		.catch( ()=>{ alert("리스트 불러오기 실패..."); });
		})
	}
	// Function to format prices
    function formatPrices() {
        const priceElements = document.querySelectorAll('#third b');

        priceElements.forEach((element) => {
            const price = element.innerText.replace(/\D/g, ''); // Remove non-numeric characters
            const formattedPrice = Number(price).toLocaleString() + "원";
            element.innerText = formattedPrice;
        });
    }

    // Initial call to format prices on page load
    formatPrices();
};
























