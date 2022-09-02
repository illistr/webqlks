<?php 
require_once('layouts/header.php');
unset($_SESSION['cart']);
?>
<div class="container" style="margin-top: 20px; margin-bottom: 20px;">
	<div class="row">
		<div class="col-md-12" style="text-align: center;">
			<h1 style="color: green">BẠN ĐÃ ĐẶT PHÒNG THÀNH CÔNG!!!</h1>
			<h4>Cảm ơn quý khách đã đặt phòng ở khách sạn chúng tôi !
Hóa đơn của quý khách sẽ được gửi đến cho quý khách trong thời gian sớm nhất.</h4>
			<a href="index.php"><button class="btn btn-success" style="border-radius: 0px; font-size: 26px;">TIẾP TỤC MUA HÀNG</button></a>
		</div>
	</div>
</div>
<?php
require_once('layouts/footer.php');
?>