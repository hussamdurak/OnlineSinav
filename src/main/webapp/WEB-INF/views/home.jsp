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
</head>
<title>Ana Sayfa</title>
</head>

<!-- js başlangıcı -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#kontrolFrm').submit(function() {
			var adi = $('#adi').val();
			var soyadi = $('#soyadi').val();

			if (adi == "") {
				alert("Lütfen Adınızı Giriniz !");
				$('#adi').focus();
				return false;
			} else if (soyadi == "") {
				alert("Lütfen Soyadınızı Giriniz !");
				$('#soyadi').focus();
				return false;
			} else {
				return true;
			}
		});
	})
</script>
<!-- js sonu -->

<body style="background-color: white">
	
	<!-- div sayfa başlangıcı -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4"></div>

			<!-- bilgi alma div başlangıcı -->
			<div class="col-sm-4">
				<h1 align="center">Ana Sayfa</h1>
				<form action='<s:url value="/secim"></s:url>' method="post"
					id="kontrolFrm">
					<input type="text" id="adi" name="adi" class="form-control"
						placeholder="Adınız"><br> <input type="text"
						id="soyadi" name="soyadi" class="form-control"
						placeholder="Soyadınız"><br> <input
						class="form-control  btn-outline-secondary" name="kaydet"
						type="submit" value="Kaydet">
				</form>
			</div>
			<!-- bilgi alma div sonu -->

			<div class="col-sm-4"></div>
		</div>



	</div>
	<!-- div sayfa sonu -->
</body>
</html>