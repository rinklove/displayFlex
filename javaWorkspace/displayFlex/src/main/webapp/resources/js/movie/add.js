
/**
 * 
 */
    
    
    const getMovieList = async (value) => {
		
		const url = "http://kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieList.json";
		const key = 'afac623fe11d16bd6e9bd798babc2d7b';
	
		const res = await fetch(`${url}?key=${key}&movieNm=${value}&itemPerPage=50`);
		const result = await res.json();
		let data = result.movieListResult.movieList.filter(el => el["movieNmEn"] !== "Package Screening");
		return data.sort((a, b) => Number(a["prdtYear"]) - Number(b["prdtYear"]));
	}

	const getMoviePoster = async (value) => {
		const url = 'http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?collection=kmdb_new2&detail=y';
		const key = '9Z10BL3097X14RC40FSC';

		const res = await fetch(`${url}&title=${value}&ServiceKey=${key}`);
		const result = await res.json();
		if(result["Data"] !== undefined) {
			return result["Data"][0]["Result"];			
		}
	}

	const title = document.getElementById("title");
	title.addEventListener("keyup", async () => {
		let content = title.value;
	    //전체 조회 리스트 가져오기
		let searchList = await getMovieList(content);
		//최대 5개로 설정
		for (let index = 0; index < (searchList.length > 5 ? 5 : searchList.length); index++) {

			const element = searchList[index];
			const itemTitle = document.createElement("span");
			itemTitle.innerText = element["movieNm"];
			const itemYear = document.createElement("span");
			itemYear.innerText = element["prdtYear"];
			const firstDiv = document.createElement("div");

			firstDiv.appendChild(itemTitle);
			firstDiv.appendChild(itemYear);
			const searchPoster = await getMoviePoster(element["movieNm"]);
			console.log(searchPoster)
		}
		const listItem = document.createElement("li");
		const searchResult = document.getElementById("search-result");
		console.log(searchList);
	})
	
	
	
   /* let xhr = new XMLHttpRequest(); 
    URL 
    let url = 'http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?collection=kmdb_new2'; 
    상영년도 
    let queryParams = '&' + encodeURIComponent('detail') + '=' + encodeURIComponent('y'); 
    상영월 
    queryParams += '&' + encodeURIComponent('title') + '=' + encodeURIComponent(content); 
    Service Key 
    queryParams += '&' + encodeURIComponent('ServiceKey')+'='+ encodeURIComponent('9Z10BL3097X14RC40FSC'); 
    xhr.open('GET', url + queryParams); 
    xhr.onreadystatechange = function () { 
        if (this.readyState == 4) { 
            alert('Status: '+this.status+
                'Headers: '+JSON.stringify(this.getAllResponseHeaders())+
                'Body: '+this.responseText); 
            } 
        }; 
    xhr.send('');*/