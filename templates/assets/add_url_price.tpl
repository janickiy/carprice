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
    $(function(){
        $('.who').bind("change keyup input click", function() {
            if(this.value.length >= 2){
                $.ajax({
                    type: 'GET',
                    url: './?t=ajax&action=search_model&model=' + this.value,
                    dataType : "json",
                    success: function(data){
                        if (data != null && data.item != null) {
                            var html = '';
                            for(var i=0; i < data.item.length; i++) {
                                html += '<li data-item="' + data.item[i].id + '">' + data.item[i].name + '</li>';
                            }

                            console.log(html);
                            if (html != '')
                                $(".search_result").html(html).fadeIn();
                            else
                                $(".search_result").fadeOut();
                        }
                    }
                })
            }
        })

        $(".search_result").hover(function(){
            $(".who").blur();
        })

        $(".search_result").on("click", "li", function(){
            var text = $(this).html();
            var item = $(this).attr('data-item');
            $('#search').val(text);
            $('#model_id').val(item);
            $(".search_result").fadeOut();
        })

    })
</script>
<p>« <a href="./">назад</a></p>
<!-- INCLUDE errors.tpl -->
<!-- INCLUDE success.tpl -->

<form method="POST" action="${ACTION}">
<input id="model_id" type="hidden" name="model_id" value="">
    <div class="form-group">
        <label for="referal">Введите марку или модель</label>
        <input id="search" type="text" name="referal" placeholder="найти" value="" class="who form-control"  autocomplete="off">
        <ul class="search_result"></ul>
    </div>

    <div class="form-group
      <label for="url">URL адрес страницы с ценой</label>
      <input type="text" name="url" value="" class="form-control" autocomplete="off">
    </div>



    <input type="submit" class="btn btn-success" name="action" value="добавить">
</form>

<!-- INCLUDE footer.tpl -->