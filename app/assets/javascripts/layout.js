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

    wechatIcon.click(function() {
        if (wechatCode.css('display') == 'none') {
            wechatCode.fadeIn('slow');
        } else {
            wechatCode.fadeOut('slow');
        }
    });
});