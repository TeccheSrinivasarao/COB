<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Password</title>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="<c:url value='/static/loginScreen/images/icons/favicon.ico' />" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/static/loginScreen/vendor/bootstrap/css/bootstrap.min.css' /> ">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/static/loginScreen/fonts/font-awesome-4.7.0/css/font-awesome.min.css' />">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/static/loginScreen/fonts/Linearicons-Free-v1.0.0/icon-font.min.css' /> ">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/static/loginScreen/vendor/animate/animate.css' /> ">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/static/loginScreen/vendor/css-hamburgers/hamburgers.min.css' /> ">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/static/loginScreen/vendor/animsition/css/animsition.min.css' /> ">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/static/loginScreen/vendor/select2/select2.min.css' /> ">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/static/loginScreen/vendor/daterangepicker/daterangepicker.css' /> ">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/static/loginScreen/css/util.css' /> ">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/static/loginScreen/css/main.css' /> ">
<!--===============================================================================================-->
</head>
<body>

	<div class="limiter ">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title"
					style="background-image: url(<c:url value='/static/loginScreen/images/bg-01.jpg' />);">
					<span class="login100-form-title-1">Create Password</span>
				</div>
				<label class="input-group col-form-label" style="color: red;"
					id="confirmPasswordError"></label>
				<c:url var="confirmPassword" value="/confirmPassword" />
				<form:form class="login100-form validate-form"
					action="${confirmPassword}" method="post"
					modelAttribute="confirmPassword">
					<div class="wrap-input100  m-b-26">
						<span class="label-input100"></span>
						<form:hidden class="input100" path="customerId" id="customerId"
							name="customerId" value="${customerId}"/>
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Password is required">
						<span class="label-input100">Password</span>
						<form:password class="input100" path="password" id="password"
							name="password" placeholder="******" required="required" />
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">Confirm Password</span>
						<form:password class="input100" path="confirmPassword"
							id="confirmPassword" name="confirmPassword" placeholder="******"
							required="required" />
						<span class="focus-input100"></span>
					</div>


					<div class="container-login100-form-btn">
					<input type="submit" class="btn btn-primary " id="btnSubmit"
										value="Create Customer" />
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			$("#btnSubmit")
					.click(
							function() {
								var password = $("#password").val();
								var confirmPassword = $("#confirmPassword")
										.val();
								if (password != confirmPassword) {
									$("#confirmPasswordError")
											.html(
													"<b>New Password and Current Password Not Match</b>!");
									return false;
								}
								return true;
							});
		});
	</script>
	<!--===============================================================================================-->
	<script
		src="<c:url value='/static/loginScreen/vendor/jquery/jquery-3.2.1.min.js' /> "></script>
	<!--===============================================================================================-->
	<script
		src="<c:url value='/static/loginScreen/vendor/animsition/js/animsition.min.js' /> "></script>
	<!--===============================================================================================-->
	<script
		src="<c:url value='/static/loginScreen/vendor/bootstrap/js/popper.js' /> "></script>
	<script
		src="<c:url value='/static/loginScreen/vendor/bootstrap/js/bootstrap.min.js' /> "></script>
	<!--===============================================================================================-->
	<script
		src="<c:url value='/static/loginScreen/vendor/select2/select2.min.js' /> "></script>
	<!--===============================================================================================-->
	<script
		src="<c:url value='/static/loginScreen/vendor/daterangepicker/moment.min.js' /> "></script>
	<script
		src="<c:url value='/static/loginScreen/vendor/daterangepicker/daterangepicker.js' /> "></script>
	<!--===============================================================================================-->
	<script
		src="<c:url value='/static/loginScreen/vendor/countdowntime/countdowntime.js' /> "></script>
	<!--===============================================================================================-->
	<script src="<c:url value='/static/loginScreen/js/main.js' /> "></script>

</body>
</html>