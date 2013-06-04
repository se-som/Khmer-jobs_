<?php

namespace KJ\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use KJ\Model\Category;



class JobController extends AbstractActionController {

	protected $category;

	public function indexAction() {
            $jj = $this->getCategoryTable()->findAll3();
            return new ViewModel (array(
                'jjs' => $jj
            ));      
	}
     
	public function getCategoryTable(){
            if (!$this->category) {
                $sm = $this->getServiceLocator();
                $this->category = $sm->get('KJ\Model\CategoryTable');
            }
            return $this->category;
        }
       
}
