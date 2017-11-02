<?php

defined('CP') || exit('CarPrices: access denied.');

Auth::authorization();
$autInfo = Auth::getAutInfo(Auth::getAutId());

if (Main::CheckAccess($autInfo['role'], 'admin,manager')) throw new Exception403('У вас нет разрешения для просмотра этого раздела');

core::requireEx('libs', "html_template/SeparateTemplate.php");
$tpl = SeparateTemplate::instance()->loadSourceFromFile(core::getTemplate() .  "shops.tpl");

include_once core::pathTo('extra', 'top.php');
include_once core::pathTo('extra', 'menu.php');

$tpl->assign('TITLE_PAGE', 'Автосалоны');
$tpl->assign('TITLE', 'Автосалоны');

foreach ($data->getShops() as $row) {
    $rowShop = $tpl->fetch('shops_row');
    $rowShop->assign('NAME', $row['name']);
    $rowShop->assign('URL', $row['url']);
    $rowShop->assign('ID', $row['id']);
    $tpl->assign('shops_row', $rowShop);
}

$tpl->display();