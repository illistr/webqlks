<?php
session_start();
require_once('../../utils/utility.php');
require_once('../../database/dbhelper.php');

$user = getUserToken();
if($user == null) {
	die();
}

if(!empty($_POST)) {
	$action = getPost('action');

	switch ($action) {
		case 'delete':
			deleteCategory();
			break;
	}
}

function deleteCategory() {
    $id = getPost('id');
    $sql = "select * from room where category_id = '$id' and deleted = 0 ";
	$data = executeResult($sql, true);
	if (!empty($data)) {
		echo 'Danh mục đang chứa phòng, không được xóa';
		die();
	} 
	$sql = "delete from category where id = '$id'";
	execute($sql);
}