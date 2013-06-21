<?php
namespace KJ\Model;
use Zend\Db\TableGateway\TableGateway;

class SubjectTable
{
    protected $tableGateway;

    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
    }

    public function fetchAll()
    {
        $resultSet = $this->tableGateway->select();
       
        return $resultSet;
    }

    public function getSubject($sub_id)
    {
        $sub_id  = (int) $sub_id;
        $rowset = $this->tableGateway->select(array('sub_id' => $sub_id));
        $row = $rowset->current();
        if (!$row) {
            throw new \Exception("Could not find row $sub_id");
        }
        return $row;
    }

    public function saveSubject(Subject $subject)
    {
        $data = array(
            'cat_id' => $subject->cat_id,
            'sub_name' => $subject->sub_name,
        );
        
        $sub_id = (int)$subject->sub_id;
        if ($sub_id == 0) {
            $this->tableGateway->insert($data);
        } else {
            if ($this->getSubject($sub_id)) {
                $this->tableGateway->update($data, array('sub_id' => $sub_id));
            } else {
                throw new \Exception('Form id does not exist');
            }
        }
    }

    public function deleteSubject($sub_id)
    {
        $this->tableGateway->delete(array('sub_id' => $sub_id));
    }
}