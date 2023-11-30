
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
		const url = 'http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?collection=kmdb_new2&detail=y&listCount=100';
		const key = '9Z10BL3097X14RC40FSC';
		const res = await fetch(`${url}&title=${value}&ServiceKey=${key}`);
		
		const result = await res.json();
		console.log(result.Data[0].Result);
		return result.Data[0].Result[0];
		
	}

	const title = document.getElementById("title");
	title.addEventListener("input", async () => {
		const searchResult = document.getElementById("search-result");
		
		searchResult.innerHTML = '';
		
		let content = title.value;
	    //전체 조회 리스트 가져오기
		const searchList = await getMovieList(content);
		
		console.log(searchList);
		

		let movieCode;
		
		//검색 결과 리스트 보여주기
		for (let index = 0; index < searchList.length; index++) {

			const element = searchList[index];
			const itemTitle = document.createElement("span");
			itemTitle.innerText = element["movieNm"];
			const itemYear = document.createElement("span");
			itemYear.innerText = '(' + element["prdtYear"] + ')';
			
			const listItem = document.createElement("option");
			listItem.innerHTML = element["movieNm"] + ' (' + element["prdtYear"] + ')';
			listItem.value = element["movieNm"];
			
			listItem.addEventListener("click", () => {
				movieCode = element["movieCd"];
			});
			
			searchResult.appendChild(listItem);
		
		}
		
		
		
		title.addEventListener("change", async () => {
				
		let searchMovie = await getMoviePoster(title.value);
		console.log(searchMovie)
		const directorInput = document.getElementById("director");
		directorInput.value = searchMovie.directors.director[0].directorNm;
		const genreInput = document.getElementById("genre");
		genreInput.value = searchMovie.genre;
		console.log(element);
		const posterImg = document.getElementById("poster-img");
		posterImg.innerHTML = '';

	});
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