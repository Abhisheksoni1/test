function showTestimonial(testimonialname) {
  var i;
  var x = document.getElementsByClassName("testimonial_content");
  for (i = 0; i < x.length; i++) {
      //console.log(x[i])
    x[i].style.display = "none"; 
  }
 // testimonialname.addClass('nameofClas')

  document.getElementById(testimonialname).style.display = "block"; 


}