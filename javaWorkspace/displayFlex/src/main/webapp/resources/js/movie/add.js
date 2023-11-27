
/**
 * 
 */

const fileArr = document.querySelectorAll("input[type=file]");

for (let index = 0; index < fileArr.length; index++) {
	fileArr[index].addEventListener("change", (e) => {
		// const fileName = e.target.value.split("\\")[2];
		document.querySelectorAll(".upload-name")[index].value = fileName;
		console.log(fileName);
	});
};
    // $("#file").on('change',function(){
    // 	  var fileName = $("#file").val();
    // 	  $(".upload-name").val(fileName);
    // 	});
    
    

    //api 상세 코드
    let xhr = new XMLHttpRequest(); 
    /*URL*/ 
    let url = 'http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?collection=kmdb_new2'; 
    /*상영년도*/ 
    let queryParams = '&http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_xml2(또는 search_json2).jsp?collection=kmdb_new2' + encodeURIComponent('detail') + '=' + encodeURIComponent('y'); 
    /*상영월*/ 
    queryParams += '&' + encodeURIComponent('title') + '=' + encodeURIComponent('벼랑 위의 포뇨'); 
    /*Service Key*/ 
    queryParams += '&' + encodeURIComponent('ServiceKey')+'='+ encodeURIComponent('9Z10BL3097X14RC40FSC'); 
    xhr.open('GET', url + queryParams); 
    xhr.onreadystatechange = function () { 
        if (this.readyState == 4) { 
            alert('Status: '+this.status+
                'Headers: '+JSON.stringify(this.getAllResponseHeaders())+
                'Body: '+this.responseText); 
            } 
        }; 
    xhr.send('');