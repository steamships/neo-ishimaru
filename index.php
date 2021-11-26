<?php
require_once 'vendor/autoload.php';

ini_set('date.timezone', 'Asia/Tokyo');
define('MY_TITLE', 'TEST');

// componentを結合して.tpl生成
$components = parse_ini_file('components.ini');
foreach( $components as $name => $data ) {
	$str = '';
	foreach( $data as $file ) {
		$str .= file_get_contents( "./component/{$file}.tpl" );
	}
	file_put_contents( "./templates/{$name}.tpl", $str );
}

$smarty = new Smarty();
$smarty->setTemplateDir('./templates/');

// デリミタをカラーミーに合わせる
$smarty->left_delimiter = '<{';
$smarty->right_delimiter = '}>';

// 変数名をカラーミーに合わせる
$tpl = isset($_GET['p']) ? "{$_GET['p']}.tpl": 'top.tpl';
$smarty->assign('file_name', $tpl);
$colorme = json_decode(file_get_contents('colorme.json'), true);
foreach ( $colorme as $key=>$val ) {
	$smarty->assign($key, $val);
}

$smarty->display('index.tpl');
