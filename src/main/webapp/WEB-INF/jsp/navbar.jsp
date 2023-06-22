<div class="container-scroller">
	<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
		<div
			class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
			<a class="navbar-brand brand-logo" href="index.html"><img
				src="images/logo.svg" alt="logo" /></a> <a
				class="navbar-brand brand-logo-mini" href="index.html"><img
				src="images/logo-mini.svg" alt="logo" /></a>
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
				<li class="nav-item dropdown"><a
					class="nav-link count-indicator dropdown-toggle"
					id="messageDropdown" href="#" data-toggle="dropdown"
					aria-expanded="false"> <i class="mdi mdi-email-outline"></i> <span
						class="count"></span>
				</a>
					<div
						class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
						aria-labelledby="messageDropdown">
						<h6 class="p-3 mb-0">Messages</h6>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item preview-item">
							<div class="preview-thumbnail">
								<img src="images/faces/face4.jpg" alt="image"
									class="profile-pic">
							</div>
							<div
								class="preview-item-content d-flex align-items-start flex-column justify-content-center">
								<h6 class="preview-subject ellipsis mb-1 font-weight-normal">Mark
									send you a message</h6>
								<p class="text-gray mb-0">1 Minutes ago</p>
							</div>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item preview-item">
							<div class="preview-thumbnail">
								<img src="images/faces/face2.jpg" alt="image"
									class="profile-pic">
							</div>
							<div
								class="preview-item-content d-flex align-items-start flex-column justify-content-center">
								<h6 class="preview-subject ellipsis mb-1 font-weight-normal">Cregh
									send you a message</h6>
								<p class="text-gray mb-0">15 Minutes ago</p>
							</div>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item preview-item">
							<div class="preview-thumbnail">
								<img src="images/faces/face3.jpg" alt="image"
									class="profile-pic">
							</div>
							<div
								class="preview-item-content d-flex align-items-start flex-column justify-content-center">
								<h6 class="preview-subject ellipsis mb-1 font-weight-normal">Profile
									picture updated</h6>
								<p class="text-gray mb-0">18 Minutes ago</p>
							</div>
						</a>
						<div class="dropdown-divider"></div>
						<h6 class="p-3 mb-0 text-center">4 new messages</h6>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link count-indicator dropdown-toggle"
					id="notificationDropdown" href="#" data-toggle="dropdown"> <i
						class="mdi mdi-bell-outline"></i> <span class="count"></span>
				</a>
					<div
						class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
						aria-labelledby="notificationDropdown">
						<h6 class="p-3 mb-0">Notifications</h6>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item preview-item">
							<div class="preview-thumbnail">
								<div class="preview-icon bg-success">
									<i class="mdi mdi-calendar"></i>
								</div>
							</div>
							<div
								class="preview-item-content d-flex align-items-start flex-column justify-content-center">
								<h6 class="preview-subject font-weight-normal mb-1">Event
									today</h6>
								<p class="text-gray ellipsis mb-0">Just a reminder that you
									have an event today</p>
							</div>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item preview-item">
							<div class="preview-thumbnail">
								<div class="preview-icon bg-warning">
									<i class="mdi mdi-settings"></i>
								</div>
							</div>
							<div
								class="preview-item-content d-flex align-items-start flex-column justify-content-center">
								<h6 class="preview-subject font-weight-normal mb-1">Settings</h6>
								<p class="text-gray ellipsis mb-0">Update dashboard</p>
							</div>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item preview-item">
							<div class="preview-thumbnail">
								<div class="preview-icon bg-info">
									<i class="mdi mdi-link-variant"></i>
								</div>
							</div>
							<div
								class="preview-item-content d-flex align-items-start flex-column justify-content-center">
								<h6 class="preview-subject font-weight-normal mb-1">Launch
									Admin</h6>
								<p class="text-gray ellipsis mb-0">New admin wow!</p>
							</div>
						</a>
						<div class="dropdown-divider"></div>
						<h6 class="p-3 mb-0 text-center">See all notifications</h6>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle nav-profile" id="profileDropdown"
					href="#" data-toggle="dropdown" aria-expanded="false"> <span
						class="d-none d-lg-inline">${userObj.getFirstName()}
							${userObj.getLastName()}</span>
				</a>
					<div class="dropdown-menu navbar-dropdown w-100"
						aria-labelledby="profileDropdown">
						<a class="dropdown-item" href="<c:url value="/profile" />"> <i
							class="mdi mdi-cached mr-2 text-success"></i> Update Profile
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="<c:url value="/changePassword" />"> <i
							class="mdi mdi-logout mr-2 text-primary"></i> Change Password
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="<c:url value="/logout" />"> <i
							class="mdi mdi-logout mr-2 text-primary"></i> Signout
						</a>
					</div></li>
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
						data-toggle="collapse" href="#ui-basic" aria-expanded="false"
						aria-controls="ui-basic"> <span class="menu-title">KP</span> <i
							class="menu-arrow"></i> <i
							class="mdi mdi-crosshairs-gps menu-icon"></i>
					</a>
						<div class="collapse" id="ui-basic">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="<c:url value='/getModule/KNH' />">KP Natal Horoscope</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/typography.html">Typography</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/icons/font-awesome.html"> <span class="menu-title">Icons</span>
							<i class="mdi mdi-contacts menu-icon"></i>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/getModuleDataAnalytics' />"> <span
							class="menu-title">Module Data Analytics</span> <i
							class="mdi mdi-format-list-bulleted menu-icon"></i>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/loginHistory' />"> <span class="menu-title">Login History</span>
							<i class="mdi mdi-chart-bar menu-icon"></i>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/logoutHistory' />"> <span class="menu-title">Logout History</span>
							<i class="mdi mdi-chart-bar menu-icon"></i>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/tables/bootstrap-table.html"> <span
							class="menu-title">Table</span> <i
							class="mdi mdi-table-large menu-icon"></i>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#auth" aria-expanded="false"
						aria-controls="auth"> <span class="menu-title">Settings</span>
							<i class="menu-arrow"></i> <i class="mdi mdi-settings menu-icon"></i>
					</a>
						<div class="collapse" id="auth">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="<c:url value='/getModuleRefData' />"> Module
										Setting </a></li>
								<li class="nav-item"><a class="nav-link"
									href="<c:url value='/getVersionRefData' />"> Version
										Setting </a></li>
								<li class="nav-item"><a class="nav-link"
									href="<c:url value='/getPaidTypeRefData' />"> Paid Type Setting </a></li>
							</ul>
						</div></li>
				</ul>

			</nav>
			<!-- partial -->