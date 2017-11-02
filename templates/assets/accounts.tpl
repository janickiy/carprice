<!-- INCLUDE header.tpl -->
<!-- INCLUDE errors.tpl -->
<!-- INCLUDE success.tpl -->
<a href="./?t=change_password">Сменить пароль</a><br>
<form method="POST" action="./?t=add_account">
    <table class="table table-striped table-bordered table-hover">
        <thead>
        <tr>
            <th>Логин</th>
            <th>Роль</th>
            <th>Действие</th>
        </tr>
        </thead>
        <tbody>
        <!-- BEGIN row -->
        <tr>
            <td>${LOGIN}</td>
            <td>${ROLE}</td>
            <td>
                <!-- IF '${ALLOW_EDIT}' == 'yes' -->
                <a class="btn btn-outline btn-default" title="редактировать" href="./?t=edit_account&id=${ID}"><i class="fa fa-edit"></i></a> <a class="btn btn-outline btn-danger" title="удалить" href="./?t=accounts&action=remove&id=${ID}"><i class="fa fa-trash-o"></i></a>
                <!-- END IF -->
            </td>
        </tr>
        <!-- END row -->
        </tbody>
    </table>
    <br>
    <input class="btn btn-success" type="submit" value="Добавить учетную запись">
</form>
<!-- INCLUDE footer.tpl -->