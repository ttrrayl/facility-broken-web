<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Login');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Login::index');
$routes->post('/api/report', 'Admin\Report::create');
$routes->get('/api/report/(:num)', 'Admin\Report::getReport/$1');
$routes->put('/api/report/(:num)', 'Admin\Report::edit/$1');
$routes->delete('/api/report/(:num)', 'Admin\Report::delete/$1');
$routes->get('/api/report', 'Admin\Report::listReports');
$routes->get('/api/building', 'Admin\Report::listBuilding');
$routes->get('/api/classes', 'Admin\Report::listClasses');
$routes->get('/api/detail_facil', 'Admin\Report::listDetailFacil');

$routes->group("api", function ($routes) {
    $routes->post("register", "StudentRegister::index");
    $routes->post("login", "StudentLogin::index");
    $routes->get(
        "register",
        "User::index",
        ['filter' => 'authFilter']
    );
});

/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
