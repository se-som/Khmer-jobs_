<?php
namespace User\Model;
use Zend\Db\TableGateway\TableGateway;

class UserdataTable extends TableGateway{
    protected $tableGateway;
    public function __construct(TableGateway $tableGateway) {
        $this->tableGateway=$tableGateway;
    }
    
    public function addtoDb(Userdata $userdata){
      $data = array(
            'user_id'=>$userdata->id,
            'first_name'  => $userdata->first_name,
            'last_name' => $userdata->last_name,
            'interest' => $userdata->interest,
            'pic_url' => $userdata->pic_url,
            'jobs_cate' =>$userdata->jobs_cate,
        );
      
        $id = $userdata->id;
        if ($this->getid($id)) {
             $this->tableGateway->update($data, array('user_id'=>$id));
        }else if(!$this->getid($id)){
            $this->tableGateway->insert($data);
        }
          
    }
   
    public function getid($id)
    {
        
        $rowset = $this->tableGateway->select(array('user_id' => $id));
        $row = $rowset->current();
        return $row;
    }
   
    public function showall($id)
    {
        $resultSet = $this->tableGateway->select(array('id' => $id));
        return $resultSet;
    }
    public function fetchAll()
    {
        $resultSet = $this->tableGateway->select();
        return $resultSet;
    }
    public function select_cat(){
      $adapter = $this->tableGateway->getAdapter();
      $sql = "SELECT * FROM b_category";

		$resultSet = $adapter->query($sql, \Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
		return $resultSet;
    }
    public function addtoexp($data){
        $adapter = $this->tableGateway->getAdapter();
        $sql = "insert into a_cv_exp(exp_position,exp_company,exp_date,exp_summary,user_id) 
                            value('".$data['exp_position']."','".$data['exp_company']."','".$data['exp_date']."','".$data['exp_summary']."','".$data['user_id']."')";
       $adapter->query($sql, \Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
 
    }
//    public function get_idexp($user_id){
//        $adapter = $this->tableGateway->getAdapter();
//        $sql = "select exp_id from a_cv_exp where user_id=".$user_id;
//        $exp_id = $adapter = $adapter->query($sql,  \Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
//        return $exp_id;
//    }
    public function updatetoexp($data){
//        var_dump($data);
        $adapter = $this->tableGateway->getAdapter();
        $sql = "update a_cv_exp set exp_position='".$data['exp_position']."',exp_company='".$data['exp_company']."',exp_date='".$data['exp_date']."',exp_summary='".$data['exp_summary']."' where exp_id='".$data['exp_id']."'";
        $adapter->query($sql, \Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
    }
    public function display_exp($user_id){
        $adapter = $this->tableGateway->getAdapter();
        $sql = "select * from a_cv_exp where user_id=".$user_id;
        $result = $adapter->query($sql, \Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
        return $result;
    }
    public function addtoedu($data){
        var_dump($data);
        $adapter = $this->tableGateway->getAdapter();
        $sql = "insert into a_cv_edu(edu_schoolName,edu_field,edu_date,edu_degree,edu_notes,edu_activities,user_id)
                   value('".$data['edu_schoolName']."','".$data['edu_field']."','".$data['edu_date']."','".$data['edu_degree']."','".$data['edu_notes']."','".$data['edu_activities']."','".$data['user_id']."')";
        $adapter->query($sql, \Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
    }
    public function display_edu($user_id){
        $adapter = $this->tableGateway->getAdapter();
        $sql = "select * from a_cv_edu where user_id=".$user_id;
        $result = $adapter->query($sql, \Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
        return $result;
    }

    public function addskill($data){
        $adapter = $this->tableGateway->getAdapter();
        $sql = "insert into a_cv_skill(skill_name,user_id) value ('".$data['skill']."','".$data['user_id']."')";
        $adapter->query($sql, \Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
    }
//    public function get_cv($sess){
//        $adapter = $this->tableGateway->getAdapter();
//        $sql = "select cv_id from a_cv,jobs_users,jobs_session where a_cv.user_id=jobs_users.id and jobs_session.userid=jobs_users.id and jobs_session.session_id='".$sess."'";
//        $resultset = $adapter->query($sql, \Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
//       return $resultset;
//    }
    public function get_js_id($sess){
//        echo $sess;
        $adapter = $this->tableGateway->getAdapter();
        $sql = "select id from jobs_users,jobs_session where jobs_users.id=jobs_session.userid and jobs_session.session_id ='".$sess."'";
        $resultset = $adapter->query($sql, \Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
        return $resultset;
    }
    public function insert_sub($data){
        $adapter = $this->tableGateway->getAdapter();
        $sql = "insert into a_cv(last_name,first_name,interest,pic_url,user_id,jobs_cate) 
                value ('".$data['last_name']."','".$data['first_name']."','".$data['interest']."','".$data['pic_url']."','".$data['user_id']."','".$data['jobs_cate']."')";
        $adapter->query($sql, \Zend\Db\Adapter\Adapter::QUERY_MODE_EXECUTE);
    }
    
}