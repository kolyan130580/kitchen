
    $(function(){
        var cookie = $.parseJSON($.cookie('dish_id')) ? $.parseJSON($.cookie('dish_id')) : {};
        $('.button-1').on('click', function(e){
            var elem = $(this).attr('id').split('_')[2];
            if ($(this).hasClass('basket')){
                $(this).removeClass('basket');
                $(this).html('Добавить в корзину');
                var object = $.parseJSON($.cookie('dish_id'));
                delete object[elem];
                cookie = object;
                $.cookie('dish_id', null, { path: '/' });
                $.cookie('dish_id', $.toJSON(cookie), { path: '/' });
            } else {
                $(this).addClass('basket');
                $(this).html('Добавлено');
                cookie[elem] = 1;
                $.cookie('dish_id', null, { path: '/' });
                $.cookie('dish_id', $.toJSON(cookie), { path: '/' });
            }
        })

        
        $('.button-1').each(function(){
           var elem = $(this).attr('id').split('_')[2];
           if (typeof cookie[elem] !== "undefined"){
                $(this).addClass('basket');
                $(this).html('Добавлено');
           } 
        })
    })

                  