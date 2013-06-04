<?php
namespace User\Model;
use Zend\Db\TableGateway\TableGateway;

class ProviderTable{
    protected $tableGateway;
    public function __construct(TableGateway $tableGateway) {
        $this->tableGateway=$tableGateway;
    }
    public function getUserId($providerId){
        $user_id = $this->tableGateway->select(array('provider_id'=>$providerId));
       return $user_id->current();
    }
}
?>
