<!-- INCLUDE header.tpl -->
<!-- INCLUDE errors.tpl -->
<!-- INCLUDE success.tpl -->
<p>« <a href="./?t=accounts">Учётные записи</a></p>
<form action="${ACTION}" method="post">
    <div class="form-group">
        <label for="current_password">Текущий пароль:</label>
        <div class="form-group">
            <input type="password" class="form-control" name="current_password" placeholder="Текущий пароль">
        </div>
    </div>
    <div class="control-group">
        <label for="password">Пароль:</label>
        <div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Пароль">
        </div>
    </div>
    <div class="control-group">
        <label for="password_again">Павтор пароля:</label>
        <div class="form-group">
            <input type="password" class="form-control" name="password_again" placeholder="Павтор пароля">
        </div>
    </div>
    <div class="form-group">
        <input type="submit" name="action" class="btn btn-success" value="Сохранить">
    </div>
</form>
<!-- INCLUDE footer.tpl -->
