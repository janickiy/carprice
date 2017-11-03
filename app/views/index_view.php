<?php

defined('CP') || exit('CarPrices: access denied.');

Auth::authorization();
$autInfo = Auth::getAutInfo(Auth::getAutId());

if (Main::CheckAccess($autInfo['role'], 'admin,manager')) throw new Exception403('У вас нет разрешения для просмотра этого раздела');

core::requireEx('libs', "html_template/SeparateTemplate.php");
$tpl = SeparateTemplate::instance()->loadSourceFromFile(core::getTemplate() .  "index.tpl");

include_once core::pathTo('extra', 'top.php');
include_once core::pathTo('extra', 'menu.php');
$tpl->assign('TITLE_PAGE', 'Цены');
$tpl->assign('TITLE', 'Цены');

$city = Core_Array::getRequest(city) ? Core_Array::getRequest(city) : 1;

foreach ($data->getShops($city) as $row) {
    $rowShop = $tpl->fetch('shops_header_row');
    $rowShop->assign('NAME', $row['name']);
    $rowShop->assign('URL', $row['url']);
    $tpl->assign('shops_header_row', $rowShop);
}

foreach ($data->getModels() as $row) {
    $rowCar = $tpl->fetch('cars_row');
    $rowCar->assign('CAR', $row['car']);
    $rowCar->assign('MODEL', $row['model']);

    foreach ($data->getShops($city) as $row_shop) {
        $priceInfo = $data->getPriceInfo($row_shop['id'],$row['model_id']);
        $rowShop = $rowCar->fetch('shops_row');
        $rowShop->assign('PRICE', $priceInfo['price']);
        $rowShop->assign('URL', $priceInfo['url']);
        $rowCar->assign('shops_row', $rowShop);
    }

    $tpl->assign('cars_row', $rowCar);
}






$tpl->display();