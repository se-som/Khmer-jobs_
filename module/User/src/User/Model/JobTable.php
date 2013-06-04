<?php
namespace User\Model;
use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Db\Adapter\Adapter;
use Zend\Db\Sql\Sql;
use Zend\Db\Sql\Where;
use Zend\Db\TableGateway\TableGateway;

class JobTable extends AbstractTableGateway{
    protected $tableGateway='jobs';
    public function __construct(TableGateway $tableGateway) {
        $this->tableGateway = $tableGateway;
       
    }
    public function select_job(){
       $result = $this->tableGateway->select()
                                    ->join(array('u'=>'userdata'),'jobs.jobs_id=u.edu_fieldOfStudy');
       return $result;
       
    }
    
}

