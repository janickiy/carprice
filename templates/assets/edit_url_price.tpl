<!-- INCLUDE header.tpl -->

<p>« <a href="./">назад</a></p>
<!-- INCLUDE errors.tpl -->
<!-- INCLUDE success.tpl -->

<form method="POST" action="${ACTION}">
    <div class="row_block">
        <input type="hidden" name="id" value="${ID}">

        <div class="form-group">
           <label for="url">URL адрес страницы с ценой</label>
           <input type="text" name="url" value="${URL}" class="form-control" autocomplete="off">
        </div>
    </div>

    <input type="submit" class="btn btn-success" name="action" value="изменить">
</form>

<!-- INCLUDE footer.tpl -->