<?php
if (!defined('ABSPATH')) define('ABSPATH', str_replace('\\', '/', dirname(__FILE__)) . '/');

$tempPath1 = explode('/', str_replace('\\', '/', dirname($_SERVER['SCRIPT_FILENAME'])));
$tempPath2 = explode('/', substr(ABSPATH, 0, -1));
$tempPath3 = explode('/', str_replace('\\', '/', dirname($_SERVER['PHP_SELF'])));

for ($i = count($tempPath2); $i < count($tempPath1); $i++)
    array_pop ($tempPath3);

$urladdr = $_SERVER['HTTP_HOST'] . implode('/', $tempPath3);

if ($urladdr{strlen($urladdr) - 1}== '/')
    define('URLADDR', 'http://' . $urladdr);
else
    if (!defined('URLADDR')) define('URLADDR', 'http://' . $urladdr . '/');
unset($tempPath1, $tempPath2, $tempPath3, $urladdr);

class catsadmin {
    private $pdoConn = null;
    public function __construct() {
        $this->_initDb();
    }
    public function getPDOConn() {
        return $this->pdoConn;
    }
    private function _initDb() {
        $this->pdoConn = new \PDO('mysql:dbname=catsadmin;host=localhost;charset=utf8', 'root', '');
        $this->pdoConn->exec("set names utf8");
        $this->pdoConn->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
        $this->pdoConn->setAttribute(\PDO::ATTR_EMULATE_PREPARES, false);
    }
    public function query($query, $params = [], $fetch_method = 'OBJ', $class = '') {
        //public function query($query, $params = array(), $fetch_method = 'OBJ', $class = '') {
        $stmt = $this->pdoConn->prepare($query);
        $result = $stmt->execute($params);
        if ($result) {
            $querybit = explode(" ", trim($query));
            if ($querybit[0] == 'SELECT') {
                if (strtoupper($fetch_method) === 'CLASS') {
                    $ret = $stmt->fetchAll(constant('PDO::FETCH_CLASS'), $class);
                } else {
                    $ret = $stmt->fetchAll(constant('PDO::FETCH_' . strtoupper($fetch_method)));
                }
            } else {
                $ret = TRUE;
            }
        }
        return !empty($ret) ? $ret : null;
    }
    public function getLastInsertedId() {
        return $this->pdoConn->lastInsertId();
    }
    public function generatePlaceholders ($array) {
        return rtrim(str_repeat('?,', count($array)), ',');
    }
}