<?php


namespace KJ\Model;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use KJ\Model\Category;          

use Zend\Db\TableGateway\TableGateway;

class CategoryTable {

  protected $tableGateway;

  public function __construct(TableGateway $tableGateway) {
    $this->tableGateway = $tableGateway;
  }
 
//  public function findAll()
//  {
//      return $this->tableGateway->getAdapter()->query('select * from b_job as b 
//                                                        join b_jobcategory as a on b.jcat_id = a.jcat_id
//                                                        join a_company as c on a.com_id = c.com_id
//                                                        where c.com_id = 211',  
//							\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
//  }
//  public function findAll1($jcat_id)
//  {
//      return $this->tableGateway->getAdapter()->query('select * from a_jobs_jseeker as a  
//							join jobs_users as b on b.id = a.user_id	
//                                                        join b_jobcategory as c on a.jcat_id = c.jcat_id
//                                                        join a_company as d on d.com_id = c.com_id
//                                                        where d.com_id =211 AND c.jcat_id ='.$jcat_id,          
//							\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
//      
//       
//  }
  public function findAll3()
  {
       $ii = null;
       $us = array();
	   $sk = array();
       $dd = array();
       $sess = isset($_GET['sess']) ? $_GET['sess'] : "";
        if($sess != null){
            
        $ses = $this->tableGateway->getAdapter()->query("select com_id from jobs_session as a 
           join a_company as b on a.userid = b.user_id
           where a.session_id ='".$sess."'",          
           \Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
        foreach ($ses as $i){
            
        }
        $ii = $i->com_id;
        
        if($ii != null){
			//select skill
			$skill = $this->tableGateway->getAdapter()->query('select * from a_cv_skill',  
							\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
			
			//select job title
			
            $job = $this->tableGateway->getAdapter()->query("select * from b_job as b join b_jobcategory as a on b.jcat_id = a.jcat_id
                                                        join a_company as c on a.com_id = c.com_id
                                                        where c.com_id = ' ".$ii." ' ",  
							\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
            //select user, cv and cover letter
            $user = $this->tableGateway->getAdapter()->query("select * from a_jobs_jseeker as a  							join jobs_users as b on b.id = a.user_id	
                                                        join b_jobcategory as c on a.jcat_id = c.jcat_id
                                                        join a_company as d on d.com_id = c.com_id
                                                        
                                                        where c.jcat_id =a.jcat_id AND a.apply = 1 AND d.com_id = ' ".$ii." ' ",          
							\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
			foreach ($skill as $skil){
			
					$sk[] = $skil;
				//	var_dump($skil);
				
				
			}
            
             foreach ($user as $users){ 
				
					$us[] = $users;  
				 
             }   
			
            if($us != null){                
                foreach ($job as $j){                 
                    $dd[] = array('title'=> $j['job_title'],'jcat_id'=>$j['jcat_id'],'job_deadline'=>$j['job_deadline'],'us'=>$us, 'skill'=>$sk);
                }     
                return $dd;
            }
            return $us;
          }
       }
      return $ii;
  }
  //function select 
  public function findAll4($sess)
  {
     //  $sess = isset($_GET['sess']) ? $_GET['sess'] : "";
        //        echo $sess;
       $ses = $this->tableGateway->getAdapter()->query("select com_id from jobs_session as a 
           join a_company as b on a.userid = b.user_id
           where a.session_id ='".$sess."'",          
            \Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);  
       return $ses;     
  }
  public function cv($user_id){   
      $cv = $this->tableGateway->getAdapter()->query("select * from jobs_users as a 
          join a_cv as b on a.id = b.user_id
          
          where a.id = ' ".$user_id." '  "
              ,\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
      return $cv;
  }
  
  public function pdf($user_id,  $jcat){  
   
      $pdf = $this->tableGateway->getAdapter()->query("select * from jobs_users as a 
          join a_jobs_jseeker as b on a.id = b.user_id
          join a_js_data as c on c.jcat_id = b.jcat_id

          where c.jcat_id = ' ".$jcat. " ' AND a.id = ' ".$user_id." ' "
              ,\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
      return $pdf;
  }
  
  public function user(){  
        $user_id = $this->tableGateway->getAdapter()->query(" select com_id from a_company as a
                        join jobs_session as c on  c.userid =a.user_id"
              ,\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
      foreach ($user_id as $u){
    }
    return $u->com_id;;
  }
  public function dashboard()
  {
      $dashbo = array();
         $dash= $this->tableGateway->getAdapter()->query(" select statues from jobs_users"
              ,\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
      foreach ($dash as $dashboard){
        $dashbo[]=$dashboard;
      }
      return $dashbo;
  }
  // function count job seekers each jobs and company
  public function count(){
      $jc= $this->tableGateway->getAdapter()->query(" select jcat_id from a_jobs_jseeker as a
                  where a.apply= 1 "
              ,\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
      foreach ($jc as $j){
          $jj[]= $j;
      }
      return $jj;
  }
  //function select skill
    public function skill($id)
  {
      return $this->tableGateway->getAdapter()->query("select * from b_subject as b 
                                                        where b.cat_id = ' ".$id." '   ",  
							\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
}
 public function perskill()
  {
      return $this->tableGateway->getAdapter()->query("select * from b_subject as b 
                                                    ",  
							\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
}
}
