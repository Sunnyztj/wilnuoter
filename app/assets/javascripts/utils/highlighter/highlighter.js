/**
 * Created by Charlie on 24/08/2016.
 */

$(function () {
    var wineList = $('#wine-list');

    wineList.hover(
        function() {

        },
        function() {
            wineList.find('.product').removeClass('highlighted');
            wineList.find('.product').removeClass('un-highlighted');
        }
    );

    wineList.find('.product').hover(
        function() {
            var hoveredID = $(this).attr('id');

            $.each(wineList.find('.product'), function() {
                var productID = $(this).attr('id');

                if (productID == hoveredID) {
                    $(this).removeClass('un-highlighted').addClass('highlighted');
                } else {
                    $(this).removeClass('highlighted').addClass('un-highlighted');
                }
            });
        },
        function() {

        }
    );
});