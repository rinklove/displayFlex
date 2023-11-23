
/**
 * 
 */

const fileArr = document.querySelectorAll("input[type=file]");

for (let index = 0; index < fileArr.length; index++) {
	fileArr[index].addEventListener("change", (e) => {
		const fileName = e.target.value.split("\\")[2];
		document.querySelectorAll(".upload-name")[index].value = fileName;
		console.log(fileName);
	});
};
    // $("#file").on('change',function(){
    // 	  var fileName = $("#file").val();
    // 	  $(".upload-name").val(fileName);
    // 	});