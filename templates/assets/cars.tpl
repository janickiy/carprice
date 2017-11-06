<!-- INCLUDE header.tpl -->

<p>+ <a href="./?t=add_car">Добавить автомобиль</a></p>

<form method="POST" action="">
<table width="100%">
    <!-- BEGIN row_cars -->
    <tr>
        <!-- BEGIN column -->
        <!-- IF '${NAME}' != '' && '${ID}' != '' -->
        <td>
            <table>
                <tr>
                    <td>
                        <p class="fa fa-angle-right"> ${NAME} + <a href="./?t=add_model&car_id=${ID}">добавить модель</a></p><br>
                        <!-- BEGIN row_model -->
                        <input type="checkbox" name="activate[]" value="${ID}"> ${NAME} <br>
                        <!-- END row_model -->
                    </td>
                    <td></td>
                </tr>
            </table>
        </td>
        <!-- END IF -->
        <!-- END column -->
    </tr>
    <!-- END row_cars -->
</table>
    <br>
    <p><input class="btn btn-danger" type="submit" value="Удалить" name="action"></p>
</form>
<!-- INCLUDE footer.tpl -->