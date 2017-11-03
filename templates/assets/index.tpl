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

<table width="100%" class="table table-striped table-bordered table-hover tablesaw-swipe"  data-tablesaw-mode="swipe">
    <thead>
    <tr>
        <th class="title" scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">Марка</th>
        <th class="title" scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">Модель</th>
        <!-- BEGIN shops_header_row -->
        <th><a target="_blank" href="http://${URL}">${NAME}</a></th>
        <!-- END shops_header_row -->
    </tr>
    </thead>
    <tbody>
    <!-- BEGIN cars_row -->
    <tr>
        <td class="title">${CAR}</td>
        <td class="title">${MODEL}</td>
        <!-- BEGIN shops_row -->
        <td><!-- IF '${PRICE}' != '' -->  ${PRICE}<!-- ELSE -->-<!-- END IF --></td>
        <!-- END shops_row -->
    </tr>
    <!-- END cars_row -->
    </tbody>
</table>

<!-- INCLUDE footer.tpl -->