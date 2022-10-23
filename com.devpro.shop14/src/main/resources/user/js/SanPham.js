$(document).ready(function(){
	$(".nav__dropdown-content").hide();
    $('.nav__name').click(function () {
        if($(this).hasClass('active')){
            $(this).removeClass('active');
            $(this).next().stop(true).slideToggle();
        }else{
            $(this).addClass('active');
            $(this).next().stop(true).slideToggle();
        }
    });
//size-giày
    $(".nav__dropdown-content1").hide();
    $('.nav__name').click(function () {
        if($(this).hasClass('active')){
            $(this).removeClass('active');
            $(this).next().stop(true).slideToggle();
        }else{
            $(this).addClass('active');
            $(this).next().stop(true).slideToggle();
        }
    });
//màu sắc
    $(".nav__dropdown-content2").hide();
    $('.nav__name').click(function () {
        if($(this).hasClass('active')){
            $(this).removeClass('active');
            $(this).next().stop(true).slideToggle();
        }else{
            $(this).addClass('active');
            $(this).next().stop(true).slideToggle();
        }
    });
});
