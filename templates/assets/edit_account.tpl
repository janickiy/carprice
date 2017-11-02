<!-- INCLUDE header.tpl -->
<p>« <a href="${RETURN_BACK_LINK}">назад</a></p>
<!-- INCLUDE errors.tpl -->
<!-- INCLUDE success.tpl -->
<form method="POST" action="${ACTION}">
    <input type="hidden" name="id" value="${ID}">

    <div class="form-group">
        <label for="password">Пароль</label>
        <input class="form-control" type="password" name="password">
    </div>

    <div class="form-group">
        <label for="password_again">Павтор пароля</label>
        <input class="form-control" type="password" name="password_again">
    </div>

    <div class="form-group">
        <label for="status">Роль</label>
        <select for="user_role" name="user_role" class="form-control form-primary">
            <option value="admin" <!-- IF '${USER_ROLE}' == 'admin' -->selected="selected"<!-- END IF -->>админ</option>
            <option value="moderator"  <!-- IF '${USER_ROLE}' == 'manager' -->selected="selected"<!-- END IF -->>менеджер</option>
        </select>
    </div>

    <input type="submit" class="btn btn-success" name="action" value="изменить">
</form>
<!-- INCLUDE footer.tpl -->