<footer style="background-color: #81d742 !important;">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<h4>GIỚI THIỆU</h4>
				<ul>
					<li>LIÊN HỆ KHÁCH SẠN LOURVE</li>
					<li><i class="bi bi-mailbox2"></i> lourve2@gmail.com</li>
					<li><i class="bi bi-telephone-fill"></i> 123456789</li>
					<li><i class="bi bi-map-fill"></i> Ha Noi, Viet Nam</li>
					<li>Khách hàng có thể sẽ quên những điều bạn làm, nhưng họ sẽ không bao giờ quên những cảm nhận mà bạn đã mang đến cho họ.</li>
				</ul>
			</div>
			<div class="col-md-4">
				<h4>THÔNG TIN</h4>
				<ul>
					<li>LIÊN HỆ KHÁCH SẠN LOURVE</li>
					<li>Fax: (+84.28) 39257766</li>
					<li>Tel: (+84.28) 39257777</li>
					<li>Những khách hàng không hài lòng với sản phẩm, dịch vụ mà bạn cung cấp sẽ là nguồn tư liệu học hỏi tuyệt vời dành cho bạn.</li>
				</ul>
			</div>
			<div class="col-md-4">
						<h4>MÃ QR </h4>
						<div class="footer__download">
							<img src="https://i.pinimg.com/originals/31/4e/e3/314ee36075000fd2b5c56929074b7f25.png" class="footer__download-qr">
							
						</div>

					</div>
		</div>
	</div>
	<div style="background-color: #3f9609; width: 100%; text-align: center; padding: 20px;">
		© 2021 LOURVE HOTEL. All rights reserved.
	</div>
</footer>

<?php
if(!isset($_SESSION['cart'])) {
	$_SESSION['cart'] = [];
}
$count = 0;
// var_dump($_SESSION['cart']);
if(isset($_SESSION['cart'])){
foreach($_SESSION['cart'] as $item) {
	$count += $item['num'];
}}
?>
<script type="text/javascript">
	function addCart(productId, num) {
		$.post('api/ajax_request.php', {
			'action': 'cart',
			'id': productId,
			'num': num
		}, function(data) {
			location.reload()
		})
	}
</script>
<!-- Cart start -->
<span class="cart_icon">
	<span class="cart_count"><?=$count?></span>
	<a href="cart.php"><img src="https://icons.iconarchive.com/icons/fps.hu/free-christmas-flat-circle/256/home-icon.png"></a>
</span>
<!-- Cart stop -->
</body>
</html>