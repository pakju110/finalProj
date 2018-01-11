<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div class="swiper-container">
	<!--20160415 이미지 슬라이더-->
	<div class="device">
		<div class="swiper-container swiper2">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img src="images/b1.png">
				</div>
				<div class="swiper-slide">
					<img src="images/b2.png">
				</div>
				<div class="swiper-slide both">
					<img src="images/b3.png">
				</div>

			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	var swiper = new Swiper('.swiper-container', {
		loop : true,
		slidesPerView : 1,
		paginationClickable : true,
		spaceBetween : 30
	});
</script>
