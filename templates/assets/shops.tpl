<!-- INCLUDE header.tpl -->

<p>+ <a href="./?t=add_shop">Добавить автосалон</a></p>

<ul>
<!-- BEGIN shops_row -->
    <li> <a href="http://${URL}">${NAME}</a> <a href="./?t=edit_shop&id=${ID}" class="fa fa-edit"></a> <a href="./?t=shops&action=remove&id=${ID}" class="fa fa-trash-o"></a></li>
<!-- END shops_row -->
</ul>

