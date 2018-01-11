<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="bx_cf">
	<div class="bx_cfcon">
		<div class="h">여기여 추천가게</div>
		<div class="swiper-container">
			<!--20160415 이미지 슬라이더-->
			<div class="device">
				<div class="swiper-container swiper2">
					<div class="swiper-wrapper">
						<c:forEach items="${data.cflist }" var="cf">
							<div class="swiper-slide"><img src="../../../resources/cf/${cf.cf_sysimg }" width="180px" height="240px"></div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	var swiper = new Swiper('.swiper-container', {
		loop : true,
		autoplay : 2000,
		slidesPerView : 1,
		paginationClickable : true,
		spaceBetween : 30
	});
</script>
