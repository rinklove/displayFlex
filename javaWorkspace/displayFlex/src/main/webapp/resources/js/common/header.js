function toggleMenu() {
  const sideMenu = document.querySelector('.sideMenu');
  const currentRight = parseInt(getComputedStyle(sideMenu).right);

  if (currentRight < 0) {
    sideMenu.style.right = '0';
  } else {
    sideMenu.style.right = '-1000px';
  }
}
function toggleMenuEnd() {
  const sideMenu = document.querySelector('.sideMenu');
  const currentRight = parseInt(getComputedStyle(sideMenu).right);

  if (currentRight > 0) {
    sideMenu.style.right = '0';
  } else {
    sideMenu.style.right = '-1000px';
  }
}


window.addEventListener('scroll', function(){
	const headerArea = document.querySelector('#header-area');
	if (window.scrollY > 10){
		 headerArea.style.backgroundColor = "rgba(255, 255, 255, 0.8)";
	}else{
		 headerArea.style.backgroundColor = "transparent";
	}
});