const trArr = document.querySelectorAll("main > table > tbody > tr");
	for(let i = 0 ; i < trArr.length; ++i){
		trArr[i].addEventListener('click' , handleClick);
	}

function handleClick(event){
	const tr = event.currentTarget;
	const no = tr.children[0].innerText;
	location.href = '/cinema/serviceCenter/noticeDetail?no=' + no + '&currPage=<%= pvo.getCurrentPage() %>';	
}
   	
<% if(searchMap != null){ %>
	function setSearchArea(){
		
		// 옵션태그 셋팅
		const optionTagArr = document.querySelectorAll("#search_wrap1 option");
		const searchType = "<%= searchMap.get("searchType") %>";
		for(let i = 0; i < optionTagArr.length; ++i){
			if( optionTagArr[i].value === searchType ){
				optionTagArr[i].selected = true;
				break;
			}
		}
		
		// 인풋태그 셋팅
		const searchValueTag = document.querySelector("#search_wrap1 input[name=searchValue]");
		searchValueTag.value = "<%= searchMap.get("searchValue") %>";
		
	}
	setSearchArea();

	function setPageArea(){
		const aTagArr = document.querySelectorAll("#paging a");
		for(let i = 0 ; i < aTagArr.length; ++i){
			aTagArr[i].href = aTagArr[i].href.replace("list" , "search"); 
			aTagArr[i].href += "&searchType=<%= searchMap.get("searchType") %>";
			aTagArr[i].href += "&searchValue=<%= searchMap.get("searchValue") %>";
		}
	}
	setPageArea();
<% } %>

// 각 공지사항의 상세조회 페이지로 이동하는 함수
function goToNoticeDetail(noticeNo) {
	// 공지사항 상세조회 페이지 URL을 생성
	var url = "/cinema/serviceCenter/noticeDetail?noticeNo=" + noticeNo;
	// 페이지 이동
	window.location.href = url;
}