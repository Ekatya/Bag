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
// require turbolinks 
//конфликт с выбором цены

jQuery(function($) {
$("#category").change( function(){
var objSel = document.getElementById("category");
objSel1=objSel.options[objSel.selectedIndex].value;

$.ajax({

 url: 'select',
data: "category_id_="+objSel1,
 type: 'POST',
success: function(result){
//alert('123');
$("#result_ajax").html(result);

}


});

});
});
