// function showTestimonial(testimonialname) {
//   var i;
//   var x = document.getElementsByClassName("testimonial_content");

//   for (i = 0; i < x.length; i++) {
//       //console.log(x[i])
//     x[i].style.display = "none"; 
//   }
 

//   document.getElementById(testimonialname).style.display = "block"; 



 

// }
$(document).ready( function() {
    $('#myCarousel').carousel({
    	interval:   4000
	});
	
	var clickEvent = false;
	$('#myCarousel').on('click', '.nav a', function() {
			clickEvent = true;
			$('.nav li').removeClass('active');
			$(this).parent().addClass('active');		
	}).on('slid.bs.carousel', function(e) {
		if(!clickEvent) {
			var count = $('.nav').children().length -1;
			var current = $('.nav li.active');
			current.removeClass('active').next().addClass('active');
			var id = parseInt(current.data('slide-to'));
			if(count == id) {
				$('.nav li').first().addClass('active');	
			}
		}
		clickEvent = false;
	});
});
$(document).click(function() {
    $('.srch_blog_list').hide();
    $('.srch_input_field').val('');
    $('.srch_blog_nolist').hide();
});

var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5dd52eb943be710e1d1e3eeb/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();

