<?php
return array(
    
    
    
    'controllers' => array(
        'invokables' => array(
            'User\Controller\User' => 'User\Controller\UserController',
        ),
    ),
    'router' => array(
        'routes' => array(
            'user' => array(
                'type'    => 'segment',
                'options' => array(
                    'route'    => '/userdata',
                    'constraints' => array(
                        'action' => 'index',
                       
                    ),
                    'defaults' => array(
                        'controller' => 'User\Controller\User',
                        'action'     => 'index',
                    ),
                ),
            ),
            
            'information_form' => array(
                'type'    => 'segment',
                'options' => array(
                    'route'    => '/inforform',
                    'constraints' => array(
                        'action' => 'index',
                       
                    ),
                    'defaults' => array(
                        'controller' => 'User\Controller\User',
                        'action'     => 'inforform',
                    ),
                ),
            ),
            
            'showdb' => array(
                'type'    => 'segment',
                'options' => array(
                    'route'    => '/showdb',
                    'constraints' => array(
                        'action' => 'index',
                       
                    ),
                    'defaults' => array(
                        'controller' => 'User\Controller\User',
                        'action'     => 'showdb',
                    ),
                ),
            ),
            
            'insertdb' => array(
                'type'    => 'segment',
                'options' => array(
                    'route'    => '/insert',
                    'constraints' => array(
                        'action' => 'index',
                       
                    ),
                    'defaults' => array(
                        'controller' => 'User\Controller\User',
                        'action'     => 'insert',
                    ),
                ),
            ),
            
            'insertsub' => array(
                'type'    => 'segment',
                'options' => array(
                    'route'    => '/insertsub',
                    'constraints' => array(
                        'action' => 'insertsub',
                       
                    ),
                    'defaults' => array(
                        'controller' => 'User\Controller\User',
                        'action'     => 'insertsub',
                    ),
                ),
            ),
            'insertexp' => array(
                'type'    => 'segment',
                'options' => array(
                    'route'    => '/insertexp[/][:action][/:id]',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id'     => '[0-9]+',
                       
                    ),
                    
                    'defaults' => array(
                        'controller' => 'User\Controller\User',
                        'action'     => 'insertexp',
                    ),
                ),
            ),
            
            'updateexp' => array(
                'type'    => 'segment',
                'options' => array(
                    'route'    => '/updateexp/[:slug]',
                    'constraints' => array(
                        'action' => 'updateexp',
                       
                    ),
                    'slug' => '[a-zA-Z][a-zA-Z0-9_\/-]*',
                    'defaults' => array(
                        'controller' => 'User\Controller\User',
                        'action'     => 'updateexp',
                    ),
                ),
            ),
            'deleteexp' => array(
                'type'    => 'segment',
                'options' => array(
                    'route'    => '/deleteexp/[:slug]',
                    'constraints' => array(
                        'action' => 'deleteexp',
                       
                    ),
                    'slug' => '[a-zA-Z][a-zA-Z0-9_\/-]*',
                    'defaults' => array(
                        'controller' => 'User\Controller\User',
                        'action'     => 'deleteexp',
                    ),
                ),
            ),
            'insertedu' => array(
                'type'    => 'segment',
                'options' => array(
                    'route'    => '/insertedu',
                    'constraints' => array(
                        'action' => 'insertedu',
                       
                    ),
                    'defaults' => array(
                        'controller' => 'User\Controller\User',
                        'action'     => 'insertedu',
                    ),
                ),
            ),
            'updateedu' => array(
                'type'    => 'segment',
                'options' => array(
                    'route'    => '/updateedu/[:edu_id]',
                    'constraints' => array(
                        'action' => 'updateedu',
                    ),
                    'edu_id' => '[a-zA-Z][a-zA-Z0-9_\/-]*',
                    'defaults' => array(
                        'controller' => 'User\Controller\User',
                        'action'     => 'updateedu',
                    ),
                ),
            ),
            'deleteedu' => array(
                'type'    => 'segment',
                'options' => array(
                    'route'    => '/deleteedu/[:edu_id]',
                    'constraints' => array(
                        'action' => 'deleteedu',
                    ),
                    'edu_id' => '[a-zA-Z][a-zA-Z0-9_\/-]*',
                    'defaults' => array(
                        'controller' => 'User\Controller\User',
                        'action'     => 'deleteedu',
                    ),
                ),
            ),
            'showdetail' => array(
                'type'    => 'segment',
                'options' => array(
                    'route'    => '/showdetail[/][:id]',
                    'constraints' => array(
                        'action' => 'index',
                       
                    ),
                    'defaults' => array(
                        'controller' => 'User\Controller\User',
                        'action'     => 'showdetail',
                    ),
                ),
            ),
            
           
        ),
    ),
    
    'view_manager' => array(
        'template_path_stack' => array(
            'User' => __DIR__ . '/../view',
        ),
    ),
    
//    'view_manager' => array(
//        'display_not_found_reason' => true,
//        'display_exceptions'       => true,
//        'doctype'                  => 'HTML5',
//        'not_found_template'       => 'error/404',
//        'exception_template'       => 'error/index',
//        'template_map' => array(
//            'layout/layout'           => __DIR__ . '/../view/layout/layout.phtml',
//            'User/User/index' => __DIR__ . '/../view/User/User/index.phtml',
//            'error/404'               => __DIR__ . '/../view/error/404.phtml',
//            'error/index'             => __DIR__ . '/../view/error/index.phtml',
//        ),
//        'template_path_stack' => array(
//            __DIR__ . '/../view',
//        ),
//    ),
);