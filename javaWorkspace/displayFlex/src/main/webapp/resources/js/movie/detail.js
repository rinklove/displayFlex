/**
 * 
 */


document.addEventListener("DOMContentLoaded" , () => {
	getReviews();
});
const ratingStars = [...document.getElementsByClassName("rating__star")];

function executeRating(stars) {
  const starClassActive = "rating__star fas fa-star";
  const starClassInactive = "rating__star far fa-star";
  const starsLength = stars.length;
  let i;

  stars.map((star) => {
    star.onclick = () => {
      i = stars.indexOf(star);
	  const ratingValue = document.getElementById("rating-value");
	  ratingValue.value = i+1;
      if (star.className===starClassInactive) {
        for (i; i >= 0; --i) stars[i].className = starClassActive;
      } else {
        for (i; i < starsLength; ++i) stars[i].className = starClassInactive;
      }
    };
  });
}

executeRating(ratingStars);

//현재 페이지에서 영화 이름 가져온 후 해당 영화에 대한 리뷰값 가져오기?
function getReviews() {
	
    function getQueryStringParameter(name) {
	    const urlParams = new URLSearchParams(window.location.search);
	    return urlParams.get(name);
	}
	
	// 사용 예시
	const paramNameValue = getQueryStringParameter('movieNo');
	console.log(paramNameValue);
	
	fetch(`http://localhost:9002/cinema/movie/review/list?movieNo=${paramNameValue}`)
	.then((res) => res.json())
	.then(data => {
		console.log(data);
	})
}