
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

	const getDetailInfo = async (movieCd) => {
		const url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json";
		const key = 'afac623fe11d16bd6e9bd798babc2d7b';
	
		const res = await fetch(`${url}?key=${key}&movieCd=${movieCd}`);
		let result = await res.json();
		return result.movieInfoResult.movieInfo
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
			console.log(searchMovie);
			
			//데이터가 존재하면 input 값에 값 채워넣기
			if(searchMovie !== undefined) {
				//감독
				const directorInput = document.getElementById("director");
				directorInput.value = searchMovie.directors.director[0].directorNm;

				//장르
				const genreInput = document.getElementById("genre");
				genreInput.value = searchMovie.genre;
				
				//포스터
				const poster = document.createElement("img");
				const posterSrc = searchMovie.posters;
				const posterUrlInput = document.getElementById("poster-url");
	
				poster.src = posterSrc !== '' ? searchMovie.posters.split("|")[0] : '';
				posterUrlInput.value = poster.src;
				poster.alt = "포스터가 없습니다";
				
				const posterImg = document.getElementById("poster-img");
				posterImg.innerHTML = ''
				posterImg.appendChild(poster);
				
				//관람 등급
				const gradeArray = document.querySelectorAll("#screen-grade > option");
				
				for (index = 0; index < gradeArray.length ;index++) {
					if(gradeArray[index].innerHTML.substr(0,2) === searchMovie["rating"].substr(0,2)) {
						gradeArray[index].selected = true;
						break;
					}
				}
				
				const detailMovieInfo = await getDetailInfo(selectedMovie[1]);
				
				console.log(detailMovieInfo);
				
				//개봉일
				const releaseDateInput = document.getElementById("releaseDate");
				releaseDateInput.value = detailMovieInfo.openDt;
				//상영 시간
				const runningTimeInput = document.getElementById("runningTime");
				runningTimeInput.value = detailMovieInfo.showTm;
				
				//제작 국가
				const nationInput = document.getElementById("nation");
				nationInput.value = searchMovie.nation;
				
				//출연 배우
				const actorInput = document.getElementById("actor");
				let actors = detailMovieInfo["actors"];
				
				for(let index = 0; index < (actors.length > 9 ? 9 : actors.length); index++) {
					actorInput.value += actors[index].peopleNm + '(' + actors[index].cast +'), ';
					
				}
			} else {
				alert('입력한 영화에 대한 정보가 없습니다.');
			}
		
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