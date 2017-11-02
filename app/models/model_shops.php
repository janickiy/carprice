<?php

defined('CP') || exit('CarPrices: access denied.');

class Model_shops extends Model
{
    /**
     * @return mixed
     */
    public function getShops()
    {
        $query = "SELECT * FROM " . core::database()->getTableName('shops') . " ORDER BY name";
        $result = core::database()->querySQL($query);
        return core::database()->getColumnArray($result);
    }
}