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
			deleteUser();
			break;
	}
}

function deleteUser() {
	$id = getPost('id');
	$sql = "DELETE FROM user WHERE id = '$id'";
	execute($sql);
}