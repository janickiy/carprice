<!-- INCLUDE header.tpl -->
<p>« <a href="./?t=cars">назад</a></p>
<!-- INCLUDE success.tpl -->
<!-- INCLUDE errors.tpl -->
<form method="POST" action="${ACTION}">
    <div class="form-group">
        <label for="name">Марка</label>
        <input class="form-control" type="text" name="name">
    </div>
    <input type="submit" class="btn btn-success" name="action" value="добавить">
</form>
<!-- INCLUDE footer.tpl -->