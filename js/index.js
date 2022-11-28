$(document).ready(function(){
    
    /*메인슬라이드*/
    function SwiperBoxM__init() {
        const swiperM = new Swiper('.animationWrapper .mainslider', {
        slidesPerView : 1,
        spaceBetween : 20,
        loop : true,
        speed : 700,
        pagination : { 
            el : '.swiper-pagination',
            clickable : true, 
        },
        });
    };
    SwiperBoxM__init();
    /*메인슬라이드*/

    /*탭메뉴 슬라이드*/
    function SwiperBox1__init() {
        const swiper1 = new Swiper('.slide1 .swiper-container', {
        slidesPerView : 5,
        spaceBetween : 30,
        loop : true,
        speed : 600,
        centeredSlides: true,
        navigation : {
            nextEl : '.slide1 .swiper-button-next',
            prevEl : '.slide1 .swiper-button-prev',
        },
        allowTouchMove : false,
        observer: true,
        observeParents: true,
        });
    };
    SwiperBox1__init();

    function SwiperBox2__init() {
        const swiper2 = new Swiper('.slide2 .swiper-container', {
        slidesPerView : 5,
        spaceBetween : 30,
        loop : true,
        speed : 600,
        centeredSlides: true,
        navigation : {
            nextEl : '.slide2 .swiper-button-next',
            prevEl : '.slide2 .swiper-button-prev',
        },
        allowTouchMove : false,
        observer: true,
        observeParents: true,
        });
    };
    SwiperBox2__init();

    function SwiperBox3__init() {
        const swiper3 = new Swiper('.slide3 .swiper-container', {
        slidesPerView : 5,
        spaceBetween : 30,
        loop : true,
        speed : 600,
        centeredSlides: true,
        navigation : {
            nextEl : '.slide3 .swiper-button-next',
            prevEl : '.slide3 .swiper-button-prev',
        },
        allowTouchMove : false,
        observer: true,
observeParents: true,
        });
    };
    SwiperBox3__init();

    function SwiperBox4__init() {
        const swiper4 = new Swiper('.slide4 .swiper-container', {
            slidesPerView : 5,
        spaceBetween : 30,
        loop : true,
        speed : 600,
        centeredSlides: true,
        navigation : {
            nextEl : '.slide4 .swiper-button-next',
            prevEl : '.slide4 .swiper-button-prev',
        },
        allowTouchMove : false,
        observer: true,
        observeParents: true,
        });
    };
    SwiperBox4__init();

    function SwiperBox5__init(){
        const swiper5 = new Swiper('.slide5 .swiper-container', {
        slidesPerView : 5,
        spaceBetween : 30,
        loop : true,
        speed : 600,
        centeredSlides: true,
        navigation : {
            nextEl : '.slide5 .swiper-button-next',
            prevEl : '.slide5 .swiper-button-prev',
        },
        allowTouchMove : false,
        observer: true,
        observeParents: true,
        });
    };
    SwiperBox5__init();
    

    $('.tabs li').click(function(){
        var tab_id = $(this).attr('data-tab');
        $('.tabs li').removeClass('current');
        $('.tab-content').removeClass('current');
        $(this).addClass('current');
        $("#"+tab_id).addClass('current');
    });




    $('.slideIMG').hover(function() {
        $(this).addClass('hoverIMG');
    },function(){
        $(this).removeClass('hoverIMG');
    });

    $('.swiper-slide').hover(function() {
        $('.menu-content',this).css('display','block');
    },function() {
        $('.menu-content',this).css('display','none');
    });
    /*탭메뉴 슬라이드*/
});