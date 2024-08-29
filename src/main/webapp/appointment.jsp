<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
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
    
 <script>
<c:if test="${not empty msg}">
 	alert('${msg}');
</c:if>
 </script>
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
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Appointment <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-0 bread">Select the services and dates you want</h1>
          </div>
        </div>
      </div>
    </section>
    
<!-- service section -->
   <section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row mb-5 pb-5">
          <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
            <div class="d-block services text-center">
              <div class="icon d-flex align-items-center justify-content-center">
            		<span class="flaticon-blind"></span>
              </div>
              <div class="media-body p-4">
                <h3 class="heading">Dog Walking</h3>
                <p>강아지의 스트레스 해소, 산책으로부터!<br>
                스트레스 관리가 잘 된 강아지일수록 문제행동도 적어진다는 점, 알고 계신가요?<br>
                강아지의 활동량을 채워주기 위해서나 실외배변을 위해서도 산책은 필수적이죠.<br>
                산책 방법부터 산책 시 문제행동 교정까지 저희 명랑한도그가 책임집니다</p>
                <a href="#" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Read more</i></a>
              </div>
            </div>      
          </div>
          <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
            <div class="d-block services text-center">
              <div class="icon d-flex align-items-center justify-content-center">
            		<span class="flaticon-dog-eating"></span>
              </div>
              <div class="media-body p-4">
                <h3 class="heading">Pet Daycare</h3>
                <p>강아지도 가끔 힘들때가 있답니다...<br>
                하루 이틀 입맛이 없어서 사료를 먹지 않아도 크게 걱정하지 마세요.
                특히 예방접종 이후 혹은 스트레스 받는 상황에 놓인 뒤에는 강아지도 입맛이 없을 수 있답니다.
                그러나 사흘 이상을 넘어간다면 그땐 어딘가 건강이 좋지 않다는 신호!
                늦기 전에 예약하고 병원을 방문하세요</p>
                <a href="#" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Read more</i></a>
              </div>
            </div>    
          </div>
          <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
            <div class="d-block services text-center">
              <div class="icon d-flex align-items-center justify-content-center">
            		<span class="flaticon-grooming"></span>
              </div>
              <div class="media-body p-4">
                <h3 class="heading">Pet Grooming</h3>
                <p>강아지 미용, 오로지 예뻐보이기 위해서?<br>
                정답은 NO! 위생을 위해서 하는 위생미용에 대해 들어보셨나요?
                배, 생식기, 항문 등의 부분미용은 주기적으로 해주셔야 합니다.
                혼자서 힘들다면 전문가에게 맡겨보세요.
                강아지 목욕부터 미용, 손발톱 케어까지 명랑한도그에서는 토탈케어로 끝~
                </p>
                <a href="#" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Read more</i></a>
              </div>
            </div>      
          </div>
        </div>
        <div class="row mt-5 pt-4">
        	<div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
            <div class="d-block services text-center">
            </div>      
          </div>
        </div>
    	</div>
    </section>

<!-- appointment section -->
    <section class="ftco-appointment ftco-section ftco-no-pt ftco-no-pb img" style="background-image: url(images/bg_3.jpg);">
			<div class="overlay"></div>
    	<div class="container">
    		<div class="row d-md-flex justify-content-end">
    			<div class="col-md-12 col-lg-6 half p-3 py-5 pl-lg-5 ftco-animate">
    				<h2 class="mb-4">Booking Service</h2>
    				<!-- <form action="insertAppControll" method="post"> -->
    				<form name="appointmentForm" action="appointmentClick.do" method="post">
    					<div class="row">
    						<div class="col-md-12">
									<div class="form-group">
			    					<div class="form-field">
	          					<div class="select-wrap">
	                      <div class="icon"><span class="fa fa-chevron-down"></span></div>
	                      <select name="dog" id="" class="form-control dog">
	                      	<option value="">Select pet</option>
	                      <c:forEach items="${ loginUser.dogList }" var="mydog">
	                      	<option value="${ mydog.name }">${ mydog.name }</option>
	                      	<!-- 
	                        <option value="">등록된 정보가 없으면 마이페이지-강아지등록창으로</option>
	                         -->
	                      </c:forEach>
	                      </select>
	                    </div>
			              </div>
			    				</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
			              <input type="text" class="form-control"  name="name" value="${loginUser.name}">
			            </div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
			              <input type="text" class="form-control"  name="phone" value="${loginUser.phone}">
			            </div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
			    					<div class="input-wrap">
			            		<div class="icon"><span class="fa fa-calendar"></span></div>
			            		<input type="text" class="form-control appointment_date" name="date" placeholder="Date">
		            		</div>
			    				</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
			    					<div class="input-wrap">
			            		<div class="icon"><span class="fa fa-clock-o"></span></div>
			            		<input type="text" class="form-control appointment_time" name="time" placeholder="Time">
		            		</div>
			    				</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
			              <input type="submit" value="Make an appointment" class="btn btn-primary py-3 px-4">
			            </div>
								</div>
    					</div>
	          </form>
    			</div>
    		</div>
    	</div>
    </section>

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