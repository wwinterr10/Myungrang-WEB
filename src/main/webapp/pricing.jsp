<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>세상에 아픈 개는 없다</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">


    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>

	<header>
		<jsp:include page="/component/navi.jsp" />
	</header>
    
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Pricing <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-0 bread">A price without bubbles</h1>
          </div>
        </div>
      </div>
    </section>

<!-- price section -->
    <section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row justify-content-center pb-5 mb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <h2>Medical Expenses</h2>
          </div>
        </div>
    		<div class="row">
    			<div class="col-md-4 ftco-animate">
	          <div class="block-7">
	          	<div class="img" style="background-image: url(images/price-1.jpg);"></div>
	            <div class="text-center p-4">
	            	<span class="excerpt d-block">VACCINATIONS</span>
	            	<span class="price"> <span class="number">10,000</span> <sub>원~</sub></span>
	            
		            <ul class="pricing-text mb-5">
		              <li><span class="fa fa-check mr-2"></span>심장사상충</li>
		              <li><span class="fa fa-check mr-2"></span>켄넬코프</li>
		              <li><span class="fa fa-check mr-2"></span>종합백신</li>
		              <li><span class="fa fa-check mr-2"></span>광견병</li>
		            </ul>

	            	<a href="${ pageContext.request.contextPath }/appointment.do" class="btn btn-primary d-block px-2 py-3">예약하기</a>
	            </div>
	          </div>
	        </div>
	        <div class="col-md-4 ftco-animate">
	          <div class="block-7">
	          	<div class="img" style="background-image: url(images/pricing-2.jpg);"></div>
	            <div class="text-center p-4">
	            	<span class="excerpt d-block">PET GROOMING</span>
		            <span class="price"> <span class="number">10,000</span> <sub>원~</sub></span>
		            
		            <ul class="pricing-text mb-5">
		              <li><span class="fa fa-check mr-2"></span>손발톱케어</li>
		              <li><span class="fa fa-check mr-2"></span>애견목욕</li>
		              <li><span class="fa fa-check mr-2"></span>애견미용</li>
		              <li><span class="fa fa-check mr-2"></span>토탈케어</li>
		            </ul>

		            <a href="${ pageContext.request.contextPath }/appointment.do" class="btn btn-primary d-block px-2 py-3">예약하기</a>
	            </div>
	          </div>
	        </div>
	        <div class="col-md-4 ftco-animate">
	          <div class="block-7">
	          	<div class="img" style="background-image: url(images/pricing-3.jpg);"></div>
	            <div class="text-center p-4">
	            	<span class="excerpt d-block">TREATMENT</span>
		            <span class="price"> <span class="number">30,000</span> <sub>원</sub></span>
		            
		            <ul class="pricing-text mb-5">
		              <li><span class="fa fa-check mr-2"></span>피부질환</li>
		              <li><span class="fa fa-check mr-2"></span>소화기계</li>
		              <li><span class="fa fa-check mr-2"></span>호흡기</li>
		              <li><span class="fa fa-check mr-2"></span>근골격계</li>
		            </ul>

		            <a href="${ pageContext.request.contextPath }/appointment.do" class="btn btn-primary d-block px-2 py-3">예약하기</a>
	            </div>
	          </div>
	        </div>
	      </div>
    	</div>
    </section>
<!-- end price section -->


	<footer>
		<%@ include file="/component/footer.jsp" %>
	</footer>

    
  

 
  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>


    
  </body>
</html>