$(
    function(){
        // 基础版本的手风琴菜单效果
        $('#box1 a').click(
            function(){
                //获取点击的一级菜单对应的二级菜单
                var curLi=$($(this).parent().find('li'));
                // 通过判断二级菜单是否收起，来进行判断是否展开，并更换"+ -"表示
                if(curLi.css('display') == 'none'){
                    curLi.slideDown();
                    $(this).find('b').text('-');
                } else {
                    curLi.slideUp();
                    $(this).find('b').text('+');
                }
            }
        )
    }
);
