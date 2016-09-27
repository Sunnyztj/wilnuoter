$(function() {
    var wechatIcon = $('.fa-wechat');
    var wechatCode = $('.wechat-code');
    wechatIcon.hover(
        function() {
            wechatCode.fadeIn('slow');
        },
        function() {
            wechatCode.fadeOut('slow');
        }
    );

    wechatIcon.bind('touchstart touchend', function(e) {
        e.preventDefault();
        wechatCode.fadeIn('slow');
    });
});