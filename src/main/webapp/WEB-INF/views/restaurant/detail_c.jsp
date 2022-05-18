<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/png"
	href="${pageContext.request.contextPath}/resources/img/icon1.png">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css">

</head>
<body>


	<!-- navbar  -->
	<div class="navbar">

		<input type="checkbox" class="checkbox" id="click" hidden>

		<!-- sidebar -->
		<div class="sidebar">
			<label for="click">
				<div class="menu-icon">
					<div class="line line-1"></div>
					<div class="line line-2"></div>
					<div class="line line-3"></div>
				</div>
			</label>

			<div class="year">
				<p>2022/01/14</p>
			</div>
		</div>
		<!-- end of sidebar -->

			<!-- navigation -->
		<nav class="navigation">
			<div class="navigation-header">
				<h1 class="navigation-heading">This is your place</h1>

				<p class="logging-in">${sessionScope.loginid }
					${sessionScope.typename }님 logging in</p>

				<button class="logout-button">
					<a class="banner-text" href="/member/logout">Logout</a>
				</button>
			</div>

			<ul class="navigation-list">
				<li class="navigation-item"><a href="#" class="navigation-link">home</a>
				</li>
				<li class="navigation-item"><a href="/member/myinfo"
					class="navigation-link">mypage</a></li>
				<li class="navigation-item"><a href="/restaurant/write"
					class="navigation-link">add place</a></li>
				<li class="navigation-item"><a href="/ownerboard/list"
					class="navigation-link">manager board</a></li>
				<li class="navigation-item"><a href="#contact"
					class="navigation-link">contact</a></li>
			</ul>

			<div class="copyright">
				<p>&copy 2022 Team3 All Rights Reserved</p>
			</div>
		</nav>
		<!-- end of navigation -->
	</div>
	<!-- end of navbar  -->
	
	
	<!-- detail_c -->
	<section class="myorders">
		<!-- myorders header -->
		<header class="header-myorders">
			<div class="brand-myorders">
			<div>
				<img
					src="${pageContext.request.contextPath}/resources/img/icon1.png"
					width="80">
			</div>
			<h3 class="service-heading">This is your place</h3>
		</div>
	</header>
	<!-- end of detail_c header -->
		<div class="restaurant_write-content">
		<h1 class="join-heading">${r.restaurantName }</h1>
			<div class="underline">
						<div class="myorders-underline"></div>
						</div>
			
			<div class="myorders-wrapper">
	<img src="/restaurant/readimg/${r.r_img }" width=800 height="300"/>


				<table class="table obwrite-table">
					<thead>
						<tr class="myorders-list-th">						
							<tr><th scope="col">ADDRESS</th><td><input type="text" value="${r.addr }" readonly class="myorders-input"></td></tr>
							<tr><th scope="col">CATEGORY</th><td><input type="text" value=" ${r.category }" readonly class="myorders-input"></td></tr>
							<tr><th scope="col">RESTANRANT TYPE</th><td><input type="text"  value=" ${r.restauranttype }"   class="myorders-input"></td></tr>
							<tr><th scope="col">MENU TYPE</th><td><input type="text" value=" ${r.menutype }"  class="myorders-input"> </td></tr>
							<tr><th scope="col">OPER TIME</th><td><input type="text" value=" ${r.oper_time }"   class="myorders-input"> </td></tr>
							<tr><th scope="col">RATE</th><td><input type="text" value=" ${r.comsumer_rate }"  class="myorders-input"> </td></tr>
							<tr><th scope="col">RESERVATION NUM</th><td><input type="text"  value="${r.cnt }" class="myorders-input"> </td></tr>
							<tr><th scope="col">detail</th><td><textarea rows="10" cols="30"   value="${r.contents }" readonly class="myorders-input"></textarea> </td></tr>
			
					</thead>
					
				</table>
				<table>
					<c:forEach var="m" items="${list }">
							<tr></tr>
							<tr><th>사진</th><td><img src="/menu/readimg/${m.img_path }" width=200 height="200"></td></tr>
							<tr><th>메뉴 이름</th><td><input value="${m.mname }"  readonly  class="myorders-input"></td></tr><br>
							<tr><th>가격</th><td><input value="${m.price }"  readonly  class="myorders-input"></td></tr><br>
					</c:forEach>
				</table>
				</div>
				<div class="myorders-wrapper">
					<div class = detail_c-link>
					<td><a href="/reservation/add/${r.restaurant_id}">예약하기</a></td>
					<td><a href="/consumer_rate/list/${r.restaurant_id}">리뷰확인</a></td>
				</div>
			</div>	
		</div>
	</a>
	</section>		

		

<!-- 	<!-- end of detail_c --> -->
	
	</section>
	<!-- footer -->
    <footer class="footer">
        <div class="main-part">
            <div class="footer-list-wrapper">
                <h3 class="footer-heading">This is your place</h3>
                <ul class="footer-list">
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">ghkdwnsdn3@gmail.com</a>
                    </li>
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">Seoul,</a>
                    </li>
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">Tel : </a>
                    </li>
            </ul>
            </div>
            <div class="footer-list-wrapper">
                <h3 class="footer-heading">Explore</h3>
                <ul class="footer-list">
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">Home</a>
                    </li>
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">My Page</a>
                    </li>
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">Reservation</a>
                    </li>
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">Search</a>
                    </li>
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">Place</a>
                    </li>
                    <li class="footer-list-item">
                        <a href="#" class="footer-list-link">Contact</a>
                    </li>
                </ul>
            </div>

            <div class="contact">
                <h3 class="footer-heading">Contact</h3>
                <p>Sign Up for Store inquiry</p>
                <form class="footer-form">
                    <input type="text" class="footer-input" placeholder="Your email...">
                    <button class="footer-btn">Sign Up</button>
                </form>
            </div>

        </div>
        <div class="creator-part">
            <div class="copyright-text">
                <p>Copyright &copy; 2022. This is your place. All Rights Reserved</p>
            </div>

            <div class="text-right">
                <p>Made With<i class="fas fa-heart"></i>by<span>EncoreTeam3</span></p>
            </div>
        </div>
    </footer>
    <!-- end of footer -->
</body>
</html>