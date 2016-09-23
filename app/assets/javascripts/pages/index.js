/**
 * Created by Charlie on 21/09/2016.
 */

$(function(){
    var aboutUsAndProductsArea = $('.about-us-and-products-area');

    aboutUsAndProductsArea.hover(
        function() {
            $(this).addClass('hover');
        },
        function() {
            $(this).removeClass('hover');
        }
    );
});