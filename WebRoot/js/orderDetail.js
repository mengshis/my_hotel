
//animate.css动画触动一次方法
$.fn.extend({
    animateCss: function (animationName) {
        var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
        this.addClass('animated ' + animationName).one(animationEnd, function() {
            $(this).removeClass('animated ' + animationName);
        });
    }
});
/**
 * 显示模态框方法
 * @param targetModel 模态框选择器，jquery选择器
 * @param animateName 弹出动作
 * @ callback 回调方法
 */
var modalShow = function(targetModel, animateName, callback){
    var animationIn = ["bounceIn","bounceInDown","bounceInLeft","bounceInRight","bounceInUp",
        "fadeIn", "fadeInDown", "fadeInLeft", "fadeInRight", "fadeOutUp",
        "fadeInDownBig", "fadeInLeftBig", "fadeOutRightBig", "fadeOutUpBig","flipInX","flipInY",
        "lightSpeedIn","rotateIn","rotateInDownLeft","rotateInDownRight","rotateInUpLeft","rotateInUpRight",
        "zoomIn","zoomInDown","zoomInLeft","zoomInRight","zoomInUp","slideInDown","slideInLeft",
        "slideInRight", "slideInUp","rollIn"];
    if(!animateName || animationIn.indexOf(animateName)==-1){
        console.log(animationIn.length);
        var intRandom =  Math.floor(Math.random()*animationIn.length);
        animateName = animationIn[intRandom];
    }
    console.log(targetModel + " " + animateName);
    $(targetModel).show().animateCss(animateName);
    callback.call(this);
}
/**
 * 隐藏模态框方法
 * @param targetModel 模态框选择器，jquery选择器
 * @param animateName 隐藏动作
 * @ callback 回调方法
 */
var modalHide = function(targetModel, animateName, callback){
    var animationOut = ["bounceOut","bounceOutDown","bounceOutLeft","bounceOutRight","bounceOutUp",
        "fadeOut", "fadeOutDown", "fadeOutLeft", "fadeOutRight", "fadeOutUp",
        "fadeOutDownBig", "fadeOutLeftBig", "fadeOutRightBig", "fadeOutUpBig","flipOutX","flipOutY",
        "lightSpeedOut","rotateOut","rotateOutDownLeft","rotateOutDownRight","rotateOutUpLeft","rotateOutUpRight",
        "zoomOut","zoomOutDown","zoomOutLeft","zoomOutRight","zoomOutUp",
        "zoomOut","zoomOutDown","zoomOutLeft","zoomOutRight","zoomOutUp","slideOutDown","slideOutLeft",
        "slideOutRight", "slideOutUp","rollOut"];
    if(!animateName || animationOut.indexOf(animateName)==-1){
        console.log(animationOut.length);
        var intRandom =  Math.floor(Math.random()*animationOut.length);
        animateName = animationOut[intRandom];
    }
    $(targetModel).children().click(function(e){e.stopPropagation()});
    $(targetModel).animateCss(animateName);
    $(targetModel).delay(900).hide(1,function(){
        $(this).removeClass('animated ' + animateName);
    });
    callback.call(this);
}

var modalDataInit = function(info){
    //alert(info);
    //填充数据，对弹出模态框数据样式初始化或修改
}
