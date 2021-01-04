<?php 

class Conexion{

    static public function conectar(){

        $link = new PDO("mysql:host=localhost;dbname=inventario",
        "root","");

        /* ini_set('max_execution_time', 300);

        set_time_limit(300); */

         set_time_limit(0); 
       

        $link->exec("set names utf8");

        return $link;

    }
}