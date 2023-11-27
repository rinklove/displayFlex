/**
 * 
 */

document.addEventListener('DOMContentLoaded', function () {
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