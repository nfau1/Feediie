<?php

if(!defined('CONST_INCLUDE'))
    die('Acces direct interdit !');

include_once ("UserModel.php");

class RegisterController extends Controller{

    private $userModel;
	
	public function __construct() {
		$this->userModel = new UserModel();
    }

    public function execute($action){
        switch(strtolower($action)){
        }
    }
}

?>