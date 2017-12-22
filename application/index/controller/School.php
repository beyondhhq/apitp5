<?php
namespace app\index\controller;

class School extends Domain
{
    public function schoollist()
    {       
    	    
			return view('schoollist');
    }
    public function classlist()
    {       
    	    
			return view('classlist');
    }
    public function addschool()
    {       
    	    
			return view('addschool');
    }
    public function schoolDetail()
    {       
            
            return view('schoolDetail');
    }
}
