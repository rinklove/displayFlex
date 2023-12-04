/**
 * 
 */
function previewImage(event) {
    const input = event.target;
    const preview = document.getElementById('imgPreview');

    // Check if a file was selected
    if (input.files && input.files[0]) {
        const reader = new FileReader();

        reader.onload = function (e) {
            // Set the source of the preview div to the data URL of the selected image
            preview.style.backgroundImage = 'url(' + e.target.result + ')';
        };

        // Read the selected file as a data URL
        reader.readAsDataURL(input.files[0]);
    } else {
        // Clear the preview if no file is selected
        preview.style.backgroundImage = 'none';
    }
}

resizeImage(config)
    .then((resizedImage) => {
      const url = window.URL.createObjectURL(resizedImage);
      const img = document.createElement("#imgPreview");
      img.setAttribute("src", url);
      img.className = "profile-img";
      img.style.display = "block";
      imgTag.appendChild(img);
    })
    .then(() => {
      const img = document.querySelector("#imgPreview");
      img.onload = () => {
        const widthDiff = (img.clientWidth - imgTag.offsetWidth) / 2;
        const heightDiff = (img.clientHeight - imgTag.offsetHeight) / 2;
        img.style.transform = `translate( -${widthDiff}px , -${heightDiff}px)`;
      };
    })
    .catch((err) => {
      console.log(err);
    });