// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bxslider
//= require_tree .
 // = require bootstrap-sprockets

 $(document).ready(function(){
  $('.bxslider').bxSlider({
mode: 'horizontal', 
auto:true,
speed: 1000,
pause: 3500,
controls:false,
autoControls:true,
pager: false,
keyboardEnabled: true
}); 
});

// function slideit(){
// // //if browser does not support the image object, exit.

// // if (!document.images)

// // return;

// // document.images.slide.src = preloaded[step].src; 


// //     if (step<10) step++;

// //     else step=0;  
// }

// setInterval(slideit,1000);

