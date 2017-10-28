function postChangeRating(show, starNumber) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("demo").innerHTML = this.responseText;
    }
  };
  // xhttp.open("PATCH", `${show}()`, true);
  xhttp.send();
}

function hoverRating() {
  console.log('reg hover')
  var starNumber = this.getAttribute('data-rating');
  var show = this.getAttribute('data-show');

  console.log(show, starNumber);
};

function changeRating() {
  var starNumber = this.getAttribute('data-rating');
  var show = this.getAttribute('data-show');

  postChangeRating(show, starNumber);
};

document.addEventListener("DOMContentLoaded", function() {
  var showRatings = document.getElementsByClassName("show-rating");
  for (showRating of showRatings) {
    showRating.addEventListener("mouseover", hoverRating);
    showRating.addEventListener("click", changeRating);
  }
})

