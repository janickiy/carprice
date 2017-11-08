<!-- INCLUDE header.tpl -->
<style>
    .search{
        position:relative;
    }

    .search_result{
        background: #FFF;
        border: 1px #ccc solid;
        width: 180px;
        border-radius: 4px;
        max-height:180px;
        overflow-y:scroll;
        display:none;
    }

    .search_result li{
        list-style: none;
        padding: 5px 10px;
        margin: 0 0 0 -40px;
        color: #0896D3;
        border-bottom: 1px #ccc solid;
        cursor: pointer;
        transition:0.3s;
    }

    .search_result li:hover{
        background: #F9FF00;
    }
</style>

<script>
    $(document).ready(function() {
        $(document).on("change keyup input click", "input[id^='search_']", function() {

            if(this.value.length >= 2) {
                var itemId = $(this).attr('data-item');
                $.ajax({
                    type: 'GET',
                    url: './?t=ajax&action=search_model&model=' + this.value,
                    dataType : "json",
                    success: function(data){
                        if (data != null && data.item != null) {
                            var html = '';
                            for(var i=0; i < data.item.length; i++) {
                                html += '<li data-item-id="' + itemId + '" data-item="' + data.item[i].id + '">' + data.item[i].name + '</li>';
                            }

                            console.log(html);
                            if (html != '')
                                $("#search_result_" + itemId).html(html).fadeIn();
                            else
                                $("#search_result_" + itemId).fadeOut();
                        }
                    }
                })
            }
        })

        $(".search_result").hover(function(){
            $(".who").blur();
        })

        $(document).on("click", "ul[id^='search_result_'] li", function(){
            var text = $(this).html();
            var item = $(this).attr('data-item');
            var itemId = $(this).attr('data-item-id');
            $('#search_' + itemId).val(text);
            $('#model_id_' + itemId).val(item);
            $("#search_result_" + itemId).fadeOut();
        })

        $(document).on( "click", '#add_field', function() {
            var lengthBlock = $('div.row_block').length;

            var html = '<div class="row_block">';
            html += '<input id="model_id_' + lengthBlock + '" type="hidden" name="model_id[]" value="">';
            html += '<div class="form-group">';
            html += '<label for="referal">Введите марку или модель</label>';
            html += '<input id="search_' + lengthBlock + '" type="text" name="referal[]" placeholder="найти" value="" data-item="' + lengthBlock + '" class="who form-control"  autocomplete="off">';
            html += '<ul id="search_result_' + lengthBlock + '" class="search_result"></ul>';
            html += '</div>';
            html += '<div class="form-group">';
            html += '<label for="url">URL адрес страницы с ценой</label>';
            html += '<input type="text" name="url[]" value="" class="form-control" autocomplete="off">';
            html += '</div>';
            html += '</div>';

            $('#priceForm').prepend(html);
        });

    })
</script>
<p>« <a href="./">назад</a></p>
<!-- INCLUDE errors.tpl -->
<!-- INCLUDE success.tpl -->

<form id="priceForm" method="POST" action="${ACTION}">

    <div class="row_block">
        <input id="model_id_0" type="hidden" name="model_id[]" value="">
        <div class="form-group">
            <label for="referal">Введите марку или модель</label>
            <input id="search_0" type="text" name="referal[]" placeholder="найти" value="" data-item="0" class="who form-control"  autocomplete="off">
            <ul id="search_result_0" class="search_result"></ul>
        </div>

        <div class="form-group">
           <label for="url">URL адрес страницы с ценой</label>
           <input type="text" name="url[]" value="" class="form-control" autocomplete="off">
        </div>
    </div>

    <div class="form-group">
        <input class="btn btn-default" id="add_field" type="button" value=" + ">
    </div>

    <input type="submit" class="btn btn-success" name="action" value="добавить">
</form>

<!-- INCLUDE footer.tpl -->