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
 
  public function findAll()
  {
      return $this->tableGateway->getAdapter()->query('select * from b_job as b 
                                                        join b_jobcategory as a on b.jcat_id = a.jcat_id
                                                        join a_company as c on a.com_id = c.com_id
                                                        where c.com_id = 211',  
							\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
  }
  public function findAll1($jcat_id)
  {
      return $this->tableGateway->getAdapter()->query('select * from a_jobs_jseeker as a  
														join jobs_users as b on b.id = a.user_id	
                                                        join b_jobcategory as c on a.jcat_id = c.jcat_id
                                                        join a_company as d on d.com_id = c.com_id
                                                        where d.com_id =211 AND c.jcat_id ='.$jcat_id,          
							\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
      
       
  }
   public function findAll3()
  {
       $ii = null;
       $us = array();
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
            $job = $this->tableGateway->getAdapter()->query("select * from b_job as b join b_jobcategory as a on b.jcat_id = a.jcat_id
                                                        join a_company as c on a.com_id = c.com_id
                                                        where c.com_id = ' ".$ii." ' ",  
							\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
            
            $user = $this->tableGateway->getAdapter()->query("select * from a_jobs_jseeker as a  							join jobs_users as b on b.id = a.user_id	
                                                        join b_jobcategory as c on a.jcat_id = c.jcat_id
                                                        join a_company as d on d.com_id = c.com_id
                                                        
                                                        where c.jcat_id =a.jcat_id AND d.com_id = ' ".$ii." ' ",          
							\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
            
             foreach ($user as $users){          
                $us[] = $users;   
             }         
            if($us != null){                
                foreach ($job as $j){                 
                    $dd[] = array('title'=> $j['job_title'],'jcat_id'=>$j['jcat_id'],'us'=>$us);
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

  


















































































  public function qfindAll()
  {
	  return $this->tableGateway->getAdapter()->query('select * from b_job as b join a_jobs_jseeker as a on b.job_id = a.jobs_id
						
                                                        join a_company as c on a.com_id = c.com_id
                                                        where c.com_id = 211',  
							\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
  }

  public function xxfindAll()
  {
	  return $this->tableGateway->getAdapter()->query('select * from b_job as b join a_jobs_jseeker as a on b.job_id = a.jobs_id
							join jobs_users as d on a.user_id = d.id
                                                        join a_company as c on a.com_id = c.com_id',  
							\Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
  }



  public function aaafindAll(){
    return $this->tableGateway->getAdapter()->query('select * from b_category as c join b_jobcategory as jc on c.cat_id = jc.cat_id
join a_company as com on com.com_id = jc.com_id
join b_job as j on j.jcat_id = jc.jcat_id', \Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
  }
  public function dfindAll()
  {
	  return $this->tableGateway->getAdapter()->query('select * from b_job as b join b_jobcategory as a on a.jcat_id = b.jcat_id
							join a_company as c on a.com_id = c.com_id',
			  \Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
  }
}
