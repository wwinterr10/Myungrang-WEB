<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 

<c:choose>
	<c:when test="${memberVO.admin eq 'A'}">
		운영자 대쉬보드메뉴
	</c:when>
	<c:otherwise>
		일반유저메뉴
	</c:otherwise>
</c:choose>

 -->
<!-- user nav -->
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	    	<a class="navbar-brand" href="${ pageContext.request.contextPath }/index.do"><img src="/DogWorld-WEB/images/myungrang.jpg"></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="fa fa-bars"></span> Menu
	      </button>
	      <!-- 홈, 의사소개, 예약, 연락처, 마이페이지-->
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	        	<li class="nav-item active"><a href="${ pageContext.request.contextPath }/index.do" class="nav-link">Home</a></li><!-- 홈 -->
				<li class="nav-item"><a href="${ pageContext.request.contextPath }/vet.do" class="nav-link">Veterinarian</a></li><!-- 수의사 정보 -->
	          <li class="nav-item"><a href="${ pageContext.request.contextPath }/pricing.do" class="nav-link">Pricing</a></li><!-- 가격, start누르면 예약페이지이동-->
	        	<li class="nav-item"><a href="${ pageContext.request.contextPath }/appointment.do" class="nav-link">Appointment</a></li><!-- 예약 -->
	          <li class="nav-item"><a href="${ pageContext.request.contextPath }/contact.do" class="nav-link">Contact</a></li><!-- FAQ, 문의사항, 연락처, 찾아오는길 -->
	          <!-- <li class="nav-item dropdown"><a href="${ pageContext.request.contextPath }/mypage.do" class="nav-link">My Page</a></li> -->
	           <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="${ pageContext.request.contextPath }/mypage.do" id="navbarDropdownMenuLink">
	          		My Page
	          	</a>
	          	<ul class="dropdown-menu dropduwn-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
	          		<li><a class="dropdown-item" href="${ pageContext.request.contextPath }/mypage.do">Update Info</a></li>
	          		<li><a class="dropdown-item" href="${ pageContext.request.contextPath }/updateMydog.do">My Dog</a></li>
	          		<li><a class="dropdown-item" href="${ pageContext.request.contextPath }/viewReservations.do">My Reservations</a></li>
	          		<li><a class="dropdown-item" href="${ pageContext.request.contextPath }/logout.do">Logout</a></li>
	          	</ul>
	          </li><!-- 마이페이지 -->
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->