//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

//<script src="jquery-2.1.1.js" language="javascript">    </script>

jQuery.noConflict();
(function( $ ) {
    $(document).ready(function(){
            console.log( "document loaded" );
        //$("tr").click(function() {
        //    $(this).closest("tr").siblings().removeClass("highlighted");
        //    $(this).toggleClass("highlighted");
        //}).href
        $(function(){
            $("tr[data-link]").click(function() {
                console.log(" this = " + $(this) );
                window.location = $(this).data("link")
            });
        })
    });
})( jQuery );

