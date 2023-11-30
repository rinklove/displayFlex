
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
		return result.Data[0].Result;
		
	}

	const title = document.getElementById("title");
	title.addEventListener("input", async () => {
		const searchResult = document.getElementById("search-result");
		
		searchResult.innerHTML = '';
		
		let content = title.value;
	    //전체 조회 리스트 가져오기
		const searchList = await getMovieList(content);
		
		
		//검색 결과 리스트 보여주기
		for (let index = 0; index < searchList.length; index++) {

			const element = searchList[index];
			const itemTitle = document.createElement("span");
			itemTitle.innerText = element["movieNm"];
			const itemYear = document.createElement("span");
			itemYear.innerText = '(' + element["prdtYear"] + ')';
			
			const listItem = document.createElement("option");
			listItem.innerHTML = element["movieNm"] + ' (개봉년도: ' + element["prdtYear"] + ')';
			listItem.value = element["movieNm"]+'/'+element["movieCd"];
			
			searchResult.appendChild(listItem);
			
		}
	});
	
	title.addEventListener("change", async () => {
			const selectedMovie = title.value.split("/");
			title.value = selectedMovie[0];
			let searchMovie = await getMoviePoster(title.value);

			searchMovie = searchMovie.filter(el => el.Codes.Code[0].CodeNo !== '' && el.Codes.Code[0].CodeNo === selectedMovie[1]).shift();
			
			const directorInput = document.getElementById("director");
			directorInput.value = searchMovie.directors.director[0].directorNm;
			const genreInput = document.getElementById("genre");
			genreInput.value = searchMovie.genre;

			const poster = document.createElement("img");
			const posterSrc = searchMovie.posters;
			poster.src = posterSrc !== '' ? searchMovie.posters.split("|")[0] : '';
			poster.alt = searchMovie.title;
			
			const posterImg = document.getElementById("poster-img");
			posterImg.innerHTML = ''
			posterImg.appendChild(poster);
		
		});
	
	
	
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