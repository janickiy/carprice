<!-- INCLUDE header.tpl -->
<p>« <a href="${RETURN_BACK_LINK}">назад</a></p>

<!-- INCLUDE success.tpl -->
<!-- INCLUDE errors.tpl -->

<form method="POST" action="${ACTION}">
    <p>* - Обязательные поля</p>

    <div class="form-group">
        <label for="login">Логин*</label>
        <input class="form-control" type="text" name="login" value="${USER_LOGIN}">
    </div>

    <div class="form-group">
        <label for="password">Пароль*</label>
        <input class="form-control" type="password" name="password">
    </div>

    <div class="form-group">
        <label for="password">Повтор пароля*</label>
        <input class="form-control" type="password" name="password_again">
    </div>

    <div class="form-group">
        <label for="status">Роль*</label>
        <select for="status" name="user_role" class="form-control form-primary">
            <option value="admin" <!-- IF '${USER_ROLE}' == 'admin' -->selected="selected"<!-- END IF -->>admin</option>
            <option value="moderator"  <!-- IF '${USER_ROLE}' == 'manager' -->selected="selected"<!-- END IF -->>менеджер</option>
        </select>
    </div>

    <input type="submit" class="btn btn-success" name="action" value="Добавить">
</form>
<!-- INCLUDE footer.tpl -->