$(function(){

    $("ul.main_menu>li").hover(function(){
        // .hover() : .mouseover() + mouseleave()
        $("ul.sub_menu , .menu_bg").stop().slideToggle();
        // 전체 메뉴 배경하고 같이 나오게 실행
        // .slideToggle() : .slideUp() + .slideDown()
    });
    


});