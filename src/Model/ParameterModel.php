<?php

if(!defined('CONST_INCLUDE'))
    die('Acces direct interdit !');

class ParameterModel extends DBConnection{
    public function __construct () {
    }

    public static function getUserFilterAgeDistance($idUser){
        $req = self::$pdo->prepare("select distanceMax, filterAgeMin, filterAgeMax from feediieuser where idUser = ?");
        $req->execute(array($idUser));
        return $req->fetchAll();
    }

    public static function updateDistance($idUser,$distance){
        $req = self::$pdo->prepare("update feediieuser set distance = ? where idUser = ?");
        $req->execute(array($distance,$idUser));
        return $req->fetchAll();
    }
    public static function updateAge($idUser,$ageMin,$ageMax){
        $req = self::$pdo->prepare("update feediieuser set ageMin = ?, ageMax = ? where idUser = ?");
        $req->execute(array($ageMin,$ageMax,$idUser));
        return $req->fetchAll();
    }
    public static function getUserByGender($idUser,$sex){
        $req = self::$pdo->prepare("select distinct * from FeediieUser inner join interestedsex on FeediieUser.sex = interestedsex.sex and interestedsex.sex = FeediieUser.sex");
        $req->execute(array($idUser,$sex));
        return $req->fetchAll();
    }
//Si currentUser.sex appartient à otheruser.selectedsex et si currentUser.selectedsex appartient à otheruser.sex where currentuser = $iduser et otheruser = *
    public static function getUserSelectedRelation($idUser){
        $req = self::$pdo->prepare("select idrelationType from interestedRelationType where idUser = ?");
        $req->execute(array($idUser));
        return $req->fetchAll(PDO::FETCH_COLUMN);
    }
    public static function getAllRelation(){
        $req = self::$pdo->prepare("select * from RelationType");
        $req->execute();
        return $req->fetchAll();
    }
    public static function removeUserSelectedRelation($idUser, $idRelation){
        $req = self::$pdo->prepare("delete from interestedRelationType where idUser = ? and idRelationType = ?");
        $req->execute(array($idUser, $idRelation));
        return $req->fetchAll();
    }
    public static function addUserSelectedRelation($idUser,$idRelation){
        $req = self::$pdo->prepare("insert into interestedRelationType (idUser,idRelationType) values (?,?)");
        $req->execute(array($idUser,$idRelation));
        return $req->fetchAll();
    }
    public static function updateDietActive($idUser,$dietactive){
        $req = self::$pdo->prepare("update feediieuser set filterDiet = ? where idUser = ?");
        $req->execute(array($dietactive,$idUser));
        return $req->fetchAll();
    }
}

?>
