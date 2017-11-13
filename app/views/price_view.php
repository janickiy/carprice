<?php

ob_end_clean();

core::requireEx('libs', "PHPExcel/PHPExcel.php");

$city = isset($_COOKIE["city"]) && $_COOKIE["city"] ? $_COOKIE["city"] : 1;

$dataArray1 = [['Марка','Модель',],];
$dataArray2 = [];

foreach ($data->getShops($city) as $row) {
    $dataArray2[] = $row['name'];
}

$dataArray = [];
$dataArray[0] = array_merge($dataArray1[0], $dataArray2);

$dataArray4 = [];
$dataArray3 = [];
$i = 0;
foreach ($data->getModels() as $row) {
    $i++;
    $dataArray4 = [[$row['car'],$row['model']],] ;
    $dataArray5 = [];

    foreach ($data->getShops($city) as $row_shop) {
        $priceInfo = $data->getPriceInfo($row_shop['id'],$row['model_id']);
        $dataArray5[] = $priceInfo['price'];
    }

    $dataArray[$i] = array_merge($dataArray4[0], $dataArray5);

    unset($dataArray4);
    unset($dataArray5);
}


// create php excel object
$doc = new PHPExcel();

// set active sheet
$doc->setActiveSheetIndex(0);

// read data to active sheet
$doc->getActiveSheet()->fromArray($dataArray);

//save our workbook as this file name
$filename = 'just_some_random_name.xls';
//mime type
header('Content-Type: application/vnd.ms-excel');
//tell browser what's the file name
header('Content-Disposition: attachment;filename="' . $filename . '"');

header('Cache-Control: max-age=0'); //no cache
//save it to Excel5 format (excel 2003 .XLS file), change this to 'Excel2007' (and adjust the filename extension, also the header mime type)
//if you want to save it as .XLSX Excel 2007 format

$objWriter = PHPExcel_IOFactory::createWriter($doc, 'Excel5');

//force user to download the Excel file without writing it to server's HD
$objWriter->save('php://output');