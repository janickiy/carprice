<!-- INCLUDE header.tpl -->
<script type="text/javascript">
    $(document).on( "click", '#add_field', function() {
        var html = '<div class="form-group">';
        html += '<label for="name">Модель</label>';
        html += '<input class="form-control" type="text" name="name[]">';
        html += '</div>';
        $('#modelsForm').prepend(html);
    });
</script>
<p>« <a href="./?t=cars">назад</a></p>
<!-- INCLUDE success.tpl -->
<!-- INCLUDE errors.tpl -->
<p>Марка: ${CAR}</p>
<form id="modelsForm" method="POST" action="${ACTION}">
    <input type="hidden" name="id" value="${ID}">
    <div class="form-group">
        <label for="name">Модель</label>
        <input class="form-control" type="text" name="name[]">
    </div>

    <div class="form-group">
        <input class="btn btn-default" id="add_field" type="button" value=" + ">
     </div>

    <input type="submit" class="btn btn-success" name="action" value="добавить">
</form>
<!-- INCLUDE footer.tpl -->