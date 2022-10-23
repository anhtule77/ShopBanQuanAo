$(document).ready(function(){
    $('.td').click(function () {
        if($(this).hasClass('active')){
            $(this).removeClass('active');
            $(this).next().stop(true).slideToggle();
        }else{
            $(this).addClass('active');
            $(this).next().stop(true).slideToggle();
        }
    });
/*    var cart=0;
    $(".add_cart").click(function(){
        cart=cart+1;
        $('.countProduct').text(cart);
    });*/
});
