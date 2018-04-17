<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
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
<title>Soru Hazırla</title>
</head>
<c:import url="/header"></c:import>

<!-- js başlangıcı -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#kontrolFrm').submit(function() {
			var soru = $('#soru').val();

			if (soru == "") {
				alert("Lütfen Soru Giriniz !");
				$('#adi').focus();
				return false;
			} else {
				return true;
			}
		});
	})
</script>
<!-- js sonu -->

<body>
	<!-- div sayfa başlangıcı -->
	<div class="container-fluid">

		<div class="row">
			<!-- div sol başlangıcı -->
			<div class="col-sm-6">
				<div class="card">
					<div class="card-header">Soru Ekleme</div>
					<div class="card-body">

						<form action='<s:url value="/soruEkle"></s:url>' method="post"
							id="kontrolFrm">
							<div class="form-group">
								<textarea class="form-control" id="soru" name="soru" rows="3"
									placeholder="Soru"></textarea>
							</div>
							<button type="submit"
								class="btn btn-outline-primary btn-lg btn-block">Kaydet</button>
						</form>

					</div>
				</div>

			</div>
			<!-- div sol sonu -->

			<!-- div sağ başlangıcı -->
			<div class="col-sm-6">
				<c:if test="${ not empty ls }">
					<div class="card mb-3" style="max-width: 30rem;">
						<div class="card-header">Sorular</div>
						<div class="card-body">
							<c:forEach var="item" items="${ ls }">
								<div class="alert alert-secondary" role="alert"
									style="max-width: 30rem">
									<div class="input-group mb-3">
										<div class="col-sm-8"> ${ item.getSid() }-)  ${ item.getSicerik() }</div>
										<div class="col-sm-4">
											<a href='<s:url value="/secenek/${ item.getSid() }/${ item.getSicerik() }"></s:url>'>
												<button class="btn btn-outline-secondary" type="submit">Ekle</button>
											</a>
											<a href='<s:url value="/sil/${ item.getSid() }" ></s:url>'>
											<button class="btn btn-outline-secondary" type="button" >Sil</button>
											</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</c:if>
			</div>
			<!-- div sağ sonu -->

		</div>
	</div>
	<!-- div sayfa sonu -->
</body>
</html>