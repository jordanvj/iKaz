<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>iKAZ Shoppe | ${title}</title>
<script>
	window.menu = '${title}';
</script>
<link href="${css}/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="${css}/slider.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="${js}/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${js}/move-top.js"></script>
<script type="text/javascript" src="${js}/easing.js"></script>
<script type="text/javascript" src="${js}/startstop-slider.js"></script>
<script type="text/javascript" src="${js}/myapp.js"></script>
<script type="text/javascript" src="${js}/jquery.accordion.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#posts").accordion({ 
			header: "div.tab", 
			alwaysOpen: false,
			autoheight: false
		});
	});
</script>
</head>
<body>
	<!-- Header and Top section starts here -->
	<div class="wrap">
		<div class="header">
			<%@include file="./shared/navbar.jsp"%>

			<!-- Header and Top section ends here -->
			<!-- Header Bottom Section start here -->

			<%@include file="navBottom.jsp"%>
			<!-- header bottom section ends here -->

		</div>
		<!-- Header ends -->

		<!-- Main Section COntent starts -->
		<c:if test="${userClickHome == true}">
			<%@include file="home.jsp"%>
		</c:if>

		<!-- Load only on clicking  about -->
		<c:if test="${userClickAbout == true}">
			<%@include file="about.jsp"%>
		</c:if>

		<!-- Load only on clicking  delivery -->
		<c:if test="${userClickDelivery == true}">
			<%@include file="delivery.jsp"%>
		</c:if>

		<!-- Load only on clicking  news -->
		<c:if test="${userClickNews == true}">
			<%@include file="news.jsp"%>
		</c:if>

		<!-- Load only on clicking  contact -->
		<c:if test="${userClickContact == true}">
			<%@include file="contact.jsp"%>
		</c:if>
	</div>
	<!-- Footer section start  -->
	<%@include file="./shared/footer.jsp"%>
	<!-- Footer ends -->
	<script type="text/javascript">
		$(document).ready(function() {
			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<a href="#" id="toTop"><span id="toTopHover"> </span></a>
</body>
</html>

