// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require activestorage
//= require turbolinks
//= require_tree .

$(document).on('click touchend', function(e) {
    
    $(".signup .button, .signin .button").click(function(){
	 	 if($(this).find("a").attr("target")=="_blank"){
			 window.open($(this).find("a").attr("href"), '_blank');
	 	 }else{
		 	 window.location=$(this).find("a").attr("href");
	 	 }
	 return false;
	 });
    
    /* Sign Inをクリックした時に表示・別の場所をクリックすると非表示 */
    if(!$(e.target).closest('.signin').length && !$(e.target).closest('#buttonR').length){
        $('.signin').fadeOut();
    }else if($(e.target).closest('#buttonR').length){
        if($('.signin').is(':hidden')){
            $('.signin').fadeIn();
            $('#overlay').fadeIn();
        }else{
            $('.signin').fadeOut();
        }
    }
    
    /* Sign Upをクリックした時に表示・別の場所をクリックすると非表示 */
    if(!$(e.target).closest('.signup').length && !$(e.target).closest('#buttonL').length){
        $('.signup').fadeOut();
    }else if($(e.target).closest('#buttonL').length){
        if($('.signup').is(':hidden')){
            $('.signup').fadeIn();
            $('#overlay').fadeIn();
        }else{
            $('.signup').fadeOut();
        }
    }
    
    $("#overlay").unbind().click(function(){
	   $('#overlay').fadeOut();
    });
    
});