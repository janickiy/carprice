<!-- INCLUDE header.tpl -->

<p>+ <a href="./?t=add_url_price">Добавить ссылку на цену</a></p>

<div class="row">
    <div class="col-lg-12">
        <form class="form-inline" style="margin-bottom: 20px; margin-top: 20px;" method="GET" name="searchform" action="${ACTION}">
            <input type="hidden" name="t" value="subscribers">
            <div class="form-group">
                <input class="form-control form-warning input-sm" type="text" name="search" value="${SEARCH}" placeholder="">
            </div>
            <input class="btn btn-info" type="submit" value="Найти">
        </form>
    </div>
</div>


<!-- INCLUDE footer.tpl -->