/**
 * Created by Administrator on 2015/12/3.
 */
$(function(){
    var bottom_nav_a = $("#bottom-nav a");
    $(bottom_nav_a).removeClass("text-main");
    var current_url = window.location.pathname;
    $(bottom_nav_a).each(function () {
        if (current_url.indexOf($(this).attr("href")) > 0) {
            $(this).addClass("text-main");
        }
    });
})