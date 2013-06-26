<?php
//new-job
//newcategory
//new-subject
//edit-company

namespace KJ\Controller;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use KJ\Model\Category;
use KJ\Form\SubjectForm;
use KJ\Model\Subject;
use KJ\Model\SubjectTable;
 


class IndexController extends AbstractActionController {
    protected $category;
    protected $session;
    protected $subjectTable;


    public function indexAction() {
            $sess = isset($_GET['sess']) ? $_GET['sess'] : "";                      
		$jobs = $this->getEntityManager()->getRepository('\KJ\Entity\BJob')->findAll();
               
                $coms = $this->getCategoryTable()->findAll4($sess); 
                $count = $this->getCategoryTable()->count();
                $co = array( 'jj'=>$jobs, 'count'=> $count);
   
                return new ViewModel(array(  
                    'com' => $coms,
                    'jobs' => $co
		));
	}
        
// about job......
        public function newJobAction(){	
                $sess = isset($_GET['sess']) ? $_GET['sess'] : "";
              
                $request = $this->getRequest(); 
                if ($request->isPost()) {
                    $sess= $_POST['session'];
                    $post = $this->getRequest()->getPost();
                    $company = $this->getEntityManager()->find('\KJ\Entity\ACompany', $post->com_id);
                    $category = $this->getEntityManager()->find('\KJ\Entity\BCategory', $post->cat_id);                       
                    $jcat = new \KJ\Entity\BJobCategory();           
                    $jcat->setCat($category);
                    $jcat->setCom($company);
                    $job = new \KJ\Entity\BJob();
                    $job->setJobTitle($post->job_title);
                    $job->setJobLocation($post->job_location);
                    $job->setJobDeadline($post->job_deadline);      
                    $job->setJobBenefit($post->job_benefit);
                    $job->setJobSalary($post->job_salary); 
                    $job->setAboutCompany($post->about_company);
                    $job->setJobApply($post->job_apply);            
                    $job->setJobDescription($post->job_description);      
                    $job->setJcat($jcat);
                    $this->getEntityManager()->persist($jcat);           
                    $this->getEntityManager()->persist($job);   
                    $this->getEntityManager()->flush();
                   return $this->redirect()->toUrl('/index?sess='.$sess.'&msg=2');
                }   
		return new ViewModel(array(
				'categories' => $this->getEntityManager()->getRepository('\KJ\Entity\BCategory')->findAll(),
                                'com' => $this->getCategoryTable()->findAll4($sess)
                    ));
	}
        
        public function deleteAction() {
                $sess= $_POST['session'];
		$id = $this->params('id');
		$job = $this->getServiceLocator()->get('doctrine.entitymanager.orm_default')->find('\KJ\Entity\Bjob', $id);         
		if(null == $job){
			$this->redirect()->toRoute('home', array('controller' => 'job', 'action' => 'index'));
		}
		$em = $this->getServiceLocator()->get('doctrine.entitymanager.orm_default');
		$em->remove($job);
		$em->flush();
                return $this->redirect()->toUrl('/index?sess='.$sess);           
             //   $this->redirect()->toRoute('home', array('controller' => 'job', 'action' => 'index'));
                    
                    
               
        }
        public function updateAction() {
		$request = $this->getRequest();
		if ($request->isPost()) {
			$postData = (array) $request->getPost();
			$id = $postData['job_id'];
			$job = $this->getServiceLocator()->get('doctrine.entitymanager.orm_default')->find('\KJ\Entity\Bjob', $id);
			if(null == $job){
				$this->redirect()->toRoute('home/action', array('action' => 'index'));
			}
			if (isset($postData['job_title'])) {
                                $sess= $_POST['session'];
                                $job->setJobDeadline($postData['job_deadline']);
                                $job->setJobTitle($postData['job_title']);
                                $job->setJobDescription($postData['job_description']);
                                $job->setJobBenefit($postData['job_benefit']);
                                $job->setJobLocation($postData['job_location']);
                                $job->setJobSalary($postData['job_salary']);
                                $job->setAboutCompany($postData['about_company']);
                                $job->setJobApply($postData['job_apply']);
                                
				$em = $this->getServiceLocator()->get('doctrine.entitymanager.orm_default');
				$em->persist($job);
				$em->flush();
				$this->flashMessenger()->addMessage('<div class="alert alert-success">Success</div>');
                                return $this->redirect()->toUrl('/index?sess='.$sess);
			}
                }
        }
        public function editAction() {
		$id = $this->params('id');
		$job = $this->getServiceLocator()->get('doctrine.entitymanager.orm_default')->find('\KJ\Entity\Bjob', $id);               
		
		return new ViewModel(array(
			'job' => $job,
			'submitText' => 'Update',
                        'session' =>$_POST['session']
		));
	}
        public function detailAction()
        {
            $id = $this->params('id');
		$job = $this->getServiceLocator()->get('doctrine.entitymanager.orm_default')->find('\KJ\Entity\Bjob', $id);
                return new ViewModel(array(
                        'jobs'=>$job
		));
                }

        


// about category
        public function newcategoryAction() {
           
            return new ViewModel(array(
                        'categories' => $this->getEntityManager()->getRepository('\KJ\Entity\BCategory')->findAll(),
			'submitText' => 'Save'
		));
	}  
        public function createCategoryAction()
        {
            
            $post = $this->getRequest()->getPost();          
            $cat = new \KJ\Entity\BCategory();
            $cat->setCatName($post->cat_name);		
            $this->getEntityManager()->persist($cat);
            $this->getEntityManager()->flush();       
            return $this->redirect()->toRoute('home'); 
        }       
    
// about subject      
        public function newSubjectAction() {
            $id = $this->params('id');
            $form = new SubjectForm();
            $form->get('submit')->setValue('Add');
            $request = $this->getRequest(); 
            if ($request->isPost()) {
                $subject = new Subject();
                $form->setInputFilter($subject->getInputFilter());
                $form->setData($request->getPost());
                if ($form->isValid()) {
                    $subject->exchangeArray($form->getData());
                    $this->getSubjectTable()->saveSubject($subject);
                    if(true){
                        $form = new SubjectForm();
                        $id=$this->getRequest()->getPost('cat_id');
                        $message = '<div class="alert alert-block alert-success">
                                    <a class="close" data-dismiss="alert" href="#">X</a>
                                    <h4 class="alert-heading">Success!</h4>
                                    You hade successfully submitted.</div>';
                        return array(
                            'message' => $message,
                            'form' => $form,
                            'id' => $id,
                            'subjects' => $this->getCategoryTable()->skill($id)
                        );
                    }
                }
            }
            return array(
                'message' => NULL,
                'form' => $form,
                'id' => $id,
                'subjects' => $this->getCategoryTable()->skill($id)
            );
	}
        
         public function getSubjectTable()
          {
                if (!$this->subjectTable) {
                    $sm = $this->getServiceLocator();
                    $this->subjectTable = $sm->get('KJ\Model\SubjectTable');
                }
            return $this->subjectTable;
        }  
  
        public function createSubjectFormAction(){
         
       $form = new SubjectForm();
        $form->get('submit')->setValue('Add');
        $request = $this->getRequest(); 
        if ($request->isPost()) {
            $subject = new Subject();
            
            $form->setInputFilter($subject->getInputFilter());
            $form->setData($request->getPost());
           if ($form->isValid()) {
                $subject->exchangeArray($form->getData());
                $this->getSubjectTable()->saveSubject($subject);
                // Redirect to list of Subject again
                return $this->redirect()->toRoute('subject');
               
            }
        }
        return array(
            'form' => $form,
            'dd' =>array(
                    'subject' => $this->getSubjectTable()->fetchAll(),
                    'categories' =>$this->getEntityManager()->getRepository('\KJ\Entity\BCategory')->findAll()
            )
            );
        
        }
        
 // about company      
        public function editCompanyAction()
        {
              $id =   $this->getCategoryTable()->user();         
		$company = $this->getServiceLocator()->get('doctrine.entitymanager.orm_default')->find('\KJ\Entity\ACompany', $id);               
                if(null == $company){
			$this->redirect()->toRoute('home/action', array('action' => 'index'));
		}
		return new ViewModel(array(
			'com' => $company,
			'submitText' => 'Edit',
		));         
        }
        public function UpdateCompanyAction()
        {
            $sess= $_POST['session'];
            $request = $this->getRequest();
		if ($request->isPost()) {
			$postData = (array) $request->getPost();
			$id = $postData['com_id'];
			$com = $this->getServiceLocator()->get('doctrine.entitymanager.orm_default')->find('\KJ\Entity\ACompany', $id);
			if(null == $com){
				$this->redirect()->toRoute('home/action', array('action' => 'index'));
			}
			if (isset($postData['com_name'])) {
                                
                                $com->setComName($postData['com_name']);
                                $com->setComLocation($postData['com_location']);
                                $com->setComPhone($postData['com_phone']);
                                $com->setComEmail($postData['com_email']);
                                $com->setComWeb($postData['com_web']);
                            
                                
				$em = $this->getServiceLocator()->get('doctrine.entitymanager.orm_default');
				$em->persist($com);
				$em->flush();
				$this->flashMessenger()->addMessage('<div class="alert alert-success">Success</div>');
                                return $this->redirect()->toUrl('/index?sess='.$sess);
			//	$this->redirect()->toRoute('home');
			}
           }
        }
        //function percentage
        public function percentageAction(){
            return array(
            'per' => $this->getCategoryTable()->perskill(),
                );
        }
        public function percentageFormAction(){
           
          //  var_dump($_POST['percentage']);
//            foreach($_POST['jcat_id'] as $value) {
//                var_dump($value);
//            }
//            foreach($_POST['sub_id'] as $valu) {
//                var_dump($valu);
//            }
      //  foreach ($_POST['percentage'] as $va){
//            $id=$this->getRequest()->getPost();
//            for($i=0;count($id['form'])>$i;$i++){
//                echo $id['jcat_id'][$i];
//                echo $id['sub_id'][$i];
//                echo $id['percentage'][$i].'<br/>';
//            }
       
             
                 
$ii = 3;
                $post = $this->getRequest()->getPost();  
                
                $cate = $this->getEntityManager()->find('\KJ\Entity\BJobCategory', $post->jcat_id); 
                
                $cat = new \KJ\Entity\BPercentage();
            //    var_dump($cat);
            //     $ca = new \KJ\Entity\BSubject();
              //   var_dump($cat);
                
            //     $jcat = new \KJ\Entity\BJobCategory(); 
            //     var_dump($jcat);
               
                
               $cat->setPercentage('gftt');
         //        var_dump($cat);
                  
                 
          //        $cat->seSub($cs); 
          //     $cat->setJcat($cate);
         //       var_dump($cat);
                $cat->setJcat($cate);
                    var_dump($cat);
                    
    //                 $cat->setJcat($cs);
           //      $jcat->setJcat('13');
           //        var_dump($cat);
          //      $this->getEntityManager()->persist($cat);
        //        $this->getEntityManager()->flush();  
                
         //   }
           // echo $i;
        }

        /**
	 * Entity manager instance
	 *           
	 * @var 
         * 
	 */
	protected $em;

	/**
	 * Returns an instance of the Doctrine entity manager loaded from the service 
	 * locator
	 * 
	 * @return Doctrine\ORM\EntityManager
	 */
	public function getEntityManager() {
		if (null === $this->em) {
			$this->em = $this->getServiceLocator()->get('doctrine.entitymanager.orm_default');
		}
		return $this->em;
	} 
        public function getCategoryTable(){
            if (!$this->category) {
                $sm = $this->getServiceLocator();
                $this->category = $sm->get('KJ\Model\CategoryTable');
            }
            return $this->category;
        }
}

