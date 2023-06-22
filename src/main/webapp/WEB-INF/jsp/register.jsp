<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
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
					style="background-image: url(<c:url value='/static/loginScreen/images/bg-02.jpg' />);">
					<span class="login100-form-title-1"> Customer Registration </span>
				</div>
				<c:url var="registrationUrl" value="/registerNewCustomer" />
				<form:form class="login100-form validate-form"
					action="${registrationUrl}" method="post" modelAttribute="customer">
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Username is required">
						<span class="label-input100">Saluation</span>
						<form:select class="form-control" path="salutation" name="salutation">
								<form:option value="Mr">Mr</form:option>
								<form:option value="Ms">Ms</form:option>
								<form:option value="Mrs">Mrs</form:option>
						</form:select>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">FirstName* </span>
						<form:input class="input100" type="text" path="firstName"
							name="firstName" required="required"/>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">LastName* </span>
						<form:input class="input100" type="text" path="LastName"
							name="LastName" required="required"/>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">DOB* </span>
						<form:input class="input100" type="date" path="dob" name="dob"
							required="required"/>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Username is required">
						<span class="label-input100">Gender</span>
						<form:select class="form-control" path="gender" name="gender">
								<form:option value="M">Male</form:option>
								<form:option value="F">Female</form:option>
								<form:option value="T">Transgender</form:option>
						</form:select>
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">EMailId </span>
						<form:input class="input100" type="email" path="email"
							name="email" required="required"/>
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">Phone Number </span>
						<form:input class="input100" type="text" path="phoneNumber"
							name="phoneNumber" required="required"/>
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">Address Line 1 </span>
						<form:input class="input100" type="text" path="addressLine1"
							name="addressLine1" required="required"/>
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">Address Line 2 </span>
						<form:input class="input100" type="text" path="addressLine2"
							name="addressLine2"/>
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">City </span>
						<form:input class="input100" type="text" path="city" name="city" required="required"/>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">State </span>
						<form:input class="input100" type="text" path="state" name="state" required="required"/>
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">Country </span>
						<form:input class="input100" type="country" path="country"
							name="state" required="required"/>
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">ZipCode </span>
						<form:input class="input100" type="zipCode" path="zipCode"
							name="state" required="required"/>
						<span class="focus-input100"></span>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">Register</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>

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