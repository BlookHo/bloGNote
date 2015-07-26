//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

//jQuery(function($) {
//$("td[data-link]").click(function() {
//    console.log(" this.dataset.link = " + this.dataset.link );
//    //setTimeout("window.location.href='<%= home_path %>';",2000);
//
//window.location.href = this.dataset.link
//});
//});

$("tr[data-link]").click(function() {
        console.log(" this = " + this );

    window.location = $(this).data("link")
});

//$(document).on("click", "#table-id tr", function() {
//    var link  = $(this).data("href");
//    console.log(" this = " + this );
//    console.log(" link = " + link );
//
//    $.ajax({
//        url: link,
//        type: "GET"
//    });
//});

//jQuery ->
//$('#datatable_products').dataTable
//sPaginationType: "bootstrap"