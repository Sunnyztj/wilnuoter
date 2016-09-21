/**
 * Created by Charlie on 21/09/2016.
 */

$(function(){
    $('.about-us-and-products-area').hover(
        function() {
            $(this).addClass('hover');
        },
        function() {
            $(this).removeClass('hover');
        }
    );
});