/**
 * Created by Charlie on 17/08/2016.
 */

$(function() {
    $('.wine-image-preview').click(function() {
        var largeUrl = $(this).find('.wine-image-large-url-keeper').attr('data-path');

        var largeImage = $('#wine-image-large').find('.large-image');

        largeImage.fadeOut(300, function() {
            largeImage.attr({src: largeUrl});
            largeImage.fadeIn(300);
        })
    });
});