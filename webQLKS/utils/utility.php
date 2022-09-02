<?php
// insert into Role(name) values ('Admin');
function fixSqlInject($sql) {
	$sql = str_replace('\\', '\\\\', $sql);
	$sql = str_replace('\'', '\\\'', $sql);
	return $sql;
}

function getGet($key) {
	$value = '';
	if(isset($_GET[$key])) {
		$value = $_GET[$key];
		$value = fixSqlInject($value);
	}
	return trim($value);
}

function getPost($key) {
	$value = '';
	if(isset($_POST[$key])) {
		$value = $_POST[$key];
		$value = fixSqlInject($value);
	}
	return trim($value);
}

function getRequest($key) {
	$value = '';
	if(isset($_REQUEST[$key])) {
		$value = $_REQUEST[$key];
		$value = fixSqlInject($value);
	}
	return trim($value);
}

function getCookie($key) {
	$value = '';
	if(isset($_COOKIE[$key])) {
		$value = $_COOKIE[$key];
		$value = fixSqlInject($value);
	}
	return trim($value);
}
 function getSecurityMD5($pwd) {
return md5(md5($pwd).PRIVATE_KEY);
}
function getUserToken(){
if (isset($_SESSION['user'])) // nếu user tồn tại 
	{
 		return $_SESSION['user']; // người dùng đang đăng nhập thành công -> return về thông tin tài khoản người dùng

	}
	else // session hết hạn nhưng token vẫn được lưu
 	{
 		$token = getCookie('token');
 		$sql = "SELECT * from token where token = '$token'"; // truyển token để tự động login
		$item = executeResult($sql,true); // check xem có thành công hay không để lấy tài khoản người dùng
				if ($item != null){
			$userId = $item['user_id'];
		$sql = "SELECT * from user where id = '$userId' and deleted = 0";
		$item = executeResult($sql,true);
			if($item!= null)		
				{
		$_SESSION['user'] = $item; // kết nối thành công
		return $item; 
		}
	}
	}
 }
 function moveFile($key, $rootPath = "../../") {
	if(!isset($_FILES[$key]) || !isset($_FILES[$key]['name']) || $_FILES[$key]['name'] == '') {
		return '';
	}

	$pathTemp = $_FILES[$key]["tmp_name"];

	$filename = $_FILES[$key]['name'];
	//filename -> remove special character, ..., ...

	$newPath="assets/photos/".$filename;

	move_uploaded_file($pathTemp, $rootPath.$newPath);

	return $newPath;
}

function fixUrl($thumbnail, $rootPath = "../../") {
	if(stripos($thumbnail, 'http://') !== false || stripos($thumbnail, 'https://') !== false) {
	} else {
		$thumbnail = $rootPath.$thumbnail;
	}

	return $thumbnail;
}