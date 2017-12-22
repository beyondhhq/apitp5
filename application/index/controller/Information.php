<?php
namespace app\index\controller;

class Information extends Domain
{
    public function informationlist()
    {       
    	    
			return view('informationlist');
    }
    public function addinformation()
    {       
    	    
			return view('addinformation');
    }
    public function infoDetail()
    {       
    	    
			return view('infoDetail');
    }
    public function infoType()
    {       
    	    
			return view('infoType');
    }
}
