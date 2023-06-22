<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->

<title>HSBC HOME</title>
<%@include file="resources.jsp"%>
</head>
<body>

	
		<!-- partial:partials/_navbar.html -->
		<%@include file="navbar.jsp"%>

		<div class="content-wrapper">

	

			<div class="row">
				<div class="col-12 grid-margin">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Customer Overview</h4>
							<div class="table-responsive">
								<table class="table" id="customerOverView">
									<thead>
										<tr>
											<th>ID</th>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Phone</th>
											<th>Email</th>
											<th>Date of Birth</th>
											<th>Account Balance</th>
										</tr>
									</thead>
									<tbody>

											<tr>
												<td>${customer.getCustomerId()}</td>
												<td>${customer.getFirstName()}</td>
												<td>${customer.getLastName()}</td>
												<td>${customer.getPhoneNumber()}</td>
												<td>${customer.getEmail()}</td>
												<td>${customer.getDob()}</td>
												<td>5000000</td>
											</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div> 
		
</div>
		

	<%@include file="sidebar.jsp"%>

</body>

</html>
			