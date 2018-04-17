<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<title>Seçim</title>
</head>
<c:import url="/header"></c:import>
<body style="background-color: white">
	<!-- div sayfa başlangıcı -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<h3 align="center">UYARILAR</h3>
				<h3 align="center">Sayın ${ adi } ${ soyadi }</h3>
				<p>1- Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Aliquam ante eros.</p>
				<p>2- Mauris tempus dignissim tellus, eu placerat lacus sagittis
					vel. Suspendisse ac libero..</p>
				<p>3- Aenean facilisis ac mauris id rutrum. Aenean posuere purus
					non pretium bibendum. Etiam lacinia..</p>
				<p>4- Ornare vel porttitor sed, posuere in arcu. Pellentesque ac
					pretium orci.</p>
				<p>5- Donec bibendum lorem velit, quis maximus tellus mattis id.
					Donec ut neque efficitur.</p>
				<br> <a class="btn btn-outline-primary btn-lg btn-block"
					href='<s:url value="/soru"></s:url>' role="button">Soru Hazırla</a><br>
				<a class="btn btn-outline-success btn-lg btn-block"
					href='<s:url value="/sinav"></s:url>' role="button">Sınava
					Başla</a>
			</div>
			<div class="col-sm-4"></div>
		</div>
	</div>
	<!-- div sayfa sonu -->
</body>

</html>