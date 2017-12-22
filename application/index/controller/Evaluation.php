<?php
namespace app\index\controller;

class Evaluation extends Domain
{
    public function evaluationlist()
    {       
    	    
			return view('evaluationlist');
    }
    public function addevaluation()
    {       
    	    
			return view('addevaluation');
    }
    public function titlelist()
    {       
    	    
			return view('titlelist');
    }
}
