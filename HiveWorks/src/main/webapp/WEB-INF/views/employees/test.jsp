<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="default" name="style" />
	<jsp:param value="" name="hover" />
</jsp:include>
<%-- 	<jsp:param value="collapsed" name="style"/>
	<jsp:param value="data-hover='active'" name="hover"/> --%>
<%@ include file="/WEB-INF/views/common/sideBar.jsp"%>




	<!-- Wrapper -->
	<div class="hk-wrapper" data-layout="vertical" data-layout-style="collapsed" data-menu="light" data-footer="simple" data-hover="active">
		<!-- Top Navbar -->
		<nav class="hk-navbar navbar navbar-expand-xl navbar-light fixed-top">
			<div class="container-fluid">
			<!-- Start Nav -->
			<div class="nav-start-wrap">
				<button class="btn btn-icon btn-rounded btn-flush-dark flush-soft-hover navbar-toggle d-xl-none"><span class="icon"><span class="feather-icon"><i data-feather="align-left"></i></span></span></button>
					
				<!-- Search -->
				<form class="dropdown navbar-search">
					<div class="dropdown-toggle no-caret" data-bs-toggle="dropdown" data-dropdown-animation data-bs-auto-close="outside">
						<a href="#" class="btn btn-icon btn-rounded btn-flush-dark flush-soft-hover  d-xl-none"><span class="icon"><span class="feather-icon"><i data-feather="search"></i></span></span></a>
						<div class="input-group d-xl-flex d-none">
							<span class="input-affix-wrapper input-search affix-border">
								<input type="text" class="form-control  bg-transparent"  data-navbar-search-close="false" placeholder="Search..." aria-label="Search">
								<span class="input-suffix"><span>/</span>
									<span class="btn-input-clear"><i class="bi bi-x-circle-fill"></i></span>
									<span class="spinner-border spinner-border-sm input-loader text-primary" role="status">
										<span class="sr-only">Loading...</span>
									</span>
								</span>
							</span>
						</div>
					</div>
					<div  class="dropdown-menu p-0">
						<!-- Mobile Search -->
						<div class="dropdown-item d-xl-none bg-transparent">
							<div class="input-group mobile-search">
								<span class="input-affix-wrapper input-search">
									<input type="text" class="form-control" placeholder="Search..." aria-label="Search">
									<span class="input-suffix">
										<span class="btn-input-clear"><i class="bi bi-x-circle-fill"></i></span>
										<span class="spinner-border spinner-border-sm input-loader text-primary" role="status">
											<span class="sr-only">Loading...</span>
										</span>
									</span>
								</span>
							</div>
						</div>
						<!--/ Mobile Search -->
						<div data-simplebar class="dropdown-body p-2">
							<h6 class="dropdown-header">Recent Search
							</h6>
							<div class="dropdown-item bg-transparent">
								<a href="#" class="badge badge-pill badge-soft-secondary">Grunt</a>
								<a href="#" class="badge badge-pill badge-soft-secondary">Node JS</a>
								<a href="#" class="badge badge-pill badge-soft-secondary">SCSS</a>
							</div>
							<div class="dropdown-divider"></div>
							<h6 class="dropdown-header">Help
							</h6>
							<a href="javascript:void(0);" class="dropdown-item">
								<div class="media align-items-center">
									<div class="media-head me-2">
										<div class="avatar avatar-icon avatar-xs avatar-soft-light avatar-rounded">
											<span class="initial-wrap">
												<span class="svg-icon">
													<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-corner-down-right" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
														<path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
														<path d="M6 6v6a3 3 0 0 0 3 3h10l-4 -4m0 8l4 -4"></path>
													 </svg>
												</span>
											</span>
										</div>
									</div>
									<div class="media-body">
										How to setup theme?
									</div>
								</div>
							</a>
							<a href="javascript:void(0);" class="dropdown-item">
								<div class="media align-items-center">
									<div class="media-head me-2">
										<div class="avatar avatar-icon avatar-xs avatar-soft-light avatar-rounded">
											<span class="initial-wrap">
												<span class="svg-icon">
													<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-corner-down-right" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
														<path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
														<path d="M6 6v6a3 3 0 0 0 3 3h10l-4 -4m0 8l4 -4"></path>
													 </svg>
												</span>
											</span>
										</div>
									</div>
									<div class="media-body">
										View detail documentation
									</div>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<h6 class="dropdown-header">Users
							</h6>
							<a href="javascript:void(0);" class="dropdown-item">
								<div class="media align-items-center">
									<div class="media-head me-2">
										<div class="avatar avatar-xs avatar-rounded">
											<img src="dist/img/avatar3.jpg" alt="user" class="avatar-img">
										</div>
									</div>
									<div class="media-body">
										Sarah Jone
									</div>
								</div>
							</a>
							<a href="javascript:void(0);" class="dropdown-item">
								<div class="media align-items-center">
									<div class="media-head me-2">
										<div class="avatar avatar-xs avatar-soft-primary avatar-rounded">
											<span class="initial-wrap">J</span>
										</div>
									</div>
									<div class="media-body">
										Joe Jackson
									</div>
								</div>
							</a>
							<a href="javascript:void(0);" class="dropdown-item">
								<div class="media align-items-center">
									<div class="media-head me-2">
										<div class="avatar avatar-xs avatar-rounded">
											<img src="dist/img/avatar4.jpg" alt="user" class="avatar-img">
										</div>
									</div>
									<div class="media-body">
										Maria Richard
									</div>
								</div>
							</a>
						</div>
						<div class="dropdown-footer d-xl-flex d-none"><a href="#"><u>Search all</u></a></div>
					</div>
				</form>
				<!-- /Search -->
			</div>
			<!-- /Start Nav -->
			
			<!-- End Nav -->
			<div class="nav-end-wrap">
				<ul class="navbar-nav flex-row">
					<li class="nav-item">
						<a href="email.html" class="btn btn-icon btn-rounded btn-flush-dark flush-soft-hover"><span class="icon"><span class=" position-relative"><span class="feather-icon"><i data-feather="inbox"></i></span><span class="badge badge-sm badge-soft-primary badge-sm badge-pill position-top-end-overflow-1">4</span></span></span></a>
					</li>
					<li class="nav-item">
						<div class="dropdown dropdown-notifications">
							<a href="#" class="btn btn-icon btn-rounded btn-flush-dark flush-soft-hover dropdown-toggle no-caret" data-bs-toggle="dropdown" data-dropdown-animation role="button" aria-haspopup="true" aria-expanded="false"><span class="icon"><span class="position-relative"><span class="feather-icon"><i data-feather="bell"></i></span><span class="badge badge-success badge-indicator position-top-end-overflow-1"></span></span></span></a>
							<div class="dropdown-menu dropdown-menu-end p-0">
								<h6 class="dropdown-header px-4 fs-6">Notifications<a href="#" class="btn btn-icon btn-flush-dark btn-rounded flush-soft-hover"><span class="icon"><span class="feather-icon"><i data-feather="settings"></i></span></span></a>
								</h6>
								<div data-simplebar class="dropdown-body  p-2">
									<a href="javascript:void(0);" class="dropdown-item">
										<div class="media">
											<div class="media-head">
												<div class="avatar avatar-rounded avatar-sm">
													<img src="dist/img/avatar2.jpg" alt="user" class="avatar-img">
												</div>
											</div>
											<div class="media-body">
												<div>
													<div class="notifications-text">Morgan Freeman accepted your invitation to join the team</div>
													<div class="notifications-info">
														<span class="badge badge-soft-success">Collaboration</span>
														<div class="notifications-time">Today, 10:14 PM</div>
													</div>
												</div>
											</div>
										</div>
									</a>
									<a href="javascript:void(0);" class="dropdown-item">
										<div class="media">
											<div class="media-head">
												<div class="avatar  avatar-icon avatar-sm avatar-success avatar-rounded">
													<span class="initial-wrap">
														<span class="feather-icon"><i data-feather="inbox"></i></span>
													</span>
												</div>
											</div>
											<div class="media-body">
												<div>
													<div class="notifications-text">New message received from Alan Rickman</div>
													<div class="notifications-info">
														<div class="notifications-time">Today, 7:51 AM</div>
													</div>
												</div>
											</div>
										</div>
									</a>
									<a href="javascript:void(0);" class="dropdown-item">
										<div class="media">
											<div class="media-head">
												<div class="avatar  avatar-icon avatar-sm avatar-pink avatar-rounded">
													<span class="initial-wrap">
														<span class="feather-icon"><i data-feather="clock"></i></span>
													</span>
												</div>
											</div>
											<div class="media-body">
												<div>
													<div class="notifications-text">You have a follow up with Jampack Head on Friday, Dec 19 at 9:30 am</div>
													<div class="notifications-info">
														<div class="notifications-time">Yesterday, 9:25 PM</div>
													</div>
												</div>
											</div>
										</div>
									</a>
									<a href="javascript:void(0);" class="dropdown-item">
										<div class="media">
											<div class="media-head">
												<div class="avatar avatar-sm avatar-rounded">
													<img src="dist/img/avatar3.jpg" alt="user" class="avatar-img">
												</div>
											</div>
											<div class="media-body">
												<div>
													<div class="notifications-text">Application of Sarah Williams is waiting for your approval</div>
													<div class="notifications-info">
														<div class="notifications-time">Today 10:14 PM</div>
													</div>
												</div>
											</div>
										</div>
									</a>
									<a href="javascript:void(0);" class="dropdown-item">
										<div class="media">
											<div class="media-head">
												<div class="avatar avatar-sm avatar-rounded">
													<img src="dist/img/avatar10.jpg" alt="user" class="avatar-img">
												</div>
											</div>
											<div class="media-body">
												<div>	
													<div class="notifications-text">Winston Churchil shared a document with you</div>
													<div class="notifications-info">
														<span class="badge badge-soft-violet">File Manager</span>
														<div class="notifications-time">2 Oct, 2021</div>
													</div>
												</div>
											</div>
										</div>
									</a>
									<a href="javascript:void(0);" class="dropdown-item">
										<div class="media">
											<div class="media-head">
												<div class="avatar  avatar-icon avatar-sm avatar-danger avatar-rounded">
													<span class="initial-wrap">
														<span class="feather-icon"><i data-feather="calendar"></i></span>
													</span>
												</div>
											</div>
											<div class="media-body">
												<div>	
													<div class="notifications-text">Last 2 days left for the project to be completed</div>
													<div class="notifications-info">
														<span class="badge badge-soft-orange">Updates</span>
														<div class="notifications-time">14 Sep, 2021</div>
													</div>
												</div>
											</div>
										</div>
									</a>
								</div>
								<div class="dropdown-footer"><a href="#"><u>View all notifications</u></a></div>
							</div>
						</div>
					</li>
					<li class="nav-item">
						<div class="dropdown ps-2">
							<a class=" dropdown-toggle no-caret" href="#" role="button" data-bs-display="static" data-bs-toggle="dropdown" data-dropdown-animation data-bs-auto-close="outside" aria-expanded="false">
								<div class="avatar avatar-rounded avatar-xs">
									<img src="dist/img/avatar12.jpg" alt="user" class="avatar-img">
								</div>
							</a>
							<div class="dropdown-menu dropdown-menu-end">
								<div class="p-2">
									<div class="media">
										<div class="media-head me-2">
											<div class="avatar avatar-primary avatar-sm avatar-rounded">
												<span class="initial-wrap">Hk</span>
											</div>
										</div>
										<div class="media-body">
											<div class="dropdown">
												<a href="#" class="d-block dropdown-toggle link-dark fw-medium"  data-bs-toggle="dropdown" data-dropdown-animation data-bs-auto-close="inside">Hencework</a>
												<div class="dropdown-menu dropdown-menu-end">
													<div class="p-2">
														<div class="media align-items-center active-user mb-3">
															<div class="media-head me-2">
																<div class="avatar avatar-primary avatar-xs avatar-rounded">
																	<span class="initial-wrap">Hk</span>
																</div>
															</div>
															<div class="media-body">
																<a href="#" class="d-flex align-items-center link-dark">Hencework <i class="ri-checkbox-circle-fill fs-7 text-primary ms-1"></i></a>
																<a href="#" class="d-block fs-8 link-secondary"><u>Manage your account</u></a>
															</div>
														</div>
														<div class="media align-items-center mb-3">
															<div class="media-head me-2">
																<div class="avatar avatar-xs avatar-rounded">
																	<img src="dist/img/avatar12.jpg" alt="user" class="avatar-img">
																</div>
															</div>
															<div class="media-body">
																<a href="#" class="d-block link-dark">Jampack Team</a>
																<a href="#" class="d-block fs-8 link-secondary">contact@hencework.com</a>
															</div>
														</div>
														<button class="btn btn-block btn-outline-light btn-sm">
															<span><span class="icon"><span class="feather-icon"><i data-feather="plus"></i></span></span>
															<span>Add Account</span></span>
														</button>
													</div>
												</div>
											</div>
											<div class="fs-7">contact@hencework.com</div>
											<a href="#" class="d-block fs-8 link-secondary"><u>Sign Out</u></a>
										</div>
									</div>
								</div>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="profile.html">Profile</a>
								<a class="dropdown-item" href="#"><span class="me-2">Offers</span><span class="badge badge-sm badge-soft-pink">2</span></a><div class="dropdown-divider"></div>
								<h6 class="dropdown-header">Manage Account</h6>
								<a class="dropdown-item" href="#"><span class="dropdown-icon feather-icon"><i data-feather="credit-card"></i></span><span>Payment methods</span></a>
								<a class="dropdown-item" href="#"><span class="dropdown-icon feather-icon"><i data-feather="check-square"></i></span><span>Subscriptions</span></a>
								<a class="dropdown-item" href="#"><span class="dropdown-icon feather-icon"><i data-feather="settings"></i></span><span>Settings</span></a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#"><span class="dropdown-icon feather-icon"><i data-feather="tag"></i></span><span>Raise a ticket</span></a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Terms & Conditions</a>
								<a class="dropdown-item" href="#">Help & Support</a>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<!-- /End Nav -->
			</div>									
		</nav>
		<!-- /Top Navbar -->

        <!-- Vertical Nav -->
        <div class="hk-menu">
			<!-- Brand -->
			<div class="menu-header">
				<span>
					<a class="navbar-brand" href="index.html">
						<img class="brand-img img-fluid" src="dist/img/brand-sm.svg" alt="brand" />
						<img class="brand-img img-fluid" src="dist/img/Jampack.svg" alt="brand" />
					</a>
					<button class="btn btn-icon btn-rounded btn-flush-dark flush-soft-hover navbar-toggle">
						<span class="icon">
							<span class="svg-icon fs-5">
								<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-arrow-bar-to-left" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
									<path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
									<line x1="10" y1="12" x2="20" y2="12"></line>
									<line x1="10" y1="12" x2="14" y2="16"></line>
									<line x1="10" y1="12" x2="14" y2="8"></line>
									<line x1="4" y1="4" x2="4" y2="20"></line>
								</svg>
							</span>
						</span>
					</button>
				</span>
			</div>
			<!-- /Brand -->

			<!-- Main Menu -->
			<div data-simplebar class="nicescroll-bar">
				<div class="menu-content-wrap">
					<div class="menu-group">
						<ul class="navbar-nav flex-column">
							<li class="nav-item">
								<a class="nav-link" href="index.html">
									<span class="nav-icon-wrap">
										<span class="svg-icon">
											<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-template" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
												<rect x="4" y="4" width="16" height="4" rx="1" />
												<rect x="4" y="12" width="6" height="8" rx="1" />
												<line x1="14" y1="12" x2="20" y2="12" />
												<line x1="14" y1="16" x2="20" y2="16" />
												<line x1="14" y1="20" x2="20" y2="20" />
											</svg>
										</span>
									</span>
									<span class="nav-link-text">Dashboard</span>
									<span class="badge badge-sm badge-soft-pink ms-auto">Hot</span>
								</a>
							</li>
						</ul>	
					</div>
					<div class="menu-gap"></div>
					<div class="menu-group">
						<div class="nav-header">
							<span>Apps</span>
						</div>
						<ul class="navbar-nav flex-column">
							<li class="nav-item">
								<a class="nav-link" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#dash_chat">
									<span class="nav-icon-wrap">
										<span class="svg-icon">
											<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-message-dots" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
												<path d="M4 21v-13a3 3 0 0 1 3 -3h10a3 3 0 0 1 3 3v6a3 3 0 0 1 -3 3h-9l-4 4" />
												<line x1="12" y1="11" x2="12" y2="11.01" />
												<line x1="8" y1="11" x2="8" y2="11.01" />
												<line x1="16" y1="11" x2="16" y2="11.01" />
											</svg>
										</span>
									</span>
									<span class="nav-link-text">Chat</span>
								</a>
								<ul id="dash_chat" class="nav flex-column collapse  nav-children">
									<li class="nav-item">
										<ul class="nav flex-column">
											<li class="nav-item">
												<a class="nav-link" href="chats.html"><span class="nav-link-text">Chats</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="chats-group.html"><span class="nav-link-text">Groups</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="chats-contact.html"><span class="nav-link-text">Contacts</span></a>
											</li>
										</ul>	
									</li>	
								</ul>	
							</li>	
							<li class="nav-item">
								<a class="nav-link" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#dash_chatpop">
									<span class="nav-icon-wrap">
										<span class="svg-icon">
											<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-message-circle-2" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
												<path d="M3 20l1.3 -3.9a9 8 0 1 1 3.4 2.9l-4.7 1" />
												<line x1="12" y1="12" x2="12" y2="12.01" />
												<line x1="8" y1="12" x2="8" y2="12.01" />
												<line x1="16" y1="12" x2="16" y2="12.01" />
											</svg>
										</span>
									</span>
									<span class="nav-link-text">Chat Popup</span>
								</a>
								<ul id="dash_chatpop" class="nav flex-column collapse  nav-children">
									<li class="nav-item">
										<ul class="nav flex-column">
											<li class="nav-item">
												<a class="nav-link" href="chatpopup.html"><span class="nav-link-text">Direct Message</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="chatbot.html"><span class="nav-link-text">Chatbot</span></a>
											</li>
										</ul>	
									</li>	
								</ul>	
							</li>	
							<li class="nav-item">
								<a class="nav-link" href="calendar.html">
									<span class="nav-icon-wrap">
										<span class="svg-icon">
											<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-calendar-time" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
												<path d="M11.795 21h-6.795a2 2 0 0 1 -2 -2v-12a2 2 0 0 1 2 -2h12a2 2 0 0 1 2 2v4" />
												<circle cx="18" cy="18" r="4" />
												<path d="M15 3v4" />
												<path d="M7 3v4" />
												<path d="M3 11h16" />
												<path d="M18 16.496v1.504l1 1" />
											</svg>
										</span>
									</span>
									<span class="nav-link-text">Calendar</span>
								</a>
							</li>	
							<li class="nav-item">
								<a class="nav-link" href="email.html">
									<span class="nav-icon-wrap">
										<span class="svg-icon">
											<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-inbox" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
												<rect x="4" y="4" width="16" height="16" rx="2" />
												<path d="M4 13h3l3 3h4l3 -3h3" />
											</svg>
										</span>
									</span>
									<span class="nav-link-text">Email</span>
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#dash_scrumboard">
									<span class="nav-icon-wrap position-relative">
										<span class="badge badge-sm badge-primary badge-sm badge-pill position-top-end-overflow">3</span>
										<span class="svg-icon">
											<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-layout-kanban" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
												<line x1="4" y1="4" x2="10" y2="4" />
												<line x1="14" y1="4" x2="20" y2="4" />
												<rect x="4" y="8" width="6" height="12" rx="2" />
												<rect x="14" y="8" width="6" height="6" rx="2" />
											</svg>
										</span>
									</span>
									<span class="nav-link-text">Scrumboard</span>
								</a>
								<ul id="dash_scrumboard" class="nav flex-column collapse  nav-children">
									<li class="nav-item">
										<ul class="nav flex-column">
											<li class="nav-item">
												<a class="nav-link" href="projects-board.html"><span class="nav-link-text">All Boards</span></a>
											</li>
											
											<li class="nav-item">
												<a class="nav-link" href="kanban-board.html"><span class="nav-link-text">Project Kanban</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="pipeline.html"><span class="nav-link-text">Pipeline Kanban</span></a>
											</li>
										</ul>	
									</li>	
								</ul>	
							</li>
							<li class="nav-item">
								<a class="nav-link" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#dash_contact">
									<span class="nav-icon-wrap">
										<span class="svg-icon">
											<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-notebook" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
												<path d="M6 4h11a2 2 0 0 1 2 2v12a2 2 0 0 1 -2 2h-11a1 1 0 0 1 -1 -1v-14a1 1 0 0 1 1 -1m3 0v18" />
												<line x1="13" y1="8" x2="15" y2="8" />
												<line x1="13" y1="12" x2="15" y2="12" />
											</svg>
										</span>
									</span>
									<span class="nav-link-text">Contact</span>
								</a>
								<ul id="dash_contact" class="nav flex-column collapse  nav-children">
									<li class="nav-item">
										<ul class="nav flex-column">
											<li class="nav-item">
												<a class="nav-link" href="contact.html"><span class="nav-link-text">Contact List</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="contact-cards.html"><span class="nav-link-text">Contact Cards</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="edit-contact.html"><span class="nav-link-text">Edit Contact</span></a>
											</li>
										</ul>	
									</li>	
								</ul>	
							</li>
							<li class="nav-item">
								<a class="nav-link" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#dash_file">
									<span class="nav-icon-wrap">
										<span class="svg-icon">
											<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-file-check" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
												<path d="M14 3v4a1 1 0 0 0 1 1h4" />
												<path d="M17 21h-10a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2h7l5 5v11a2 2 0 0 1 -2 2z" />
												<path d="M9 15l2 2l4 -4" />
											</svg>
										</span>
									</span>
									<span class="nav-link-text">File Manager</span>
								</a>
								<ul id="dash_file" class="nav flex-column collapse  nav-children">
									<li class="nav-item">
										<ul class="nav flex-column">
											<li class="nav-item">
												<a class="nav-link" href="file-manager-list.html"><span class="nav-link-text">List View</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="file-manager-grid.html"><span class="nav-link-text">Grid View</span></a>
											</li>
										</ul>	
									</li>	
								</ul>	
							</li>
							<li class="nav-item">
								<a class="nav-link" href="gallery.html">
									<span class="nav-icon-wrap">
										<span class="svg-icon">
											<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-photo" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
												<line x1="15" y1="8" x2="15.01" y2="8" />
												<rect x="4" y="4" width="16" height="16" rx="3" />
												<path d="M4 15l4 -4a3 5 0 0 1 3 0l5 5" />
												<path d="M14 14l1 -1a3 5 0 0 1 3 0l2 2" />
											</svg>
										</span>
									</span>
									<span class="nav-link-text">Gallery</span>
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#dash_task">
									<span class="nav-icon-wrap">
										<span class="svg-icon">
											<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-list-details" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
												<path d="M13 5h8" />
												<path d="M13 9h5" />
												<path d="M13 15h8" />
												<path d="M13 19h5" />
												<rect x="3" y="4" width="6" height="6" rx="1" />
												<rect x="3" y="14" width="6" height="6" rx="1" />
											</svg>
										</span>
									</span>
									<span class="nav-link-text">Todo</span>
									<span class="badge badge-soft-success ms-2">2</span>
								</a>
								<ul id="dash_task" class="nav flex-column collapse  nav-children">
									<li class="nav-item">
										<ul class="nav flex-column">
											<li class="nav-item">
												<a class="nav-link" href="tasklist.html"><span class="nav-link-text">Tasklist</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="gantt.html"><span class="nav-link-text">Gantt</span></a>
											</li>
										</ul>	
									</li>	
								</ul>	
							</li>
							<li class="nav-item">
								<a class="nav-link" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#dash_blog">
									<span class="nav-icon-wrap">
										<span class="svg-icon">
											<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-browser" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
												<rect x="4" y="4" width="16" height="16" rx="1" />
												<line x1="4" y1="8" x2="20" y2="8" />
												<line x1="8" y1="4" x2="8" y2="8" />
											</svg>
										</span>
									</span>
									<span class="nav-link-text">Blog</span>
								</a>
								<ul id="dash_blog" class="nav flex-column collapse  nav-children">
									<li class="nav-item">
										<ul class="nav flex-column">
											<li class="nav-item">
												<a class="nav-link" href="posts.html"><span class="nav-link-text">Posts</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="add-new-post.html"><span class="nav-link-text">Add New Post</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="post-detail.html"><span class="nav-link-text">Post Detail</span></a>
											</li>
										</ul>	
									</li>	
								</ul>	
							</li>
							<li class="nav-item active">
								<a class="nav-link" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#dash_invoice">
									<span class="nav-icon-wrap">
										<span class="svg-icon">
											<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-file-digit" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
												<path d="M14 3v4a1 1 0 0 0 1 1h4" />
												<rect x="9" y="12" width="3" height="5" rx="1" />
												<path d="M17 21h-10a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2h7l5 5v11a2 2 0 0 1 -2 2z" />
												<path d="M15 12v5" />
											</svg>
										</span>
									</span>
									<span class="nav-link-text">Invoices</span>
								</a>
								<ul id="dash_invoice" class="nav flex-column collapse  nav-children">
									<li class="nav-item">
										<ul class="nav flex-column">
											<li class="nav-item active">
												<a class="nav-link" href="invoice-list.html"><span class="nav-link-text">Invoice List</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="invoice-templates.html"><span class="nav-link-text">Invoice Templates</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="create-invoice.html"><span class="nav-link-text">Create Invoice</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="invoice-preview.html"><span class="nav-link-text">Invoice Preview</span></a>
											</li>
										</ul>	
									</li>	
								</ul>	
							</li>
							<li class="nav-item">
								<a class="nav-link" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#dash_integ">
									<span class="nav-icon-wrap">
										<span class="svg-icon">
											<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-code" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
												<polyline points="7 8 3 12 7 16" />
												<polyline points="17 8 21 12 17 16" />
												<line x1="14" y1="4" x2="10" y2="20" />
											</svg>
										</span>
									</span>
									<span class="nav-link-text">Integrations</span>
								</a>
								<ul id="dash_integ" class="nav flex-column collapse  nav-children">
									<li class="nav-item">
										<ul class="nav flex-column">
											<li class="nav-item">
												<a class="nav-link" href="all-apps.html"><span class="nav-link-text">All Apps</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="integrations-detail.html"><span class="nav-link-text">App Detail</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="integrations.html"><span class="nav-link-text">Integrations</span></a>
											</li>
										</ul>	
									</li>	
								</ul>	
							</li>
						</ul>
					</div>
					<div class="menu-gap"></div>
					<div class="menu-group">
						<div class="nav-header">
							<span>Pages</span>
						</div>
						<ul class="navbar-nav flex-column">
							<li class="nav-item">
								<a class="nav-link" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#dash_pages">
									<span class="nav-icon-wrap">
										<span class="svg-icon">
											<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-user-plus" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
												<circle cx="9" cy="7" r="4" />
												<path d="M3 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2" />
												<path d="M16 11h6m-3 -3v6" />
											</svg>
										</span>
									</span>
									<span class="nav-link-text">Authentication</span>
								</a>
								<ul id="dash_pages" class="nav flex-column collapse  nav-children">
									<li class="nav-item">
										<ul class="nav flex-column">
											<li class="nav-item">
												<a class="nav-link" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#dash_log">
													<span class="nav-link-text">Log In</span> 
												</a>
												<ul id="dash_log" class="nav flex-column collapse  nav-children">
													<li class="nav-item">
														<ul class="nav flex-column">
															<li class="nav-item">
																<a class="nav-link" href="login.html"><span class="nav-link-text">Login</span></a>
															</li>
															<li class="nav-item">
																<a class="nav-link" href="login-simple.html"><span class="nav-link-text">Login Simple</span></a>
															</li>
															<li class="nav-item">
																<a class="nav-link" href="login-classic.html"><span class="nav-link-text">Login Classic</span></a>
															</li>
														</ul>	
													</li>	
												</ul>	
											</li>
											<li class="nav-item">
												<a class="nav-link" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#dash_sign">
													<span class="nav-link-text">Sign Up</span>
												</a>
												<ul id="dash_sign" class="nav flex-column collapse  nav-children">
													<li class="nav-item">
														<ul class="nav flex-column">
															<li class="nav-item">
																<a class="nav-link" href="signup.html"><span class="nav-link-text">Signup</span></a>
															</li>
															<li class="nav-item">
																<a class="nav-link" href="signup-simple.html"><span class="nav-link-text">Signup Simple</span></a>
															</li>
															<li class="nav-item">
																<a class="nav-link" href="signup-classic.html"><span class="nav-link-text">Signup Classic</span></a>
															</li>
														</ul>		
													</li>	
												</ul>	
											</li>
											<li class="nav-item">
												<a class="nav-link" href="lock-screen.html"><span class="nav-link-text">Lock Screen</span></a>
											</li>
											
											<li class="nav-item">
												<a class="nav-link" href="reset-password.html"><span class="nav-link-text">Reset Password</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="404.html"><span class="nav-link-text">Error 404</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="503.html"><span class="nav-link-text">Error 503</span></a>
											</li>
										</ul>
									</li>
								</ul>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#dash_profile">
									<span class="nav-icon-wrap">
										<span class="svg-icon">
											<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-user-search" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
												<circle cx="12" cy="7" r="4" />
												<path d="M6 21v-2a4 4 0 0 1 4 -4h1" />
												<circle cx="16.5" cy="17.5" r="2.5" />
												<path d="M18.5 19.5l2.5 2.5" />
											</svg>
										</span>
									</span>
									<span class="nav-link-text position-relative">Profile
										<span class="badge badge-danger badge-indicator position-absolute top-0 start-100"></span>
									</span>
								</a>
								<ul id="dash_profile" class="nav flex-column collapse  nav-children">
									<li class="nav-item">
										<ul class="nav flex-column">
											<li class="nav-item">
												<a class="nav-link" href="profile.html">
													<span class="nav-link-text">Profile</span>
												</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="edit-profile.html">
													<span class="nav-link-text">Edit Profile</span>
												</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="account.html">
													<span class="nav-link-text">Account</span>
												</a>
											</li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="menu-gap"></div>
					<div class="menu-group">
						<div class="nav-header">
							<span>Documentation</span>
						</div>
						<ul class="navbar-nav flex-column">
							<li class="nav-item">
								<a class="nav-link" href="https://nubra-ui.hencework.com/" target="_blank">
									<span class="nav-icon-wrap">
										<span class="svg-icon">
											<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-file-code-2" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
												<path d="M10 12h-1v5h1" />
												<path d="M14 12h1v5h-1" />
												<path d="M14 3v4a1 1 0 0 0 1 1h4" />
												<path d="M17 21h-10a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2h7l5 5v11a2 2 0 0 1 -2 2z" />
											</svg>
										</span>
									</span>
									<span class="nav-link-text">Documentation</span>
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="https://nubra-ui.hencework.com/avatar.html" target="_blank">
									<span class="nav-icon-wrap">
										<span class="svg-icon">
											<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-layout" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
												<rect x="4" y="4" width="6" height="5" rx="2" />
												<rect x="4" y="13" width="6" height="7" rx="2" />
												<rect x="14" y="4" width="6" height="16" rx="2" />
											</svg>
										</span>
									</span>
									<span class="nav-link-text">Components</span>
								</a>
							</li>
						</ul>
					</div>
					<div class="callout card card-flush bg-orange-light-5 text-center mt-5 w-220p mx-auto">
						<div class="card-body">
							<h5 class="h5">Quickly Build Applications</h5>
							<p class="p-sm card-text">Exclusively for webapps Based on Bootstrap</p>
							<a href="https://nubra-ui.hencework.com/" target="_blank" class="btn btn-primary btn-block">Go Nubra-UI</a>
						</div>
					</div>
				</div>
			</div>
			<!-- /Main Menu -->
		</div>
        <div id="hk_menu_backdrop" class="hk-menu-backdrop"></div>
        <!-- /Vertical Nav -->

		<!-- Main Content -->
		<div class="hk-pg-wrapper pb-0">
			<div class="hk-pg-body py-0">
				<div class="invoiceapp-wrap">
					<nav class="invoiceapp-sidebar">
						<div data-simplebar class="nicescroll-bar">
							<div class="menu-content-wrap">
								<button type="button" aria-expanded="false" data-bs-toggle="dropdown" class="btn btn-primary btn-rounded btn-block mb-4 dropdown-toggle">
									Create
								</button>
								<div role="menu">
									<a class="dropdown-item" href="create-invoice.html">Create Invoice</a>
								</div>
								<div class="menu-group">
									<ul class="nav nav-light navbar-nav flex-column">
										<li class="nav-item active">
											<a class="nav-link" href="javascript:void(0);">
												<span class="nav-icon-wrap"><span class="feather-icon"><i data-feather="users"></i></span></span>
												<span class="nav-link-text">All Invoices</span>
											</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="javascript:void(0);">
												<span class="nav-icon-wrap"><span class="feather-icon"><i data-feather="archive"></i></span></span>
												<span class="nav-link-text">Archived</span>
											</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="javascript:void(0);">
												<span class="nav-icon-wrap"><span class="feather-icon"><i data-feather="edit"></i></span></span>
												<span class="nav-link-text">Pending</span>
											</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="javascript:void(0);">
												<span class="nav-icon-wrap"><span class="feather-icon"><i data-feather="trash-2"></i></span></span>
												<span class="nav-link-text">일괄 삭제</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!--Sidebar Fixnav-->
						<div class="invoiceapp-fixednav">
							<div class="hk-toolbar">
								<ul class="nav nav-light">
									<li class="nav-item nav-link">
										<a class="btn btn-icon btn-flush-dark btn-rounded flush-soft-hover" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Settings" href="#"><span class="icon"><span class="feather-icon"><i data-feather="settings"></i></span></span></a>
									</li>
									<li class="nav-item nav-link">
										<a href="#" class="btn btn-icon btn-rounded btn-flush-dark flush-soft-hover" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Archive"><span class="icon"><span class="feather-icon"><i data-feather="archive"></i></span></span></a>
									</li>
									<li class="nav-item nav-link">
										<a href="#" class="btn btn-icon btn-rounded btn-flush-dark flush-soft-hover" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Help"><span class="icon"><span class="feather-icon"><i data-feather="book"></i></span></span></a>
									</li>
								</ul>
							</div>
						</div>
						<!--/ Sidebar Fixnav-->
					</nav>
					<div class="invoiceapp-content">
						<div class="invoiceapp-detail-wrap">
							<header class="invoice-header">
								<div class="d-flex align-items-center">
									<a class="invoiceapp-title dropdown-toggle link-dark" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
										<h1>급여 관리</h1>
									</a>
									
								</div>
								<div class="hk-sidebar-togglable"></div>
							</header>
							<div class="invoice-body">
								<div data-simplebar class="nicescroll-bar">
									<div class="invoice-list-view">
										<table id="datable_1" class="table nowrap w-100 mb-5">
											<thead>
												<tr>
													<th><span class="form-check mb-0">
														<input type="checkbox" class="form-check-input check-select-all" id="customCheck1">
														<label class="form-check-label" for="customCheck1"></label>
													</span></th>
													<th>날짜</th>
													<th>사원번호</th>
													<th>이름</th>
													<th>아이디</th>
													<th>부서명</th>
													<th>지급 합계액</th>
													<th>공제액</th>
													<th>실수령액</th>
													<th>수정/삭제</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td></td>
													<td><a href="#">2023년 12월 27일</a></td>
													<td><a href="#" class="table-link-text link-high-em">11234</a></td>
													<td>
														<div class="text-dark">홍길동</div>
													</td>
													<td><span>test1234</span></td>
													<td>마케팅부</td>
													<td>3,250,000원</td>
													<td>480,520원</td>
													<td>2,769,480원</td>
													<td>
															<div class="d-flex">
																<a class="btn btn-icon btn-flush-dark btn-rounded flush-soft-hover" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Edit" href="contact-details.html"><span class="btn-icon-wrap"><span class="feather-icon"><i data-feather="edit"></i></span></span></a>
																<a class="btn btn-icon btn-flush-dark btn-rounded flush-soft-hover del-button" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Delete" href="#"><span class="btn-icon-wrap"><span class="feather-icon"><i data-feather="trash-2"></i></span></span></a>
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<td></td>
													<td><a href="#">2023년 12월 27일</a></td>
													<td><a href="#" class="table-link-text link-high-em">11235</a></td>
													<td>
														<div class="text-dark">김철수</div>
													</td>
													<td><span>test1234</span></td>
													<td>마케팅부</td>
													<td>2,500,000원</td>
													<td>248,240원</td>
													<td>2,251,760원</td>
													<td>
															<div class="d-flex">
																<a class="btn btn-icon btn-flush-dark btn-rounded flush-soft-hover" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Edit" href="contact-details.html"><span class="btn-icon-wrap"><span class="feather-icon"><i data-feather="edit"></i></span></span></a>
																<a class="btn btn-icon btn-flush-dark btn-rounded flush-soft-hover del-button" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Delete" href="#"><span class="btn-icon-wrap"><span class="feather-icon"><i data-feather="trash-2"></i></span></span></a>
															</div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									
									</div>
								
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /Page Body -->
		</div>
		<!-- /Main Content -->
	</div>
    <!-- /Wrapper -->
	
	
	
	
	
	<!-- jQuery -->
    <script src="${path }/resources/vendors/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JS -->
   	<script src="${path }/resources/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

    <!-- FeatherIcons JS -->
    <script src="${path }/js/feather.min.js"></script>

    <!-- Fancy Dropdown JS -->
    <script src="${path }/resources/dist/js/dropdown-bootstrap-extended.js"></script>

	<!-- Simplebar JS -->
	<script src="${path }/resources/vendors/simplebar/dist/simplebar.min.js"></script>
	
	<!-- Data Table JS -->
    <script src="${path }/resources/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="${path }/resources/vendors/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
	<script src="${path }/resources/vendors/datatables.net-select/js/dataTables.select.min.js"></script>
     
	<!-- Init JS -->
	<script src="${path }/resources/js/init.js"></script>
	<script src="${path }/resources/js/invoice-data.js"></script>
	<script src="${path }/resources/js/chips-init.js"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>