<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<%@ include file="menu.jsp" %>
	<%!
		String greeting = "웹 쇼핑몰에 오신 것을 환영합니다!";
		String tagline = "Welcome to Web Market!"; 
	%>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<!-- 변수 greeting의 값을 출력하도록 표현문 태그를 작성한다. -->
				<%=greeting %>
			</h1>
		</div>
	</div>	
	<div class="container">
		<div class="text-center">
			<h3>
				<!-- 변수 tagline의 값을 출력하도록 표현문 태그를 작성한다. -->
				<%= tagline %>
			</h3>
			<%
				Date day = new Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if (hour / 12 == 0) {
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.println("현재 접속 시각 : " + CT);
			%>
		</div>
		<hr>
	</div>	

	<%@ include file="footer.jsp" %>
</body>
</html>