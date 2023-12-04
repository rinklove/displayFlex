/**
 * 
 */

document.addEventListener('DOMContentLoaded', function () {
	
    getReviews();
    
	
    const ratingForm = document.getElementById('rating-form');
    const ratingValue = document.getElementById('rating-value');

    ratingForm.addEventListener('change', function () {
        const selectedRating = document.querySelector('input[name="rating"]:checked').value;
        setRating(selectedRating);
    });

    function setRating(value) {
        ratingValue.textContent = '별점: ' + value;
    }
    
});
//현재 페이지에서 영화 이름 가져온 후 해당 영화에 대한 리뷰값 가져오기?
function getReviews() {
	
    function getQueryStringParameter(name) {
	    const urlParams = new URLSearchParams(window.location.search);
	    return urlParams.get(name);
	}
	
	// 사용 예시
	const paramNameValue = getQueryStringParameter('movieNo');
	console.log(paramNameValue);
}