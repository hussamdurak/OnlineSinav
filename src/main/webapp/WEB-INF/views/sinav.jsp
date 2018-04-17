<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<head>
<title>Online Sınav</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body style="background-color: white">
	<c:import url="/header"></c:import>
	<!-- div sayfa başlangıcı -->
	<div class="container-fluid">
		<div class="row">

			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<form action='<s:url value="cevapAl"></s:url>' method="post">
					<h3 align="center">SORULAR</h3>
					<c:if test="${ not empty cls }">
						<h3 align="center">${ sid }-)${ soru }</h3>
						<c:forEach var="item" items="${ cls }">
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="radio" id="radio" value="radio"
									checked> <label class="form-check-label"
									for="radio"> ${ item.getCicerik() } </label>
							</div>
						</c:forEach>
						<button type="button" class="btn btn-primary">Cevapla</button>
					</c:if>
				</form>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
	<!-- div sayfa sonu -->
</body>

</html>
