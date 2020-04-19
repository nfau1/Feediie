<?php

if(!defined('CONST_INCLUDE'))
    die('Acces direct interdit !');

class CityModel extends DBConnection{
    public function __construct () {
    }
  
    public static function getAllCity(){
        $req = self::$pdo->prepare("select name,zipcode,idcity from city");
        $req->execute();    
        return $req->fetchAll();
    }

    public function getCityWithID($id){
        $req = self::$pdo->prepare("select * from city where name = ?");
        $req->execute(array($id));    
        return $req->fetch();
    }
      
}

?>