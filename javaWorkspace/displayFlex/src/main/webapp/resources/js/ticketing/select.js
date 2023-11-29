/**
 * 
 */

const click = document.querySelectorAll(".ticketingMovie> a");

boxs.forEach(el => {
    el.onclick = (e) => {
        e.target.style.backgroundColor = '#EDD711';
    };
});

