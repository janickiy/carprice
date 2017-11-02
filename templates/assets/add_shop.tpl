<!-- INCLUDE header.tpl -->

<p>« <a href="./?t=shops">назад</a></p>
<!-- INCLUDE errors.tpl -->
<!-- INCLUDE success.tpl -->
<form method="POST" action="${ACTION}">
    <div class="form-group">
        <label for="name">Название</label>
        <input class="form-control" type="text" name="name">
    </div>

    <div class="form-group">
        <label for="password_again">URL</label>
        <input class="form-control" type="text" name="url">
    </div>

    <input type="submit" class="btn btn-success" name="action" value="добавить">
</form>

<!-- INCLUDE footer.tpl -->