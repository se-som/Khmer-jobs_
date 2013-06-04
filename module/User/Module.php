<?php
namespace User;
use User\Model\Userdata;
use User\Model\UserdataTable;
use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;
use User\Model\Provider;
use User\Model\ProviderTable;
use User\Model\JobTable;
class Module
{
    public function getAutoloaderConfig()
    {
        return array(
            'Zend\Loader\ClassMapAutoloader' => array(
                __DIR__ . '/autoload_classmap.php',
            ),
            'Zend\Loader\StandardAutoloader' => array(
                'namespaces' => array(
                    __NAMESPACE__ => __DIR__ . '/src/' . __NAMESPACE__,
                ),
            ),
        );
    }

    public function getServiceConfig()
    {
        return array(
            'factories' => array(
                'User\Model\UserdataTable' =>  function($sm) {
                    $tableGateway = $sm->get('UserdataTableGateway');
                    $table = new UserdataTable($tableGateway);
                    return $table;
                },
                'UserdataTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Userdata());
                    return new TableGateway('a_cv', $dbAdapter, null, $resultSetPrototype);
                },
                        
                'User\Model\ProviderTable' =>  function($sm) {
                    $tableGateway = $sm->get('ProviderTableGateway');
                    $table = new ProviderTable($tableGateway);
                    return $table;
                },
                'ProviderTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Provider());
                    return new TableGateway('user_provider', $dbAdapter, null, $resultSetPrototype);
                },
                'User\Model\JobTable' =>  function($sm) {
                    $tableGateway = $sm->get('JobTableGateway');
                    $table = new JobTable($tableGateway);
                    return $table;
                },
                'JobTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
//                    $resultSetPrototype = new ResultSet();
//                    $resultSetPrototype->setArrayObjectPrototype(new Provider());
                    return new TableGateway('jobs', $dbAdapter, null);
                },
            ),
        );
    }
    
    public function getConfig()
    {
        return include __DIR__ . '/config/module.config.php';
    }
}