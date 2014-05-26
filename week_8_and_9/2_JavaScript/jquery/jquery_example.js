$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
  //I think something might be missing here, but I worked on this with Zach P.
 
$('body').css({'background-color': 'pink'});
 
//RELEASE 1:
var bodyElement = $('body');
console.log(bodyElement);
 
 
//RELEASE 2: 
$('h1').css({'color': 'orange', 'border': '2px solid green', 'visibility': 'visible'});
$('div h1').html("Coyotes")
 
//RELEASE 3: Event Listener
$('img').on('mouseover', function(e) {
  e.preventDefault();
  $(this).attr("src", "http://www.ci.chanhassen.mn.us/images/pages/N491/coyote11.jpg")
});
 
 
$('img').on('mouseleave', function(e) {
  e.preventDefault();
  $(this).attr("src", "http://brandonmanson.com/wp-content/uploads/2014/03/devbootcamp-logo.png")
});
 
//RELEASE 4 : Experiment on your own
$('h1').click(function() {
  $('img').animate({
    border: 'purple',
    height: 'toggle',
    opacity: 0.5
  }, 1000, function() {
    $(this).attr("src", "http://brandonmanson.com/wp-content/uploads/2014/03/devbootcamp-logo.png")
  });
});
 
  
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
