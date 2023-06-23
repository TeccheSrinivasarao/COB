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
				<div class="col-md-12 grid-margin">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Transaction History</h4>
							<form class="form-group"
						action="<c:url value="/transactionsHistory/${customerId}" />" method="get">
						<div class="form-group mb-2">
							<label></label> <select name='txOption' id='txOption'
								class="form-select">
								<option value="mini">Mini Statement</option>
								<option value="onemonth">Last One Month</option>
								<option value="3months">Last 3 Months</option>
								<option value="oneyear">Last One Year</option>
							</select>
						</div>
						
						<Input type="submit" name='Retrieve'
							value='Retrieve Transaction Details' id='Retrieve'
							class="btn btn-primary mb-2">

					</form>
						</div>
					</div>
				</div>
			</div>
  <c:if test = "${null != transactionsList}">
			<div class="row">
				<div class="col-12 grid-margin">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Transactions</h4>
							<div class="table-responsive">
								<table id="allLogoutHistoryTable"
								class="table table-striped table-bordered" style="width: 100%">
								<thead>
									<tr>
										<th>TransactionId</th>
										<th>Reference</th>
										<th>Transaction Date</th>
										<th>Type</th>
										<th>Transaction Amount</th>
										<th>Balance Amount</th>

									</tr>
								</thead>
	
								<tbody>
									 <c:forEach items="${transactionsList}" var="transactions">

										<tr>
											<td>${transactions.getTransactionId() }</td>
											<td>${transactions.getReference() }</td>
											<td>${transactions.getTransactionDate() }</td>
											<td>${transactions.getTransactionType() }</td>
											<td>${transactions.getAmount() }</td>
											<td>${transactions.getBalanceAmount() }</td>
										</tr>

									</c:forEach> 
								</tbody>
							</table>
							</div>
						</div>
					</div>
				</div>
			</div> 
			</c:if>
		
</div>
		

	<%@include file="sidebar.jsp"%>

</body>

</html>
			



