<?php

namespace KJ\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use DOMPDFModule\View\Model\PdfModel;
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
        
       public function pdfAction()
        {
        $user_id = (int) $this->params()->fromRoute('id', 1); 
 //     echo $_POST['jcat_id'];
        $d = $this->getCategoryTable()->pdf($user_id,  $_POST['jcat_id']);
 //       $cv = $this->getCategoryTable()->cv($user_id);
        $pdf = new PdfModel();
        $pdf->setOption('filename', 'monthly-report'); // Triggers PDF download, automatically appends ".pdf"
        $pdf->setOption('paperSize', 'a4'); // Defaults to "8x11"
        $pdf->setOption('paperOrientation', 'landscape'); // Defaults to "portrait"       
        // To set view variables
        $pdf->setVariables(array(
          'pdf1' => $d
        ));      
        return $pdf;   
        
        }
        public function dashboardAction()
        {
            $das = $dashboard =$this->getCategoryTable()->dashboard();
            return new ViewModel (array(
                'dashboard' => $das
            ));  
        }
       
}
