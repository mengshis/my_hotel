
$(function () {
    var app = angular.module('myApp',['ionic']);

    app.config(function ($stateProvider,$urlRouterProvider) {

        $stateProvider
            .state('msg',{
                url:"/myMsg",
                templateUrl:'tpl/personalMsg.html'
            })
        $urlRouterProvider.otherwise('myMsg');
    })


    app.controller('parentCtrl',
        ['$scope','$timeout','$ionicLoading',
            function ($scope,$timeout,$ionicLoading) {

                $scope.load = function () {

                    $ionicLoading.show({template:'loading...'});
                    $timeout(function () {
                        $ionicLoading.hide();
                    },1000);

                }

            }]);
    console.log('hahaha');
    $(".ms-nav").on('click','li>a',function(e){
        e.preventDefault();
        console.log($(this));
        $(this).addClass('active');
        $(this).parent().siblings().children().removeClass('active');
        var id=$(this).attr('href').substring(1);
        var list=$('.ms-tab-content').children();
        $('.ms-tab-content .ms-tab-pane').each(function(){
            if($(this).attr('id')==id){
                $(this).addClass('in').siblings().removeClass('in');
            }

        })
    });
    $('#add-addr').click(function(){
        $(this).parent().next().toggleClass('in');
    })
    $('#add-customer').click(function(){
        $(this).parent().next().toggleClass('in');
    });

    $("#edit-btn").click(function(){
        $(this).removeClass('in');
        $('.input-value').addClass('in');
        $('.save-btn').addClass('in');
        $('.cancle-btn').addClass('in');
        $('.title-value').removeClass('in');
    })
    $('.cancle-btn').click(function(){

    });


    $('.cancle-btn').click(function(){
        if(confirm('纭瑕佸彇娑堢紪杈戝悧锛�')==true){
            $(this).removeClass('in');
            $('.input-value').removeClass('in');
            $('.save-btn').removeClass('in');
            $('.cancle-btn').removeClass('in');
            $('.title-value').addClass('in');
            $('#edit-btn').addClass('in');
        }else{
            window.event.returnValue=false;
        }
    });
})
