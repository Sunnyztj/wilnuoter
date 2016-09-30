$(function() {
    var wechatIcon = $('.fa-wechat');
    var wechatCode = $('.wechat-code');
    wechatIcon.hover(
        function() {
            wechatCode.fadeIn(200);
        },
        function() {
            wechatCode.fadeOut(200);
        }
    );

    wechatIcon.click(function() {
        if (wechatCode.css('display') == 'none') {
            wechatCode.fadeIn(200);
        } else {
            wechatCode.fadeOut(200);
        }
    });
});