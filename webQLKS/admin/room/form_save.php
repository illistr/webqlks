<?php
if(!empty($_POST)) {
	$id = getPost('id');
	$title = getPost('title');
	
	$price = getPost('price');
	$discount = getPost('discount');
	
	$thumbnail = moveFile('thumbnail');

	$description = getPost('description');
	$category_id = getPost('category_id');
	$status = getPost('status');
	$created_at = $updated_at = date('Y-m-d H:s:i');

	if($id > 0) {
		//update
		if($thumbnail != '') {
			$sql = "update Room set thumbnail = '$thumbnail', title = '$title', price = $price, discount = $discount, description = '$description', updated_at = '$updated_at', category_id = '$category_id', statuss = '$status' where id = $id";
		} else {
			$sql = "update Room set title = '$title',price = $price, discount = $discount, description = '$description', updated_at = '$updated_at', category_id = '$category_id', statuss = '$status' where id = $id";
		}
		
		execute($sql);

		header('Location: index.php');
		die();
	} else {
		//insert
		$sql = "insert into Room(thumbnail, title , price, discount, description, updated_at, created_at, deleted, category_id) values ('$thumbnail', '$title', '$price', '$discount', '$description', '$updated_at', '$created_at', 0, $category_id)";
		execute($sql);

		header('Location: index.php');
		die();
	}
}