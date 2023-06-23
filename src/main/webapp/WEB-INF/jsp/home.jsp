<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->

<title>HSBC HOME</title>
<%@include file="resources.jsp"%>

<!-- <script>
	$(function() {
		$.fn.dataTable.moment("DD-MMM-YYYY HH.mm.SS a");
		$('#androidUserTable').DataTable();
		$('#iosUserTable').DataTable();
		$('#totalUserTable').DataTable();

	})
</script> -->
<c:url var="Upi" value="${UPI}" />
<c:url var="Credits" value="${CREDIT_CARD}" />
<c:url var="TotalCount" value="${TOTAL_COUNT}" />
<%
	String iosCount = (String) pageContext.getAttribute("Upi");
	String androidCount = (String) pageContext.getAttribute("Credits");
	String totalCount = (String) pageContext.getAttribute("TotalCount");
%>
</head>
<body>

	<script type="text/javascript">
	var myChart =	$(function() {
			new Chart(document.getElementById("users-chart").getContext("2d"), {
				type : 'doughnut',
				data : {
					labels : [ "Credits", "Upi Payments", "Total Amount" ],
					datasets : [ {
						label : "Users",
						backgroundColor : [ "#3e95cd","#e8c3b9", "#8e5ea2" ],
						data : [ <%out.print(androidCount);%>, <%out.print(iosCount);%>, <%out.print(totalCount);%> ]
					} ]
				},
				options : {
					title : {
						display : true,
						text : 'Total Users : '+<%out.print(totalCount);%> 
					}
				}
			});
		});
	</script>

	
		<!-- partial:partials/_navbar.html -->
		<%@include file="navbar.jsp"%>

		<div class="content-wrapper">

			 <div class="row">
				<div class="col-md-8 grid-margin stretch-card">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Customer Spendings</h4>
							<canvas id="users-chart"></canvas>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12 grid-margin">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Transactions</h4>
							<div class="table-responsive">
								<table class="table" id="androidUserTable">
									<thead>
										<tr>
											<th>ID</th>
											<th>UserName</th>
											<th>Phone</th>
											<th>Email</th>
											<th>Date</th>
											<th>OS</th>
											<th>Location</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach items="${ANDROID_USERS_LIST}" var="androidUser">
											<tr>
												<td>${androidUser.getSignUpId()}</td>
												<td>${androidUser.getUserName()}</td>
												<td>${androidUser.getPhoneNumber()}</td>
												<td>${androidUser.getEmailId()}</td>
												<td>${androidUser.getSignupDateAndTime()}</td>
												<td>${androidUser.getSignupDeviceOS()}</td>
												<td>${androidUser.getSignupLocation()}</td>
											</tr>
										</c:forEach>

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
			