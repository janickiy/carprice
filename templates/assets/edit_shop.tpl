<!-- INCLUDE header.tpl -->

<p>« <a href="./?t=shops">назад</a></p>
<!-- INCLUDE errors.tpl -->
<!-- INCLUDE success.tpl -->
<form method="POST" action="${ACTION}">
    <input type="hidden" name="id" value="${ID}">
    <div class="form-group">
        <label for="name">Название</label>
        <input class="form-control" type="text" value="${NAME}" name="name">
    </div>

    <div class="form-group">
        <label for="url">Сайт</label>
        <input class="form-control" type="text" value="${URL}" name="url">
    </div>

    <div class="form-group">
        <label for="template">Шаблон</label>
        <input class="form-control" type="text" value="${TEMPLATE}" name="template">
    </div>

    <div class="form-group">
        <label for="pos">Позиция</label>
        <input class="form-control" type="text" value="${POS}" name="pos">
    </div>

    <div class="form-group">
        <label for="city">Город</label>
        <select name="city" class="form-control">
            <option <!-- IF '${CITY}' == '1' -->checked="checked"<!-- END IF --> value="1">Москва</option>
            <option <!-- IF '${CITY}' == '2' -->checked="checked"<!-- END IF --> value="2">Санкт-Петербург</option>
        </select>
    </div>

    <input type="submit" class="btn btn-success" name="action" value="редактировать">
</form>

<!-- INCLUDE footer.tpl -->