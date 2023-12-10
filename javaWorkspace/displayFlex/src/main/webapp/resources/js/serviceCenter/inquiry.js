
const trArr = document.querySelectorAll(" #tab > tr");
for(let i = 0 ; i < trArr.length; ++i){
	trArr[i].addEventListener('click' , handleClick);
}

function handleClick(event){
	const tr = event.currentTarget;
	const no = tr.children[0].innerText;
	// alert('/cinema/serviceCenter/inquiryDetail?onetooneNo=' + no + '&currPage=<%= pvo.getCurrentPage() %>');
	location.href = '/cinema/serviceCenter/inquiryDetail?onetooneNo=' + no + '&currPage=<%= pvo.getCurrentPage() %>';	
}

// <% if(searchMap != null){ %>
// 	function setSearchArea(){
		
// 		// 옵션태그 셋팅
// 		const optionTagArr = document.querySelectorAll(".search-area option");
// 		const searchType = "<%= searchMap.get("searchType") %>";
// 		for(let i = 0; i < optionTagArr.length; ++i){
// 			if( optionTagArr[i].value === searchType ){
// 				optionTagArr[i].selected = true;
// 				break;
// 			}
// 		}
		
// 		// 인풋태그 셋팅
// 		const searchValueTag = document.querySelector(".search-area input[name=searchValue]");
// 		searchValueTag.value = "<%= searchMap.get("searchValue") %>";
		
// 	}
// 	setSearchArea();
	
// 	function setPageArea(){
// 		const aTagArr = document.querySelectorAll(".page-area a");
// 		for(let i = 0 ; i < aTagArr.length; ++i){
// 			aTagArr[i].href = aTagArr[i].href.replace("list" , "search"); 
// 			aTagArr[i].href += "&searchType=<%= searchMap.get("searchType") %>";
// 			aTagArr[i].href += "&searchValue=<%= searchMap.get("searchValue") %>";
// 		}
// 	}
// 	setPageArea();
// <% } %>

	
	
	
	
	
