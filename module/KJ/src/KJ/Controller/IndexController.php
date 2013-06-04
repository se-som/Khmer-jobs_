<?php
//new-job
//newcategory
//new-subject
//edit-company

namespace KJ\Controller;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use KJ\Model\Category;

class IndexController extends AbstractActionController {
    protected $category;
    public function indexAction() {
            $sess = isset($_GET['sess']) ? $_GET['sess'] : "";
		$jobs = $this->getEntityManager()->getRepository('\KJ\Entity\BJob')->findAll();
                $coms = $this->getCategoryTable()->findAll4($sess);               
                return new ViewModel(array(
			'jobs' => $jobs,  
                        'com' => $coms
		));
	}
// about job......
        public function newJobAction(){	
                $sess = isset($_GET['sess']) ? $_GET['sess'] : "";
               
		return new ViewModel(array(
				'categories' => $this->getEntityManager()->getRepository('\KJ\Entity\BCategory')->findAll(),
                                'com' => $this->getCategoryTable()->findAll4($sess)
                    ));
	}
        public function createJobByFormAction(){
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
                return $this->redirect()->toRoute('home', array('controller' => 'index'));             			
	}
        public function deleteAction() {
		$id = $this->params('id');
		$job = $this->getServiceLocator()->get('doctrine.entitymanager.orm_default')->find('\KJ\Entity\Bjobcategory', $id);         
		if(null == $job){
			$this->redirect()->toRoute('home', array('controller' => 'job', 'action' => 'index'));
		}
		$em = $this->getServiceLocator()->get('doctrine.entitymanager.orm_default');
		$em->remove($job);
		$em->flush();
		return $this->redirect()->toRoute('home', array('controller' => 'job', 'action' => 'index'));
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
				$this->redirect()->toRoute('home');
			}
                }
        }
        public function editAction() {
		$id = $this->params('id');
		$job = $this->getServiceLocator()->get('doctrine.entitymanager.orm_default')->find('\KJ\Entity\Bjob', $id);               
		if(null == $job){
			$this->redirect()->toRoute('home/action', array('action' => 'index'));
		}
		return new ViewModel(array(
			'job' => $job,
			'submitText' => 'Update',
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
        $category = $this->getEntityManager()->getRepository('\KJ\Entity\BCategory')->findAll();
		return new ViewModel(array(
			'submitText' => 'Save',
                        'category'=>$category
		));
	}
        public function createSubjectFormAction(){
            $post = $this->getRequest()->getPost();
            $category = $this->getEntityManager()->find('\KJ\Entity\BCategory', $post->cat_id);
            
            $sub = new \KJ\Entity\BSubject();
            $sub->setSubName($post->sub_name);	                     
              
            $catsub = new \KJ\Entity\BCatsubject();  
            $catsub ->setCat($category); 
            $catsub->setSub($sub);     
            
            $this->getEntityManager()->persist($sub);
            $this->getEntityManager()->persist($catsub); 
            $this->getEntityManager()->flush();       
            return $this->redirect()->toRoute('home');           			
	}
        
        
        
 // about company      
        public function editCompanyAction()
        {
          //  $id = $this->params('');
            $id = 214;
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
				$this->redirect()->toRoute('home');
			}
           }
        }
        public function pdfAction()
        {
            
        }

        



        /**
	 * Entity manager instance
	 *           
	 * @var Doctrine\ORM\EntityManager
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

