<?php

/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2012 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */
namespace KJ;

return array(
	'router' => array(
		'routes' => array(
			'home' => array(
				'type' => 'Zend\Mvc\Router\Http\Literal',
				'options' => array(
					'route' => '/',
					'defaults' => array(
						'controller' => 'index',
						'action' => 'index',
					),
				),
				'may_terminate' => true,
				'child_routes' => array(
					'action' => array(
						'type' => 'Zend\Mvc\Router\Http\Segment',
						'options' => array(
							'route' => '[:action[/[:id]]]',
							'constraints' => array(
								'action' => '[a-zA-Z0-9_-]+',
								'entity' => '[a-zA-Z0-9_-]+',
							),
							'defaults' => array(
							),
						),
					),
					
					
				),
			),
			   'jobs' => array(
		'type' => 'Literal',
		'options' => array(
			'route' => '/jobs',
			'defaults' => array(
                             '__NAMESPACE__' => 'KJ\Controller',
				'controller' => 'Job',
				'action' => 'index',
			),
                ),
			),
			
			
			
		),
	),
	'service_manager' => array(
		'factories' => array(
			'translator' => 'Zend\I18n\Translator\TranslatorServiceFactory',
		),
	),
	'translator' => array(
		'locale' => 'en_US',
		'translation_file_patterns' => array(
			array(
				'type' => 'gettext',
				'base_dir' => __DIR__ . '/../language',
				'pattern' => '%s.mo',
			),
		),
	),
	'controllers' => array(
		'invokables' => array(
			'index' => __NAMESPACE__ . '\Controller\IndexController',
			'KJ\Controller\Job' => '\KJ\Controller\JobController'
		),
	),
		
	'view_manager' => array(
		'display_not_found_reason' => true,
		'display_exceptions' => true,
		'doctype' => 'HTML5',
		'not_found_template' => 'error/404',
		'exception_template' => 'error/index',
		'template_map' => array(
			'layout/layout' => __DIR__ . '/../view/layout/layout.phtml',
			'error/404' => __DIR__ . '/../view/error/404.phtml',
			'error/index' => __DIR__ . '/../view/error/index.phtml',
		),
		'template_path_stack' => array(
			__DIR__ . '/../view',
		),
	),
	// Doctrine config
	'doctrine' => array(
		'driver' => array(
			__NAMESPACE__ . '_driver' => array(
				'class' => 'Doctrine\ORM\Mapping\Driver\AnnotationDriver',
				'cache' => 'array',
				'paths' => array(__DIR__ . '/../src/' . __NAMESPACE__ . '/Entity')
			),
			'orm_default' => array(
				'drivers' => array(
					__NAMESPACE__ . '\Entity' => __NAMESPACE__ . '_driver'
				),
			),
		),
	),
);
