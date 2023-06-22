<div class="container-scroller">
	<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
		<div
			class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
			<a class="navbar-brand brand-logo" href="<c:url value='/charts/${customerId}' />"><img
				src="<c:url value='/static/images/Colors-HSBC-Logo.jpg' />" alt="logo" /></a> <a
				class="navbar-brand brand-logo-mini" href="<c:url value='/charts/${customerId}' />"><img
				src="<c:url value='/static/images/Colors-HSBC-Logo.jpg' />" alt="logo" /></a>
		</div>
		<div class="navbar-menu-wrapper d-flex align-items-stretch">
			<div class="search-field ml-4 d-none d-md-block">
				<form class="d-flex align-items-stretch h-100" action="${pageContext.request.contextPath}/getUserDetail">
					<div class="input-group">
						<input type="text" class="form-control bg-transparent border-0"
							placeholder="Search" name = "phoneNumber" required="required">
						<div
							class="input-group-addon bg-transparent border-0 search-button">
							<button type="submit" class="btn btn-sm bg-transparent px-0">
								<i class="mdi mdi-magnify"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
			<ul class="navbar-nav navbar-nav-right">
				<li class="nav-item d-none d-lg-block full-screen-link"><a
					class="nav-link"> 
				</a></li>
				
				<li class="nav-item nav-logout d-none d-lg-block"><a
					class="nav-link" href="<c:url value="/logout" />"> <i class="mdi mdi-power"></i>
				</a></li>
			</ul>
			<button
				class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
				type="button" data-toggle="offcanvas">
				<span class="mdi mdi-menu"></span>
			</button>
		</div>

	</nav>
	<!-- partial -->
	<div class="container-fluid page-body-wrapper">
		<div class="row row-offcanvas row-offcanvas-right">
			<!-- partial:partials/_sidebar.html -->
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<ul class="nav">

					
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/getOverView/${customerId}' />"> <span class="menu-title">Overview</span>
							<i class="mdi mdi-contacts menu-icon"></i>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/getPayments' />"> <span
							class="menu-title">Payments and Transfer</span> <i
							class="mdi mdi-format-list-bulleted menu-icon"></i>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/investments' />"> <span
							class="menu-title">Investments and Insurance</span> <i
							class="mdi mdi-chart-bar menu-icon"></i>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/customer' />"> <span class="menu-title">Customer
								Service</span> <i class="mdi mdi-chart-bar menu-icon"></i>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/customer' />"> <span class="menu-title">Accounts</span>
							<i class="mdi mdi-chart-bar menu-icon"></i>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/customer' />"> <span class="menu-title">Cards
								and Loans</span> <i class="mdi mdi-chart-bar menu-icon"></i>
					</a></li>
				</ul>

			</nav>
			<!-- partial -->