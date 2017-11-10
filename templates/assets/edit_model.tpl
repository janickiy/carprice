<!-- INCLUDE header.tpl -->
<p>« <a href="./?t=cars">назад</a></p>
<!-- INCLUDE success.tpl -->
<!-- INCLUDE errors.tpl -->
<form method="POST" action="${ACTION}">
    <input type="hidden" name="id" value="${ID}">
    <div class="form-group">
        <label for="name">Модель</label>
        <input class="form-control" type="text" value="${NAME}" name="name">
    </div>

    <input type="submit" class="btn btn-success" name="action" value="редактировать">
</form>
<!-- INCLUDE footer.tpl -->