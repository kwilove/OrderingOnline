/**
 * Created by Administrator on 2015/11/27.
 */
$(function(){
   $(".shop-box").on("mouseover",function(){
        var shop_info_left = $(this).position().left + 300;
       var shop_info_top = $(this).position().top;
        $(".shop-info").addClass("shop-info-show").css({"left":shop_info_left,"top":shop_info_top});
    });
    $(".shop-box").on("mouseout",function(){
        var position_left = $(this).position().left;
        var shop_info_left = position_left + 200 + "px";
        $(".shop-info").removeClass("shop-info-show");
    });
});