$(document).ready(function() {
    /*헤더*/
    $('.bot-menu').on({
        mouseenter : function () {
            $('.ssmenu, .sub-bg').stop().show();
        },
        mouseleave : function () {
            $('.ssmenu, .sub-bg').stop().hide();
        }
    });
    $('.sub-bg').on({
        mouseenter : function () {
            $('.ssmenu, .sub-bg').stop().show();
        },
        mouseleave : function () {
            $('.ssmenu, .sub-bg').stop().hide();
        }
    });
    $('.smenu > a').hover(function(){
        $(this).animate({opacity:1},500).stop().css('border-bottom','2px solid #780997');
    },function(){
        $(this).animate({opacity:1},500).stop().css('border-bottom','2px solid #fff');
        ;
    });
    /*헤더*/
});