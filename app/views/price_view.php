<?php

ob_end_clean();

include 'vendor/PHPExcel/PHPExcel.php';

$ext = 'xls';
$filename = 'emailexport222.xls';

$pExcel = new PHPExcel;
$pExcel->setActiveSheetIndex(0);
$aSheet = $pExcel->getActiveSheet();
$aSheet->setTitle('Цены');

$aSheet->setCellValue('','Марка');
$aSheet->setCellValue('','Модель');

foreach ($data->getShops($city) as $row) {
    $rowShop = $tpl->fetch('shops_header_row');
    $rowShop->assign('NAME', $row['name']);
    $rowShop->assign('URL', $row['url']);
    $tpl->assign('shops_header_row', $rowShop);
}





$aSheet->getColumnDimension('A')->setWidth(20);
$aSheet->getColumnDimension('B')->setWidth(30);

include 'vendor/PHPExcel/PHPExcel/Writer/Excel5.php';

$objWriter = new PHPExcel_Writer_Excel5($pExcel);


header('Content-Type: application/vnd.ms-excel');
header('Content-Disposition: attachment;filename="logstat_.xls"');
header('Cache-Control: max-age=0');
$objWriter->save('php://output');
exit;


