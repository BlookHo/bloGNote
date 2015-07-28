//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery.noConflict();
(function( $ ) {
    $(document).ready(function(){
        console.log( "document loaded" );
        $(function(){
            $("tr[data-link]").click(function() {
                //console.log(" this = " + $(this) );
                window.location = $(this).data("link")
            });
        })
    });
})( jQuery );

