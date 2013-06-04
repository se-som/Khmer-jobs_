<?php
namespace User\Model;
use Zend\Db\Adapter\Adapter;
use Zend\Db\TableGateway\AbstractTableGateway;

class DataTable extends AbstractTableGateway{
    protected $table='userdata';
    public function __construct(Adapter $adapter) {
        $this->adapter = $adapter;
        $this->initialize();
    }
}