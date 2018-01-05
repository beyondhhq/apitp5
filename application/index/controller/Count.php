<?php
namespace app\index\controller;

class Count extends Domain
{
    public function distribution(){

      return $this->fetch('count/distribution');

    }
  
}
