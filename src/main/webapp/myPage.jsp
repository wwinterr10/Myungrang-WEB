<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>세상에 아픈 개는 없다</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">
<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/style.css">

<style>
/* 모달 배경 */
.madal {
  display: none;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0,0.4);
  padding-top: 60px;
}

/* 모달 콘텐츠 */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
  max-width: 500px;
  border-radius: 10px;
}

/* 닫기 버튼 */
.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}


.section {
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
	width: 600px;
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
}

h2 {
	text-align: center;
	width: 100%;
}

.content {
	text-align: center;
}

table {
	width: 80%;
	border-collapse: collapse;
	margin: 0 auto;
	font-size: 18px;
	text-align: center;
}

th, td {
	padding: 12px;
	border-bottom: 1px solid #ddd;
	text-align: center;
}

th {
	background-color: #f2f2f2;
}

.button-container {
	text-align: center;
	padding: 20px 0;
}

.button-container button {
	background-color: #4CAF50;
	color: white;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
	margin: 0 10px;
}

.button-container button:hover {
	background-color: #45a049;
}

.styled-button {
	background-color: #4CAF50;
	color: white;
	border: none;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 8px;
	transition-duration: 0.4s;
}

.styled-button:hover {
	background-color: white;
	color: black;
}

#updateBtn {
	display: inline-block;
}

.hidden {
	display: none;
}

label, input {
	display: block;
	margin-bottom: 10px;
	width: 100%;
}

input[type="submit"] {
	width: auto;
}

.no-data {
	text-align: center;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	function showSection(sectionId) {
	    var modal = document.getElementById(sectionId);
	    modal.style.display = "block";
	}
	
	function closeModal(sectionId) {
	    var modal = document.getElementById(sectionId);
	    modal.style.display = "none";
	}
	
	window.onclick = function(event) {
	    if (event.target.className === 'modal') {
	        event.target.style.display = "none";
	    }
	}
	function showPasswordConfirmation() {
	    document.getElementById('infoSection').classList.add('hidden');
	    document.getElementById('passwordConfirmationSection').classList.remove('hidden');
	}
	
	function checkPassword() {
	    const currentPassword = document.getElementById('currentPassword').value;
	    // 비밀번호 검증 로직 (임의로 설정)
	    const validPassword = "1234";
	    
	    if (currentPassword === validPassword) {
	        document.getElementById('passwordConfirmationSection').classList.add('hidden');
	        document.getElementById('editFormSection').classList.remove('hidden');
	    } else {
	        alert('비밀번호가 일치하지 않습니다.');
	    }
	}
	
    function changeDate(no) {
       const newDate = prompt("변경하실 날짜를 입력하세요 (예: 2024-10-02):");
       if (newDate) {
           const xhr = new XMLHttpRequest();
           xhr.open("POST", "changeDate.do", true);
           xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
           xhr.onreadystatechange = function () {
               if (xhr.readyState == 4 && xhr.status == 200) {
                   alert("날짜가 성공적으로 변경되었습니다.");
                   location.reload();
               }
           };
           xhr.send("newDate=" + encodeURIComponent(newDate) + "&no=" + encodeURIComponent(no));
       }
   }

	function deleteAppointment(no) {
        const xhr = new XMLHttpRequest();
        xhr.open("POST", "deleteAppointment.do", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.send("&no=" + encodeURIComponent(no));
        if (xhr.readyState == 4 && xhr.status == 200) {
            alert("예약이 취소되었습니다.");
            location.reload();
        }
    }

    function confirmDelete(healthNo) {
        if (confirm("정말 삭제할까요?")) {
            $.ajax({
                url: 'deleteDogHealthInfo.do',
                type: 'POST',
                data: { healthNo: healthNo },
                success: function(response) {
                    if (response.status === 'success') {
                        alert(response.message); // 삭제 성공 메시지 표시
                        $('#healthRow_' + healthNo).remove(); // 삭제한 행을 화면에서 제거
                    } else {
                        alert(response.message); // 삭제 실패 메시지 표시
                    }
                },
                error: function(error) {
                    alert("서버 오류가 발생하였습니다.");
                }
            });
        }
    }

</script>
</head>
<body>
	<header>
		<jsp:include page="/component/navi.jsp" />
	</header>


	<!-- 내 정보 확인, 수정 섹션 -->
	<section id="myInfo">
		<c:set var="uri" value="${requestScope['javax.servlet.forward.request_uri']}" />
		<c:if test="${fn:endsWith(uri, 'mypage.do') }">
		<div class="content">
			<!-- 내 정보 보기 섹션 -->
			<div id="infoSection">
				<h2>My Information</h2>
				<table>
					<tbody>
						<tr>
							<th>아이디</th>
							<td>${loginUser.id}</td>
						</tr>
						<tr>
							<th>이름</th>
							<td>${loginUser.name}</td>
						</tr>
						<tr>
							<th>생일</th>
							<td>${loginUser.birthDate}</td>
						</tr>
						<tr>
							<th>연락처</th>
							<td>${loginUser.phone}</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>${loginUser.basicAddr}</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>${loginUser.email}</td>
						</tr>
						<tr>
							<th>회원등급</th>
							<td>${loginUser.grade}</td>
						</tr>
					</tbody>
				</table>
				<div class="button-container">
					<button type="button" class="styled-button" id="updateBtn"
						onclick="showPasswordConfirmation()">회원정보 수정</button>
				</div>
			</div>

			<!-- 비밀번호 확인 섹션 -->
			<div id="passwordConfirmationSection" class="section hidden">
				<h2>Checking Correct Password</h2>
				<label for="currentPassword">Current Password:</label> <input
					type="password" id="currentPassword" name="currentPassword"><br>
				<button type="button" class="styled-button"
					onclick="checkPassword()">확인</button>
			</div>

			<!-- 수정 폼 섹션 -->
			<div id="editFormSection" class="section hidden">
				<h2>Edit My Information</h2>
				<form action="updateMyInfo.do" method="post">
					<label for="name">이름:</label> <input type="text" id="name"
						name="name" value="${loginUser.name}"><br> <label
						for="name">비밀번호:</label> <input type="text" id="password"
						name="password" value="${loginUser.password}"><br> <label
						for="birthday">생일:</label> <input type="date" id="birthday"
						name="birthday" value="${loginUser.birthDate}"><br> <label
						for="contact">연락처:</label> <input type="text" id="contact"
						name="contact" value="${loginUser.phone}"><br> <label
						for="address">주소:</label> <input type="text" id="address"
						name="address" value="${loginUser.basicAddr}"><br> <label
						for="email">이메일:</label> <input type="email" id="email"
						name="email" value="${loginUser.email}"><br> <input
						type="submit" value="회원정보수정" class="styled-button">
				</form>
			</div>
		</div>
		</c:if>
	</section>


	<!-- 강아지 정보 확인 섹션 -->
	<!-- 일반:강아지 정보, 강아지 진료기록 확인 -->
	<!-- 운영자:강아지 정보, 강아지 진료기록 확인, 강아지 정보 등록, 강아지 진료기록 등록 -->
	<section id="myDog">
	<c:if test="${fn:endsWith(uri, 'updateMydog.do') }">
		<div id="myDogSection">
		<c:if test="${ empty loginUser.admin }">
			<h2>My Dog Information</h2>
			<table>
				<thead>
					<tr>
						<th>진료번호</th>
						<th>이름</th>
						<th>방문일</th>
						<th>진단명</th>
						<th>특이사항</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${ not empty loginUserDogHealth }">
						<c:forEach items="${ loginUserDogHealth }" var="healthList">
							<tr>
								<td>${ healthList.no }</td>
								<td>${ healthList.dogName }</td>
								<td>${ healthList.visitDate }</td>
								<td>${ healthList.diseaseName }</td>
								<td>${ healthList.significant }</td>
							</tr>
						</c:forEach>
					</c:if>
					<c:if test="${ empty loginUserDogHealth }">
						<tr>
							<td colspan="5" class="no-data">진료 기록이 존재하지 않습니다.</td>
						</tr>
					</c:if>
				</tbody>
				<tfoot>
				<!-- 진료 기록이 5개 이상이라면 다음 페이지에서 조회하도록 하는 페이징 기능 추가 -->
				</tfoot>
			</table>
			</c:if>
			<!-- 운영자계정으로 로그인시 강아지 정보 등록, 강아지 진료 정보 등록창 활성화 -->
			<c:if test="${ loginUser.admin eq 'A' }">
				<div class="button-container">
					<button class="styled-button" onclick="showSection('insertDogInfoSection')">강아지 등록</button>
					<button class="styled-button" onclick="showSection('insertHealthInfoSection')">진료기록 등록</button>
				</div>
				<table>
					<thead>
						<tr>
							<th>진료번호</th>
							<th>회원아이디</th>
							<th>이름</th>
							<th>방문일</th>
							<th>진단명</th>
							<th>특이사항</th>
							<th>삭제</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<form action="selectDogHealthInfo.do" method="post">
							<td colspan="6">
								<input type="text" name="memberId" placeholder="조회를 원하시는 회원 아이디를 입력하세요">
							</td>
							<td><input type="submit" class="styled-button" value="조회"></td>
							</form>
						</tr>
					<c:if test="${ not empty selectDogHealth }">
					<c:forEach items="${ selectDogHealth }" var="healthList">
						<tr id="healthRow_${ healthList.no }">
							<td>${ healthList.no }</td>
							<td>${ healthList.memberId }</td>
							<td>${ healthList.dogName }</td>
							<td>${ healthList.visitDate }</td>
							<td>${ healthList.diseaseName }</td>
							<td>${ healthList.significant }</td>
							<td>
								<button type="button" class="styled-button" onclick="confirmDelete(${ healthList.no })">삭제</button>
							</td>
						</tr>
					</c:forEach>
					</c:if>
					<c:if test="${ empty selectDogHealth }">
						<tr>
							<td colspan="7" class="no-data">진료 기록이 존재하지 않습니다.</td>
						</tr>
					</c:if>
					</tbody>
				</table>
				</c:if>
				
				<div id="insertDogInfoSection" class="modal">
					<div class="modal-content">
					<span class="close" onclick="closeModal('insertDogInfoSection')">&times;</span>
					<h2>Register Dog Information</h2>
					<form action="insertDogInfo.do" method="post">
						<label for=memberId>Member ID:</label>
						<input type="text" id="memberId" name="memberId"><br>
						<label for="dogName">Dog Name:</label>
						<input type="text" id="dogName" name="dogName"><br>
						<label for="birthDate">Birth Date:</label>
						<input type="date" name="birthDate">
						<label for="breedCode">Dog Breed:</label>
						<select id="breedCode" name="breedCode">
							<option value="1">Pomeranian</option>
							<option value="2">Maltese</option>
							<option value="3">Golden Retriever</option>
							<option value="4">Siberian Husky</option>
							<option value="5">French Bulldog</option>
							<option value="6">Shih Tzu</option>
							<option value="7">Chihuahua</option>
						</select>
						<input type="submit" value="등록하기">
					</form>
					</div>
				</div>
				
				<div id="insertHealthInfoSection" class="modal">
				<div class="modal-content">
				<h2>Register Dog HealthInfo</h2>
				<form action="RegisterDogServlet" method="post">
					<!-- dogNo, vistiDate, diseaseCode, significant -->
					<label for="dogName">Dog Name:</label>
					<input type="text" id="dogName" name="dogName"><br>
					<label for="dogBreed">Dog Breed:</label>
					<input type="text" id="dogBreed" name="dogBreed"><br>
					<label for="dogAge">Dog Age:</label>
					<input type="number" id="dogAge" name="dogAge"><br>
					<input type="submit" value="Register Dog">
				</form>
				</div>
				</div>
			</div>
			</c:if>
	</section>


	<!-- 예약 조회 섹션-->
	<section id="myReservations">
	<c:if test="${fn:endsWith(uri, 'viewReservations.do') }">
		<div id="viewReservationsSection">
			<h2>View Reservations</h2>
			<table>
				<thead>
					<tr>
						<th>예약번호</th>
						<th>예약일</th>
						<th>예약시간</th>
						<th>예약자</th>
						<th>강아지번호</th>
						<th>예약수정</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${ not empty appList }">
						<c:forEach items="${ appList }" var="list">
							<tr>
								<td>${ list.no }</td>
								<td>${ list.appointmentDate }</td>
								<td>${ list.appointmentTime }</td>
								<td>${ list.memberId }</td>
								<td>${ list.dogNo }</td>
								<td>
									<button type="button" class="styled-button"
										onclick="changeDate(${list.no})">날짜 변경</button>
									<button type="button" class="styled-button"
										onclick="deleteAppointment(${list.no})">예약 취소</button>
								<td>
							</tr>
						</c:forEach>
					</c:if>

					<c:if test="${ empty appList }">
						<tr>
							<td colspan="6" class="no-data">예약 정보가 존재하지 않습니다.</td>
						</tr>
					</c:if>
				</tbody>
			</table>
		</div>
		</c:if>
	</section>


	<!-- footer -->
	<footer>
		<%@ include file="/component/footer.jsp"%>
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
	<script src="js/main.js"></script>
</body>
</html>
