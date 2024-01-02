<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<%-- <jsp:include page= "/WEB-INF/views/common/header.jsp"/> --%>
<jsp:include page= "/WEB-INF/views/common/header.jsp">
	<jsp:param value="collapsed" name="style"/>
	<jsp:param value="data-hover='active'" name="hover"/>
	
</jsp:include>
<%@ include file="/WEB-INF/views/common/sideBar.jsp"%>
	<!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
	
	<!-- Daterangepicker CSS -->
    <link href="vendors/daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css" />
	
	<!-- Bootstrap Dropzone CSS -->
	<link href="vendors/dropzone/dist/dropzone.min.css" rel="stylesheet" type="text/css"/>
	
	<!-- Dragula CSS -->
    <link href="vendors/dragula/dist/dragula.min.css" rel="stylesheet" type="text/css">

	<!-- CSS -->
    <link href="dist/css/style.css" rel="stylesheet" type="text/css">
<div class="hk-pg-wrapper pb-0">
			<!-- Page Body -->
			<div class="hk-pg-body py-0">
				<div class="todoapp-wrap todoapp-info-active">
					<nav class="todoapp-sidebar">
						<div data-simplebar class="nicescroll-bar">
							<div class="menu-content-wrap">
								<button class="btn btn-primary btn-rounded btn-block mb-4" data-bs-toggle="modal" data-bs-target="#add_new_task">프로젝트 등록</button>
								<div class="menu-group">
									<ul class="nav nav-light navbar-nav flex-column">
										<li class="nav-item active">
											<a class="nav-link" href="javascript:void(0);">
												<span class="nav-icon-wrap"><span class="feather-icon"><i data-feather="layout"></i></span></span>
												<span class="nav-link-text">전체 프로젝트</span>
											</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="javascript:void(0);">
												<span class="nav-icon-wrap"><span class="feather-icon"><i data-feather="list"></i></span></span>
												<span class="nav-link-text">내 프로젝트</span>
											</a>
										</li>
									</ul>
								</div>
								<div class="separator separator-light"></div>
								<div class="title-sm text-primary">Priority</div>
								<div class="menu-group">
									<ul class="nav nav-light navbar-nav flex-column">
										<li class="nav-item">
											<a class="nav-link link-with-badge" href="#">
												<span class="badge badge-danger badge-indicator badge-indicator-lg me-2"></span>
												<span class="nav-link-text">Urgent</span>
											</a>
										</li>
										<li class="nav-item">
											<a class="nav-link link-with-badge" href="#">
												<span class="badge badge-orange badge-indicator badge-indicator-lg me-2"></span>
												<span class="nav-link-text">High</span>
											</a>
										</li>
										<li class="nav-item">
											<a class="nav-link link-with-badge" href="#">
												<span class="badge badge-yellow badge-indicator badge-indicator-lg me-2"></span>
												<span class="nav-link-text">Medium</span>
											</a>
										</li>
										<li class="nav-item">
											<a class="nav-link link-with-badge" href="#">
												<span class="badge badge-gold badge-indicator badge-indicator-lg me-2"></span>
												<span class="nav-link-text">Low</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!--Sidebar Fixnav-->
						<div class="todoapp-fixednav">
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
					<div class="todoapp-content">
						<div class="todoapp-detail-wrap">
							<header class="todo-header">
								<div class="d-flex align-items-center">
									<a class="todoapp-title dropdown-toggle link-dark" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
										<h1>All Tasks</h1>
									</a>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="#"><span class="feather-icon dropdown-icon"><i data-feather="align-center"></i></span><span>전체 프로젝트</span></a>
										<a class="dropdown-item" href="#"><span class="feather-icon dropdown-icon"><i data-feather="list"></i></span><span>내 프로젝트</span></a>
										<a class="dropdown-item" href="#"><span class="feather-icon dropdown-icon"><i data-feather="clock"></i></span><span>진행중인 프로젝트</span></a>
										<a class="dropdown-item" href="#"><span class="feather-icon dropdown-icon"><i data-feather="droplet"></i></span><span>마감된 프로젝트</span></a>
										<div class="dropdown-divider"></div>
										<!-- <a class="dropdown-item" href="#">Urgent Priority</a>
										<a class="dropdown-item" href="#">High Priority</a>
										<a class="dropdown-item" href="#">Low Priority</a> -->
									</div>
									
								</div>
								<div class="todo-options-wrap">	
									<form class="d-sm-block d-none" role="search">
										<input type="text" class="form-control" placeholder="Search tasks">
									</form>
									<a class="btn btn-icon btn-flush-dark btn-rounded flush-soft-hover hk-navbar-togglable" href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Collapse">
										<span class="icon">
											<span class="feather-icon"><i data-feather="chevron-up"></i></span>
											<span class="feather-icon d-none"><i data-feather="chevron-down"></i></span>
										</span>
									</a>
								</div>
								<div class="hk-sidebar-togglable"></div>
							</header>
							<div class="todo-body">
								<div data-simplebar class="nicescroll-bar">
									<div class="container">
										<div class="todo-toolbar">
											<div>
												<select class="form-select form-select-sm">
													<option selected="">Bulk actions</option>
													<option value="1">One</option>
													<option value="2">Two</option>
													<option value="3">Three</option>
												</select>
												<button class="btn btn-sm btn-light ms-2">Apply</button>
												<select class="d-xxl-inline-block d-none  form-select form-select-sm mx-2">
													<option selected="">Sort by date</option>
													<option value="1">Sort By Time</option>
													<option value="2">Sort By Category</option>
													<option value="3">Sort By Priority</option>
													<option value="4">Sort By Title</option>
													<option value="5">Sort By Assignee</option>
												</select>
											</div>
											<div>
												<div class="paging-info d-xxl-inline-block d-none">1 - 10 of 30</div>
												<ul class="pagination custom-pagination pagination-simple m-0 ms-3">
													<li class="paginate_button page-item previous disabled" id="datable_1_previous"><a href="#" data-dt-idx="0" tabindex="0" class="page-link"><i class="ri-arrow-left-s-line"></i></a></li>
													<li class="paginate_button page-item active"><a href="#" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
													<li class="paginate_button page-item "><a href="#" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
													<li class="paginate_button page-item next" id="datable_1_next"><a href="#" data-dt-idx="3" tabindex="0" class="page-link"><i class="ri-arrow-right-s-line"></i></a></li>
												</ul>
											</div>
										</div>
										<div class="collapse-simple mt-4">
											<div class="card">
												<div class="card-header">
													<a role="button" data-bs-toggle="collapse" href="#todo_collapse_1" aria-expanded="true">
														<h5 class="mb-0">최근 등록된 프로젝트</h5>
													</a>
												</div>
												<div id="todo_collapse_1" class="collapse show">
													<div class="card-body">
														<ul id="todo_list" class="advance-list">
															<li class="advance-list-item single-task-list active-todo">
																<div class="d-flex align-items-center justify-content-between">
																	<div class="d-flex align-items-center">
																		<div class="form-check">
																			<input type="checkbox" class="form-check-input" id="customCheckTodo1">
																			<label class="form-check-label" for="customCheckTodo1"></label>
																		</div>	
																		<div>	
																			<span class="todo-star marked"><span class="feather-icon"><i data-feather="star"></i></span></span>
																			<span class="badge badge-danger badge-indicator badge-indicator-xl"></span>
																			<span class="todo-text text-dark text-truncate">Video conference with Canada Team</span>
																			<span class="badge badge-sm badge-outline badge-danger badge-wth-indicator badge-wth-icon ms-3 d-lg-inline-block d-none"><span><i class="badge-dot ri-checkbox-blank-circle-fill"></i>High</span></span>
																		</div>
																	</div>	
																	<div  class="d-flex flex-shrink-0 align-items-center ms-3">
																		<span class="todo-time d-lg-inline-block d-none text-primary me-3">Tomorrow</span>
																		<div class="avatar avatar-xs avatar-rounded d-md-inline-block d-none">
																			<img src="dist/img/avatar7.jpg" alt="user" class="avatar-img">
																		</div>
																		<span class="badge badge-primary ms-3 d-md-inline-block d-none">Calls</span>
																		<div class="dropdown">
																			<button class="btn btn-icon btn-rounded btn-flush-light flush-soft-hover dropdown-toggle no-caret" aria-expanded="false" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></button>
																			<div role="menu" class="dropdown-menu dropdown-menu-end">
																				<a class="dropdown-item edit-task" href="#">Edit Task</a>
																				<a class="dropdown-item view-task" href="#">View Task</a>
																				<a class="dropdown-item delete-task" href="#">Delete Task</a>
																			</div>
																		</div>
																	</div>
																</div>	
															</li>
															<li class="advance-list-item single-task-list">
																<div class="d-flex align-items-center justify-content-between">
																	<div class="d-flex align-items-center">
																		<div class="form-check">
																			<input type="checkbox" class="form-check-input" id="customCheckTodo2">
																			<label class="form-check-label" for="customCheckTodo2"></label>
																		</div>	
																		<div>	
																			<span class="todo-star"><span class="feather-icon"><i data-feather="star"></i></span></span>
																			<span class="badge badge-warning badge-indicator badge-indicator-xl"></span>
																			<span class="todo-text text-dark text-truncate">Client objective meeting</span>
																			<span class="badge  badge-sm badge-outline badge-danger badge-wth-indicator badge-wth-icon ms-3 d-lg-inline-block d-none"><span><i class="badge-dot ri-checkbox-blank-circle-fill"></i>High</span></span>
																		</div>
																	</div>	
																	<div  class="d-flex flex-shrink-0 align-items-center ms-3">
																		<span class="todo-time d-lg-inline-block d-none text-danger me-3">Yesterday</span>
																		<div class="avatar avatar-xs avatar-rounded d-md-inline-block d-none">
																			<img src="dist/img/avatar9.jpg" alt="user" class="avatar-img">
																		</div>
																		<span class="badge badge-violet ms-3 d-md-inline-block d-none">Conferences</span>
																		<div class="dropdown">
																			<button class="btn btn-icon btn-rounded btn-flush-light flush-soft-hover dropdown-toggle no-caret" aria-expanded="false" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></button>
																			<div role="menu" class="dropdown-menu dropdown-menu-end">
																				<a class="dropdown-item edit-task" href="#">Edit Task</a>
																				<a class="dropdown-item view-task" href="#">View Task</a>
																				<a class="dropdown-item delete-task" href="#">Delete Task</a>
																			</div>
																		</div>
																	</div>
																</div>	
															</li>
															<li class="advance-list-item single-task-list">
																<div class="d-flex align-items-center justify-content-between">
																	<div class="d-flex align-items-center">
																		<div class="form-check">
																			<input type="checkbox" class="form-check-input" id="customCheckTodo3">
																			<label class="form-check-label" for="customCheckTodo3"></label>
																		</div>	
																		<div>	
																			<span class="todo-star"><span class="feather-icon"><i data-feather="star"></i></span></span>
																			<span class="badge badge-danger badge-indicator badge-indicator-xl"></span>
																			<span class="todo-text text-dark text-truncate">Target market trend analysis on the go</span>
																		</div>
																	</div>	
																	<div  class="d-flex flex-shrink-0 align-items-center ms-3">
																		<span class="todo-time d-lg-inline-block d-none text-primary me-3">Today</span>
																		<div class="avatar avatar-xs avatar-rounded d-md-inline-block d-none">
																			<img src="dist/img/avatar7.jpg" alt="user" class="avatar-img">
																		</div>
																		<span class="badge badge-pink ms-3 d-md-inline-block d-none">Meetings</span>
																		<div class="dropdown">
																			<button class="btn btn-icon btn-rounded btn-flush-light flush-soft-hover dropdown-toggle no-caret" aria-expanded="false" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></button>
																			<div role="menu" class="dropdown-menu dropdown-menu-end">
																				<a class="dropdown-item edit-task" href="#">Edit Task</a>
																				<a class="dropdown-item view-task" href="#">View Task</a>
																				<a class="dropdown-item delete-task" href="#">Delete Task</a>
																			</div>
																		</div>
																	</div>
																</div>	
															</li>
															<li class="advance-list-item single-task-list">
																<div class="d-flex align-items-center justify-content-between">
																	<div class="d-flex align-items-center">
																		<div class="form-check">
																			<input type="checkbox" class="form-check-input" id="customCheckTodo4">
																			<label class="form-check-label" for="customCheckTodo4"></label>
																		</div>	
																		<div>	
																			<span class="todo-star marked"><span class="feather-icon"><i data-feather="star"></i></span></span>
																			<span class="badge badge-gold badge-indicator badge-indicator-xl"></span>
																			<span class="todo-text text-dark text-truncate">Send revised proposal to Mr. Dow Jones</span>
																			<span class="badge  badge-sm badge-outline badge-warning badge-wth-indicator badge-wth-icon ms-3 d-lg-inline-block d-none"><span><i class="badge-dot ri-checkbox-blank-circle-fill"></i>Low</span></span>
																		</div>
																	</div>	
																	<div  class="d-flex flex-shrink-0 align-items-center ms-3">
																		<span class="todo-time d-lg-inline-block d-none me-3">Saturday</span>
																		<div class="avatar avatar-xs avatar-rounded d-md-inline-block d-none">
																			<img src="dist/img/avatar10.jpg" alt="user" class="avatar-img">
																		</div>
																		<span class="badge badge-orange ms-3 d-md-inline-block d-none">Project</span>
																		<div class="dropdown">
																			<button class="btn btn-icon btn-rounded btn-flush-light flush-soft-hover dropdown-toggle no-caret" aria-expanded="false" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></button>
																			<div role="menu" class="dropdown-menu dropdown-menu-end">
																				<a class="dropdown-item edit-task" href="#">Edit Task</a>
																				<a class="dropdown-item view-task" href="#">View Task</a>
																				<a class="dropdown-item delete-task" href="#">Delete Task</a>
																			</div>
																		</div>
																	</div>
																</div>	
															</li>
															<li class="advance-list-item single-task-list">
																<div class="d-flex align-items-center justify-content-between">
																	<div class="d-flex align-items-center">
																		<div class="form-check">
																			<input type="checkbox" class="form-check-input" id="customCheckTodo5">
																			<label class="form-check-label" for="customCheckTodo5"></label>
																		</div>	
																		<div>	
																			<span class="todo-star"><span class="feather-icon"><i data-feather="star"></i></span></span>
																			<span class="badge badge-warning badge-indicator badge-indicator-xl"></span>
																			<span class="todo-text text-dark text-truncate">Set up first call for demo</span>
																		</div>
																	</div>	
																	<div  class="d-flex flex-shrink-0 align-items-center ms-3">
																		<span class="todo-time d-lg-inline-block d-none me-3">Sunday</span>
																		<div class="avatar avatar-xs avatar-primary avatar-rounded d-md-inline-block d-none">
																			<span class="initial-wrap">H</span>
																		</div>
																		<div class="dropdown">
																			<button class="btn btn-icon btn-rounded btn-flush-light flush-soft-hover dropdown-toggle no-caret" aria-expanded="false" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></button>
																			<div role="menu" class="dropdown-menu dropdown-menu-end">
																				<a class="dropdown-item edit-task" href="#">Edit Task</a>
																				<a class="dropdown-item view-task" href="#">View Task</a>
																				<a class="dropdown-item delete-task" href="#">Delete Task</a>
																			</div>
																		</div>
																	</div>
																</div>	
															</li>
															<li class="advance-list-item single-task-list">
																<div class="d-flex align-items-center justify-content-between">
																	<div class="d-flex align-items-center">
																		<div class="form-check">
																			<input type="checkbox" class="form-check-input" id="customCheckTodo6">
																			<label class="form-check-label" for="customCheckTodo6"></label>
																		</div>	
																		<div>	
																			<span class="todo-star marked"><span class="feather-icon"><i data-feather="star"></i></span></span>
																			<span class="badge badge-danger badge-indicator badge-indicator-xl"></span>
																			<span class="todo-text text-dark text-truncate">Upgrade dependency on resouces</span>
																			<span class="badge  badge-sm badge-outline badge-orange badge-wth-indicator badge-wth-icon ms-3 d-lg-inline-block d-none"><span><i class="badge-dot ri-checkbox-blank-circle-fill"></i>Medium</span></span>
																		</div>
																	</div>	
																	<div  class="d-flex flex-shrink-0 align-items-center ms-3">
																		<span class="todo-time d-lg-inline-block d-none me-3">27 Nov, 2020</span>
																		<div class="avatar avatar-xs avatar-rounded d-md-inline-block d-none">
																			<img src="dist/img/avatar15.jpg" alt="user" class="avatar-img">
																		</div>
																		<span class="badge badge-primary ms-3 d-md-inline-block d-none">Calls</span>
																		<div class="dropdown">
																			<button class="btn btn-icon btn-rounded btn-flush-light flush-soft-hover dropdown-toggle no-caret" aria-expanded="false" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></button>
																			<div role="menu" class="dropdown-menu dropdown-menu-end">
																				<a class="dropdown-item edit-task" href="#">Edit Task</a>
																				<a class="dropdown-item view-task" href="#">View Task</a>
																				<a class="dropdown-item delete-task" href="#">Delete Task</a>
																			</div>
																		</div>
																	</div>
																</div>	
															</li>
															<li class="advance-list-item single-task-list">
																<div class="d-flex align-items-center justify-content-between">
																	<div class="d-flex align-items-center">
																		<div class="form-check">
																			<input type="checkbox" class="form-check-input" id="customCheckTodo7">
																			<label class="form-check-label" for="customCheckTodo7"></label>
																		</div>	
																		<div>	
																			<span class="todo-star"><span class="feather-icon"><i data-feather="star"></i></span></span>
																			<span class="badge badge-danger badge-indicator badge-indicator-xl"></span>
																			<span class="todo-text text-dark text-truncate">Update contribution guidelines and licence</span>
																		</div>
																	</div>	
																	<div  class="d-flex flex-shrink-0 align-items-center ms-3">
																		<span class="todo-time d-lg-inline-block d-none text-primary me-3">Today</span>
																		<div class="avatar avatar-xs avatar-rounded d-md-inline-block d-none">
																			<img src="dist/img/avatar15.jpg" alt="user" class="avatar-img">
																		</div>
																		<span class="badge badge-pink ms-3 d-md-inline-block d-none">Meetings</span>
																		<div class="dropdown">
																			<button class="btn btn-icon btn-rounded btn-flush-light flush-soft-hover dropdown-toggle no-caret" aria-expanded="false" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></button>
																			<div role="menu" class="dropdown-menu dropdown-menu-end">
																				<a class="dropdown-item edit-task" href="#">Edit Task</a>
																				<a class="dropdown-item view-task" href="#">View Task</a>
																				<a class="dropdown-item delete-task" href="#">Delete Task</a>
																			</div>
																		</div>
																	</div>
																</div>	
															</li>
														</ul>
													</div>
												</div>	
											</div>	
										</div>	
										<div class="collapse-simple mt-4">
											<div class="card">
												<div class="card-header">
													<a role="button" data-bs-toggle="collapse" href="#todo_collapse_2" aria-expanded="true">
														<h5 class="mb-0">Yesterday</h5>
													</a>
												</div>
												<div id="todo_collapse_2" class="collapse show">
													<div class="card-body">
														<ul id="todo_list_1" class="advance-list">
															<li class="advance-list-item single-task-list">
																<div class="d-flex align-items-center justify-content-between">
																	<div class="d-flex align-items-center">
																		<div class="form-check">
																			<input type="checkbox" class="form-check-input" id="customCheckTodo8">
																			<label class="form-check-label" for="customCheckTodo8"></label>
																		</div>	
																		<div>	
																			<span class="todo-star"><span class="feather-icon"><i data-feather="star"></i></span></span>
																			<span class="badge badge-warning badge-indicator badge-indicator-xl"></span>
																			<span class="todo-text text-dark text-truncate">Fix tooltip word wrap/break rules</span>
																			<span class="badge  badge-sm badge-outline badge-danger badge-wth-indicator badge-wth-icon ms-3 d-lg-inline-block d-none"><span><i class="badge-dot ri-checkbox-blank-circle-fill"></i>High</span></span>
																		</div>
																	</div>	
																	<div  class="d-flex flex-shrink-0 align-items-center ms-3">
																		<span class="todo-time d-lg-inline-block d-none text-danger me-3">4 Days ago</span>
																		<div class="avatar avatar-xs avatar-rounded d-md-inline-block d-none">
																			<img src="dist/img/avatar2.jpg" alt="user" class="avatar-img">
																		</div>
																		<span class="badge badge-warning ms-3 d-md-inline-block d-none">Project</span>
																		<div class="dropdown">
																			<button class="btn btn-icon btn-rounded btn-flush-light flush-soft-hover dropdown-toggle no-caret" aria-expanded="false" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></button>
																			<div role="menu" class="dropdown-menu dropdown-menu-end">
																				<a class="dropdown-item edit-task" href="#">Edit Task</a>
																				<a class="dropdown-item view-task" href="#">View Task</a>
																				<a class="dropdown-item delete-task" href="#">Delete Task</a>
																			</div>
																		</div>
																	</div>
																</div>	
															</li>
															<li class="advance-list-item single-task-list">
																<div class="d-flex align-items-center justify-content-between">
																	<div class="d-flex align-items-center">
																		<div class="form-check">
																			<input type="checkbox" class="form-check-input" id="customCheckTodo9">
																			<label class="form-check-label" for="customCheckTodo9"></label>
																		</div>	
																		<div>	
																			<span class="todo-star"><span class="feather-icon"><i data-feather="star"></i></span></span>
																			<span class="badge badge-warning badge-indicator badge-indicator-xl"></span>
																			<span class="todo-text text-dark text-truncate">Redesigning the base model</span>
																			<span class="badge  badge-sm badge-outline badge-danger badge-wth-indicator badge-wth-icon ms-3 d-lg-inline-block d-none"><span><i class="badge-dot ri-checkbox-blank-circle-fill"></i>Urgent</span></span>
																		</div>
																	</div>	
																	<div  class="d-flex flex-shrink-0 align-items-center ms-3">
																		<span class="todo-time d-lg-inline-block d-none me-3">2 Aug, 2020</span>
																		<div class="avatar avatar-xs avatar-rounded d-md-inline-block d-none">
																			<img src="dist/img/avatar13.jpg" alt="user" class="avatar-img">
																		</div>
																		<div class="dropdown">
																			<button class="btn btn-icon btn-rounded btn-flush-light flush-soft-hover dropdown-toggle no-caret" aria-expanded="false" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></button>
																			<div role="menu" class="dropdown-menu dropdown-menu-end">
																				<a class="dropdown-item edit-task" href="#">Edit Task</a>
																				<a class="dropdown-item view-task" href="#">View Task</a>
																				<a class="dropdown-item delete-task" href="#">Delete Task</a>
																			</div>
																		</div>
																	</div>
																</div>	
															</li>
															<li class="advance-list-item single-task-list">
																<div class="d-flex align-items-center justify-content-between">
																	<div class="d-flex align-items-center">
																		<div class="form-check">
																			<input type="checkbox" class="form-check-input" id="customCheckTodo10">
																			<label class="form-check-label" for="customCheckTodo10"></label>
																		</div>	
																		<div>	
																			<span class="todo-star marked"><span class="feather-icon"><i data-feather="star"></i></span></span>
																			<span class="badge badge-gold badge-indicator badge-indicator-xl"></span>
																			<span class="todo-text text-dark text-truncate">Configure security analysis feature</span>
																			<span class="badge  badge-sm badge-outline badge-orange badge-wth-indicator badge-wth-icon ms-3 d-lg-inline-block d-none"><span><i class="badge-dot ri-checkbox-blank-circle-fill"></i>Medium</span></span>
																		</div>
																	</div>	
																	<div  class="d-flex flex-shrink-0 align-items-center ms-3">
																		<span class="todo-time d-lg-inline-block d-none me-3">8 Aug, 2020</span>
																		<div class="avatar avatar-xs avatar-rounded d-md-inline-block d-none">
																			<img src="dist/img/avatar7.jpg" alt="user" class="avatar-img">
																		</div>
																		<span class="badge badge-primary ms-3 d-md-inline-block d-none">Calls</span>
																		<div class="dropdown">
																			<button class="btn btn-icon btn-rounded btn-flush-light flush-soft-hover dropdown-toggle no-caret" aria-expanded="false" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></button>
																			<div role="menu" class="dropdown-menu dropdown-menu-end">
																				<a class="dropdown-item edit-task" href="#">Edit Task</a>
																				<a class="dropdown-item view-task" href="#">View Task</a>
																				<a class="dropdown-item delete-task" href="#">Delete Task</a>
																			</div>
																		</div>
																	</div>
																</div>	
															</li>
															<li class="advance-list-item single-task-list">
																<div class="d-flex align-items-center justify-content-between">
																	<div class="d-flex align-items-center">
																		<div class="form-check">
																			<input type="checkbox" class="form-check-input" id="customCheckTodo11">
																			<label class="form-check-label" for="customCheckTodo11"></label>
																		</div>	
																		<div>	
																			<span class="todo-star"><span class="feather-icon"><i data-feather="star"></i></span></span>
																			<span class="badge badge-danger badge-indicator badge-indicator-xl"></span>
																			<span class="todo-text text-dark text-truncate">Remove notifications panel from inbox</span>
																			<span class="badge  badge-sm badge-outline badge-danger badge-wth-indicator badge-wth-icon ms-3 d-lg-inline-block d-none"><span><i class="badge-dot ri-checkbox-blank-circle-fill"></i>Urgent</span></span>
																		</div>
																	</div>	
																	<div  class="d-flex flex-shrink-0 align-items-center ms-3">
																		<span class="todo-time d-lg-inline-block d-none me-3">24 Sep, 2020</span>
																		<div class="avatar avatar-xs avatar-rounded d-md-inline-block d-none">
																			<img src="dist/img/avatar15.jpg" alt="user" class="avatar-img">
																		</div>
																		<span class="badge badge-pink ms-3 d-md-inline-block d-none">Meetings</span>
																		<div class="dropdown">
																			<button class="btn btn-icon btn-rounded btn-flush-light flush-soft-hover dropdown-toggle no-caret" aria-expanded="false" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></button>
																			<div role="menu" class="dropdown-menu dropdown-menu-end">
																				<a class="dropdown-item edit-task" href="#">Edit Task</a>
																				<a class="dropdown-item view-task" href="#">View Task</a>
																				<a class="dropdown-item delete-task" href="#">Delete Task</a>
																			</div>
																		</div>
																	</div>
																</div>	
															</li>
														</ul>
													
													</div>
												</div>	
											</div>	
										</div>	
										<div class="collapse-simple mt-4">
											<div class="card">
												<div class="card-header">
													<a role="button" data-bs-toggle="collapse" href="#todo_collapse_3" aria-expanded="true">
														<h5 class="mb-0">15 July, 20</h5>
													</a>
												</div>
												<div id="todo_collapse_3" class="collapse show">
													<div class="card-body">
														<ul id="todo_list_2" class="advance-list">
															<li class="advance-list-item single-task-list">
																<div class="d-flex align-items-center justify-content-between">
																	<div class="d-flex align-items-center">
																		<div class="form-check">
																			<input type="checkbox" class="form-check-input" id="customCheckTodo12">
																			<label class="form-check-label" for="customCheckTodo12"></label>
																		</div>	
																		<div>	
																			<span class="todo-star"><span class="feather-icon"><i data-feather="star"></i></span></span>
																			<span class="badge badge-warning badge-indicator badge-indicator-xl"></span>
																			<span class="todo-text text-dark text-truncate">Send an invite to join project</span>
																			<span class="badge  badge-sm badge-outline badge-warning badge-wth-indicator badge-wth-icon ms-3 d-lg-inline-block d-none"><span><i class="badge-dot ri-checkbox-blank-circle-fill"></i>Low</span></span>
																		</div>
																	</div>	
																	<div  class="d-flex flex-shrink-0 align-items-center ms-3">
																		<span class="todo-time d-lg-inline-block d-none text-danger me-3">Yesterday</span>
																		<div class="avatar avatar-xs avatar-rounded d-md-inline-block d-none">
																			<img src="dist/img/avatar7.jpg" alt="user" class="avatar-img">
																		</div>
																		<span class="badge badge-warning ms-3 d-md-inline-block d-none">Project</span>
																		<div class="dropdown">
																			<button class="btn btn-icon btn-rounded btn-flush-light flush-soft-hover dropdown-toggle no-caret" aria-expanded="false" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></button>
																			<div role="menu" class="dropdown-menu dropdown-menu-end">
																				<a class="dropdown-item edit-task" href="#">Edit Task</a>
																				<a class="dropdown-item view-task" href="#">View Task</a>
																				<a class="dropdown-item delete-task" href="#">Delete Task</a>
																			</div>
																		</div>
																	</div>
																</div>	
															</li>
															<li class="advance-list-item single-task-list">
																<div class="d-flex align-items-center justify-content-between">
																	<div class="d-flex align-items-center">
																		<div class="form-check">
																			<input type="checkbox" class="form-check-input" id="customCheckTodo13">
																			<label class="form-check-label" for="customCheckTodo13"></label>
																		</div>	
																		<div>	
																			<span class="todo-star"><span class="feather-icon"><i data-feather="star"></i></span></span>
																			<span class="badge badge-danger badge-indicator badge-indicator-xl"></span>
																			<span class="todo-text text-dark text-truncate">Connect to software tools</span>
																			<span class="badge  badge-sm badge-outline badge-danger badge-wth-indicator badge-wth-icon ms-3 d-lg-inline-block d-none"><span><i class="badge-dot ri-checkbox-blank-circle-fill"></i>High</span></span>
																		</div>
																	</div>	
																	<div  class="d-flex flex-shrink-0 align-items-center ms-3">
																		<span class="todo-time d-lg-inline-block d-none me-3">Saturday</span>
																		<div class="avatar avatar-xs avatar-rounded d-md-inline-block d-none">
																			<img src="dist/img/avatar10.jpg" alt="user" class="avatar-img">
																		</div>
																		<div class="dropdown">
																			<button class="btn btn-icon btn-rounded btn-flush-light flush-soft-hover dropdown-toggle no-caret" aria-expanded="false" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></button>
																			<div role="menu" class="dropdown-menu dropdown-menu-end">
																				<a class="dropdown-item edit-task" href="#">Edit Task</a>
																				<a class="dropdown-item view-task" href="#">View Task</a>
																				<a class="dropdown-item delete-task" href="#">Delete Task</a>
																			</div>
																		</div>
																	</div>
																</div>	
															</li>
															<li class="advance-list-item single-task-list">
																<div class="d-flex align-items-center justify-content-between">
																	<div class="d-flex align-items-center">
																		<div class="form-check">
																			<input type="checkbox" class="form-check-input" id="customCheckTodo14">
																			<label class="form-check-label" for="customCheckTodo14"></label>
																		</div>	
																		<div>	
																			<span class="todo-star"><span class="feather-icon"><i data-feather="star"></i></span></span>
																			<span class="badge badge-danger badge-indicator badge-indicator-xl"></span>
																			<span class="todo-text text-dark text-truncate">Speed up project review with planner</span>
																			<span class="badge  badge-sm badge-outline badge-danger badge-wth-indicator badge-wth-icon ms-3 d-lg-inline-block d-none"><span><i class="badge-dot ri-checkbox-blank-circle-fill"></i>High</span></span>
																		</div>
																	</div>	
																	<div  class="d-flex flex-shrink-0 align-items-center ms-3">
																		<span class="todo-time d-lg-inline-block d-none me-3">15 Oct, 2020</span>
																		<div class="avatar avatar-xs avatar-rounded d-md-inline-block d-none">
																			<img src="dist/img/avatar9.jpg" alt="user" class="avatar-img">
																		</div>
																		<span class="badge badge-primary ms-3 d-md-inline-block d-none">Calls</span>
																		<div class="dropdown">
																			<button class="btn btn-icon btn-rounded btn-flush-light flush-soft-hover dropdown-toggle no-caret" aria-expanded="false" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></button>
																			<div role="menu" class="dropdown-menu dropdown-menu-end">
																				<a class="dropdown-item edit-task" href="#">Edit Task</a>
																				<a class="dropdown-item view-task" href="#">View Task</a>
																				<a class="dropdown-item delete-task" href="#">Delete Task</a>
																			</div>
																		</div>
																	</div>
																</div>	
															</li>
														</ul>
													</div>
												</div>	
											</div>	
										</div>	
										<div class="row mt-3">
											<div class="col-sm-12">
												<div class="float-end text-end">
													<ul class="pagination custom-pagination pagination-simple active-theme">
														<li class="paginate_button page-item previous disabled"><a href="#" class="page-link"><i class="ri-arrow-left-s-line"></i></a></li>
														<li class="paginate_button page-item active"><a href="#" class="page-link">1</a></li>
														<li class="paginate_button page-item "><a href="#" class="page-link">2</a></li>
														<li class="paginate_button page-item "><a href="#" class="page-link">3</a></li>
														<li class="paginate_button page-item next"><a href="#" class="page-link"><i class="ri-arrow-right-s-line"></i></a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="task-info">
								<div data-simplebar class="nicescroll-bar">
									<header class="task-header">
										<div class="d-flex align-items-center">
											<div id="sparkline_chart_7"></div>
											<div class="form-check mx-lg-3 ms-3">
												<input type="checkbox" class="form-check-input" id="customCheckcTask" checked>
												<label class="form-check-label d-lg-inline d-none" for="customCheckcTask">Mark as completed</label>
											</div>
											<button class="btn btn-flush-light flush-outline-hover d-lg-inline-block d-none"><span><span class="icon"><span class="feather-icon"><i data-feather="link"></i></span></span><span>Copy Link</span></span></button>
											<button class="btn btn-icon btn-light btn-rounded d-lg-none d-lg-inline-block ms-1"><span><span class="icon"><span class="feather-icon"><i data-feather="link"></i></span></span></span></button>
										</div>
										<div class="task-options-wrap">	
											<span class="task-star marked"><span class="feather-icon"><i data-feather="star"></i></span></span>
											<a class="btn btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret ms-1" href="#" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></a>
											<div class="dropdown-menu dropdown-menu-end">
												<h6 class="dropdown-header">Action</h6>
												<a class="dropdown-item" href="#"><span class="feather-icon dropdown-icon"><i data-feather="edit"></i></span><span>Assign to</span></a>
												<a class="dropdown-item" href="#"><span class="feather-icon dropdown-icon"><i data-feather="user"></i></span><span>Attach files</span></a>
												<a class="dropdown-item" href="#"><span class="feather-icon dropdown-icon"><i data-feather="paperclip"></i></span><span>Apply Labels</span></a>
												<a class="dropdown-item" href="#"><span class="feather-icon dropdown-icon"><i data-feather="tag"></i></span><span>Set Due Date</span></a>
												<a class="dropdown-item" href="#"><span class="feather-icon dropdown-icon"><i data-feather="calendar"></i></span><span>Follow Task</span></a>
												<a class="dropdown-item" href="#"><span class="feather-icon dropdown-icon"><i data-feather="bookmark"></i></span><span>Set Due Date</span></a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#"><span class="feather-icon dropdown-icon"><i data-feather="arrow-up"></i></span><span>Set as Top Priority</span></a>
												<a class="dropdown-item" href="#"><span class="feather-icon dropdown-icon"><i data-feather="repeat"></i></span><span>Change Status</span></a>
												<a class="dropdown-item" href="#"><span class="feather-icon dropdown-icon"><i data-feather="pocket"></i></span><span>Save as Template</span></a>
												<a class="dropdown-item" href="#"><span class="feather-icon dropdown-icon"><i data-feather="archive"></i></span><span>Move to archive</span></a>
												<a class="dropdown-item delete-task" href="#"><span class="feather-icon dropdown-icon"><i data-feather="trash-2"></i></span><span>Delete</span></a>
											</div>
											<a class="btn btn-icon btn-flush-dark btn-rounded flush-soft-hover close-task-info" href="#" ><span class="icon"><span class="feather-icon"><i data-feather="x"></i></span></span></a>
										</div>
									</header>
									<div class="task-detail-body">
										<div class="alert alert-primary alert-wth-icon fade show mb-4" role="alert">
											<span class="alert-icon-wrap"><span class="feather-icon"><i class="zmdi zmdi-lock"></i></span></span> This task is private for Jampack Team
										</div>
										<h4 class="d-flex align-items-center fw-bold mb-0 inline-editable-wrap"><span class="editable">Framworking Building</span><a class="btn btn-sm btn-icon btn-flush-light btn-rounded flush-soft-hover edit-tyn ms-1" href="#"><span class="icon"><span class="feather-icon"><i data-feather="edit-2"></i></span></span></a></h4>
										<p  class="d-flex align-items-center inline-editable-wrap"><span class="editable">Instant rebuilding of assets during development</span><a class="btn btn-sm btn-icon btn-flush-light btn-rounded flush-soft-hover edit-tyn ms-1" href="#"><span class="icon"><span class="feather-icon"><i data-feather="edit-2"></i></span></span></a></p>
										<div class="avatar-group avatar-group avatar-group-overlapped mt-3">
											<div class="avatar avatar-rounded" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Katharine">
												<img src="dist/img/avatar8.jpg" alt="user" class="avatar-img">
											</div>
											<div class="avatar avatar-rounded" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Dean">
												<img src="dist/img/avatar13.jpg" alt="user" class="avatar-img">
											</div>
											<div class="avatar avatar-xs avatar-soft-danger avatar-rounded" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Tom">
												<span class="initial-wrap">T</span>
											</div>
											<div class="avatar avatar-rounded" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Morgan">
												<img src="dist/img/avatar2.jpg" alt="user" class="avatar-img">
											</div>
											<div class="avatar avatar-icon avatar-primary avatar-rounded" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Add new">
												<span class="initial-wrap"><span class="feather-icon"><i data-feather="plus"></i></span></span>
											</div>
										</div>	
										<form class="row">
											<div class="col-md-6">
												<div class="title title-wth-divider my-4"><span>마감 일자</span></div>
												<input class="form-control" type="text" name="single-date" />
											</div>
											<div class="col-md-6">
												<div class="title title-wth-divider my-4"><span>진행 상태</span></div>
												<div class="dropdown">
													<button aria-expanded="false" data-bs-toggle="dropdown" class="btn btn-warning btn-rounded dropdown-toggle" type="button">In Progress</button>
													<div role="menu" class="dropdown-menu">
														<a class="dropdown-item" href="#">Action</a>
														<a class="dropdown-item" href="#">Another action</a>
														<a class="dropdown-item" href="#">Something else here</a>
														<div class="dropdown-divider"></div>
														<a class="dropdown-item" href="#">Separated link</a>
													</div>
												</div>
											</div>
											<div class="col-md-12">
												<div class="title title-wth-divider my-4"><span>Labels</span></div>
												<input type="text" id="exist_values1" class="user-input-tagged form-control" name="tag-3" value="Framework,Html" placeholder="Add Chips">
											</div>
										</form>
										<ul class="nav nav-justified nav-light nav-tabs nav-segmented-tabs active-theme mt-4">
											<li class="nav-item">
												<a class="nav-link active" data-bs-toggle="tab" href="#tab_checklist">
													<span class="nav-link-text">체크리스트</span>
												</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" data-bs-toggle="tab" href="#tab_comments">
													<span class="nav-link-text badge-on-text">댓글</span>
												</a>
											</li>
											<!-- <li class="nav-item">
												<a class="nav-link" data-bs-toggle="tab" href="#tab_files">
													<span class="nav-link-text badge-on-text">Files</span>
												</a>
											</li> -->
										</ul>
										<div class="tab-content mt-7">
											<div class="tab-pane fade show active" id="tab_checklist">
												<div class="d-flex align-items-center justify-content-between mb-2">
													<div class="title title-lg mb-0"><span>Checklist</span></div>
													<a href="#" class="btn btn-xs btn-icon btn-rounded btn-light" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Add Category"><span class="icon"><span class="feather-icon"><i data-feather="plus"></i></span></span></a>
												</div>
												<div class="hk-checklist">
													<div class="form-check">
														<input type="checkbox" class="form-check-input" id="customCheckList1" checked="">
														<label class="form-check-label" for="customCheckList1">
															Video conference with canada Team
															<span class="done-strikethrough"></span>
														</label>
														<a href="#" class="btn btn-xs btn-icon btn-rounded btn-flush-light flush-soft-hover delete-checklist"><span class="icon"><span class="feather-icon"><i data-feather="trash-2"></i></span></span></a>
													</div>
													<div class="form-check">
														<input type="checkbox" class="form-check-input" id="customCheckList2" checked="">
														<label class="form-check-label" for="customCheckList2">
															Client objective meeting
															<span class="done-strikethrough"></span>
														</label>
														<a href="#" class="btn btn-xs btn-icon btn-rounded btn-flush-light flush-soft-hover delete-checklist"><span class="icon"><span class="feather-icon"><i data-feather="trash-2"></i></span></span></a>
													</div>
													<div class="form-check">
														<input type="checkbox" class="form-check-input" id="customCheckList3" checked="">
														<label class="form-check-label" for="customCheckList3">
															Upgrade dependency on resources
															<span class="done-strikethrough"></span>
														</label>
														<a href="#" class="btn btn-xs btn-icon btn-rounded btn-flush-light flush-soft-hover delete-checklist"><span class="icon"><span class="feather-icon"><i data-feather="trash-2"></i></span></span></a>
													</div>
													<div class="form-check">
														<input type="checkbox" class="form-check-input" id="customCheckList4">
														<label class="form-check-label" for="customCheckList4">
															Invite jaqueline on video conference
															<span class="done-strikethrough"></span>
														</label>
														<a href="#" class="btn btn-xs btn-icon btn-rounded btn-flush-light flush-soft-hover delete-checklist"><span class="icon"><span class="feather-icon"><i data-feather="trash-2"></i></span></span></a>
													</div>
													<a href="#" class="d-flex align-items-center add-new-checklist">
														<span class="feather-icon fe-x me-2"><i data-feather="plus-square"></i></span>
														<span>New Item</span>
													</a>
												</div>
												<div class="d-flex align-items-center justify-content-between">
													<div class="title title-wth-divider flex-grow-1 my-4 me-2"><span>Canada team task</span></div>
													<div>
														<a href="#" class="btn btn-xs btn-icon btn-rounded btn-flush-light flush-soft-hover delete-checklist" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Edit"><span class="icon"><span class="feather-icon"><i data-feather="edit-2"></i></span></span></a>
														<a href="#" class="btn btn-xs btn-icon btn-rounded btn-flush-light flush-soft-hover delete-checklist"><span class="icon"><span class="feather-icon"><i data-feather="trash-2"></i></span></span></a>
													</div>
												</div>
												<div class="hk-checklist">
													<div class="form-check">
														<input type="checkbox" class="form-check-input" id="customCheckList5" checked="">
														<label class="form-check-label" for="customCheckList5">
															Upgrade dependency on resources
															<span class="done-strikethrough"></span>
														</label>
														<a href="#" class="btn btn-xs btn-icon btn-rounded btn-flush-light flush-soft-hover delete-checklist"><span class="icon"><span class="feather-icon"><i data-feather="trash-2"></i></span></span></a>
													</div>
													<div class="form-check">
														<input type="checkbox" class="form-check-input" id="customCheckList6">
														<label class="form-check-label" for="customCheckList6">
															Invite jaqueline on video conference
															<span class="done-strikethrough"></span>
														</label>
														<a href="#" class="btn btn-xs btn-icon btn-rounded btn-flush-light flush-soft-hover delete-checklist"><span class="icon"><span class="feather-icon"><i data-feather="trash-2"></i></span></span></a>
													</div>
													<a href="#" class="d-flex align-items-center add-new-checklist">
														<span class="feather-icon fe-x me-2"><i data-feather="plus-square"></i></span>
														<span>New Item</span>
													</a>
												</div>
												<div class="d-flex align-items-center justify-content-between mt-5 mb-2">
													<div class="title title-lg mb-0"><span>Notes</span></div>
													<a href="#" class="btn btn-xs btn-icon btn-rounded btn-light" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Add Category"><span class="icon"><span class="feather-icon"><i data-feather="plus"></i></span></span></a>
												</div>
												<div class="card card-border note-block bg-orange-light-5">
													<div class="card-body">
														<div class="card-action-wrap">
															<button class="btn btn-xs btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret" aria-expanded="false" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></button>
															<div role="menu" class="dropdown-menu dropdown-menu-end">
																<a class="dropdown-item" href="#">Action</a>
																<a class="dropdown-item" href="#">Another action</a>
																<a class="dropdown-item" href="#">Something else here</a>
																<div class="dropdown-divider"></div>
																<a class="dropdown-item" href="#">Separated link</a>
															</div>
														</div>
														<div class="media align-items-center">
															<div class="media-head">
																<div class="avatar avatar-xs avatar-rounded">
																	<img src="dist/img/avatar2.jpg" alt="user" class="avatar-img">
																</div>
															</div>
															<div class="media-body">
																<div>Martin Luther</div>
																<div>9 Apr, 20, 7:14 AM</div>
															</div>
														</div>
														<p>@<a href="#" class="fw-medium">Charlie Darvin</a> From there, you can run grunt compile, grunt migrate and grunt test to compile your contracts, deploy those contracts to the network, and run their associated unit tests.</p>
													</div>
												</div>
												<div class="card card-border note-block bg-orange-light-5">
													<div class="card-body">
														<div class="card-action-wrap">
															<button class="btn btn-xs btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret" aria-expanded="false" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></button>
															<div role="menu" class="dropdown-menu dropdown-menu-end">
																<a class="dropdown-item" href="#">Action</a>
																<a class="dropdown-item" href="#">Another action</a>
																<a class="dropdown-item" href="#">Something else here</a>
																<div class="dropdown-divider"></div>
																<a class="dropdown-item" href="#">Separated link</a>
															</div>
														</div>
														<div class="media align-items-center">
															<div class="media-head">
																<div class="avatar avatar-xs avatar-rounded">
																	<img src="dist/img/avatar3.jpg" alt="user" class="avatar-img">
																</div>
															</div>
															<div class="media-body">
																<div>Katherine Jones</div>
																<div>8 Apr, 20, 5:30 PM</div>
															</div>
														</div>
														<p>@<a href="#" class="fw-medium">Martin Luther</a> Viscosity ratio for "Appear view" link text is 3.7:1 which is less </p>
													</div>
												</div>
												<a href="#" class="btn btn-outline-light btn-block">View more</a>
											</div>
											<div class="tab-pane fade" id="tab_comments">
												<div class="d-flex align-items-center justify-content-between mb-2">
													<div class="title title-lg mb-0"><span>3 Responses</span></div>
													<a href="#" class="btn btn-xs btn-icon btn-rounded btn-light" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Add Board"><span class="icon"><span class="feather-icon"><i data-feather="plus"></i></span></span></a>
												</div>
												<div class="comment-block">
													<div class="media">
														<div class="media-head">
															<div class="avatar avatar-xs avatar-rounded">
																<img src="dist/img/avatar4.jpg" alt="user" class="avatar-img">
															</div>
														</div>
														<div class="media-body">
															<div>
																<span class="cm-name">Martin Luther</span>
																<span class="badge badge-soft-violet">Manager</span>
															</div>
															<p>@<a href="#" class="fw-medium">Charlie Darvin</a> From there, you can run truffle compile, truffle migrate and truffle test to compile your contracts, deploy those contracts to the network, and run their associated unit tests.</p>
															<div class="comment-action-wrap mt-3">
																<span>3 hours ago</span>
																<span class="comment-dot-sep">●</span>
																<a href="#">Reply</a>
																<span class="comment-dot-sep">●</span>
																<a href="#">Like</a>
															</div>
														</div>
													</div>
													<div class="separator separator-light"></div>
													<div class="media">
														<div class="media-head">
															<div class="avatar avatar-xs avatar-rounded">
																<img src="dist/img/avatar2.jpg" alt="user" class="avatar-img">
															</div>
														</div>
														<div class="media-body">
															<div>
																<span class="cm-name">Katherine Jones</span>
															</div>
															<p>Dynamically beautiful work done by @<a href="#" class="fw-medium">Ashton Kutcher</a></p>
															<div class="comment-action-wrap mt-3">
																<span>3 hours ago</span>
																<span class="comment-dot-sep">●</span>
																<a href="#">Reply</a>
																<span class="comment-dot-sep">●</span>
																<a href="#">Like</a>
															</div>
															<div class="media">
																<div class="media-head">
																	<div class="avatar avatar-xs avatar-rounded">
																		<img src="dist/img/avatar3.jpg" alt="user" class="avatar-img">
																	</div>
																</div>
																<div class="media-body">
																	<div>
																		<span class="cm-name">Ashton Kutche</span>
																		<span class="badge badge-soft-danger">Designer</span>
																	</div>
																	<p>@<a href="#" class="fw-medium">Katherine Jones</a> Thank you :)</p>
																	<div class="comment-action-wrap mt-3">
																		<span>3 hours ago</span>
																		<span class="comment-dot-sep">●</span>
																		<a href="#">Reply</a>
																		<span class="comment-dot-sep">●</span>
																		<a href="#">Like</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="separator separator-light"></div>
													<form>
														<div class="form-group">
															<label class="form-label">Add Comment</label>
															<textarea class="form-control" rows="5"></textarea>
														</div>
														<div class="d-flex align-items-center justify-content-between">
															<button class="btn btn-primary">Send</button>
															<small class="form-text text-muted mt-0">Basic HTML is allowed</small>
														</div>
													</form>
												</div>
											</div>
											<div class="tab-pane fade" id="tab_files">
												<div class="row">
													<div class="col-sm">
														<form action="#" class="dropzone" id="remove_link">
															<div class="fallback">
																<input name="file" type="file" multiple />
															</div>
														</form>
													</div>
												</div>
												<div class="mt-5 mb-2">
													<div class="title title-lg mb-0"><span>Shared files</span></div>
												</div>
												<div class="file-block">
													<div class="collapse-simple">
														<div class="card">
															<div class="card-header">
																<a role="button" data-bs-toggle="collapse" href="#files_collapse" aria-expanded="true">Yesterday</a>
															</div>
															<div id="files_collapse" class="collapse show">
																<div class="card-body">
																	<ul class="sh-files">
																		<li>
																			<div class="media">
																				<div class="media-head">
																					<div class="avatar avatar-icon avatar-sm avatar-soft-blue">
																						<span class="initial-wrap fs-3">
																							<i class="ri-file-excel-2-fill"></i>
																						</span>
																					</div>
																				</div>
																				<div class="media-body">
																					<div>
																						<p class="file-name">website_content.exl</p>
																						<p class="file-size">2,635 KB</p>
																					</div>
																					<div>
																						<div class="avatar avatar-xs avatar-rounded me-2">
																							<img src="dist/img/avatar2.jpg" alt="user" class="avatar-img">
																						</div>
																						<a href="#" class="btn btn-sm btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></a>
																						<div class="dropdown-menu dropdown-menu-end">
																							<a class="dropdown-item ms-0" href="#">Download</a>
																							<a class="dropdown-item ms-0 link-danger" href="#">Delete</a>
																						</div>
																					</div>
																				</div>
																			</div>
																		</li>
																		<li>
																			<div class="media">
																				<div class="media-head">
																					<div class="avatar avatar-icon avatar-sm avatar-soft-light">
																						<span class="initial-wrap fs-3">
																							<i class="ri-file-text-fill"></i>
																						</span>
																					</div>
																				</div>
																				<div class="media-body">
																					<div>
																						<p class="file-name">jampack.pdf</p>
																						<p class="file-size">1.3 GB</p>
																					</div>
																					<div>
																						<div class="avatar avatar-xs avatar-rounded me-2">
																							<img src="dist/img/avatar3.jpg" alt="user" class="avatar-img">
																						</div>
																						<a href="#" class="btn btn-sm btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></a>
																						<div class="dropdown-menu dropdown-menu-end">
																							<a class="dropdown-item ms-0" href="#">Download</a>
																							<a class="dropdown-item ms-0 link-danger" href="#">Delete</a>
																						</div>
																					</div>
																				</div>
																			</div>
																			
																		</li>
																		<li>
																			<div class="media">
																				<div class="media-head">
																					<div class="avatar avatar-icon avatar-sm avatar-soft-warning">
																						<span class="initial-wrap fs-3">
																							<i class="ri-file-zip-fill"></i>
																						</span>
																					</div>
																				</div>
																				<div class="media-body">
																					<div>
																						<p class="file-name">themeforest-pack.zip</p>
																						<p class="file-size">2.45 GB</p>
																					</div>
																					<div>
																						<div class="avatar avatar-xs avatar-soft-danger avatar-rounded me-2">
																							<span class="initial-wrap">H</span>
																						</div>
																						<a href="#" class="btn btn-sm btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></a>
																						<div class="dropdown-menu dropdown-menu-end">
																							<a class="dropdown-item ms-0" href="#">Download</a>
																							<a class="dropdown-item ms-0 link-danger" href="#">Delete</a>
																						</div>
																					</div>
																				</div>
																			</div>
																			
																		</li>
																		<li>
																			<div class="media">
																				<div class="media-head">
																					<div class="avatar avatar-logo avatar-sm">
																						<span class="initial-wrap">
																							<img src="dist/img/6image.png" alt="user">
																						</span>
																					</div>
																				</div>
																				<div class="media-body">
																					<div>
																						<p class="file-name">bruce-mars-fiEG-Pk6ZASFPk6ZASF</p>
																						<p class="file-size">4,178 KB</p>
																					</div>
																					<div>
																						<div class="avatar avatar-xs avatar-rounded me-2">
																							<img src="dist/img/avatar5.jpg" alt="user" class="avatar-img">
																						</div>
																						<a href="#" class="btn btn-sm btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></a>
																						<div class="dropdown-menu dropdown-menu-end">
																							<a class="dropdown-item ms-0" href="#">Download</a>
																							<a class="dropdown-item ms-0 link-danger" href="#">Delete</a>
																						</div>
																					</div>
																				</div>
																			</div>
																			
																		</li>
																		<li>
																			<div class="media">
																				<div class="media-head">
																					<div class="avatar avatar-logo avatar-sm">
																						<span class="initial-wrap">
																							<img src="dist/img/2image.png" alt="user">
																						</span>
																					</div>
																				</div>
																				<div class="media-body">
																					<div>
																						<p class="file-name">jonas-kakaroto-KIPqvvTKIPqvvT</p>
																						<p class="file-size">951 KB</p>
																					</div>
																					<div>
																						<div class="avatar avatar-xs avatar-rounded me-2">
																							<img src="dist/img/avatar6.jpg" alt="user" class="avatar-img">
																						</div>
																						<a href="#" class="btn btn-sm btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></a>
																						<div class="dropdown-menu dropdown-menu-end">
																							<a class="dropdown-item ms-0" href="#">Download</a>
																							<a class="dropdown-item ms-0 link-danger" href="#">Delete</a>
																						</div>
																					</div>
																				</div>
																			</div>
																			
																		</li>
																	</ul>
																</div>
															</div>
														</div>
														<div class="card">
															<div class="card-header">
																<a role="button" data-bs-toggle="collapse" href="#files_collapse_1" aria-expanded="true">23 April</a>
															</div>
															<div id="files_collapse_1" class="collapse show">
																<div class="card-body">
																	<ul class="sh-files">
																		<li>
																			<div class="media">
																				<div class="media-head">
																					<div class="avatar avatar-icon avatar-sm avatar-soft-light">
																						<span class="initial-wrap fs-3">
																							<i class="ri-keynote-fill"></i>
																						</span>
																					</div>
																				</div>
																				<div class="media-body">
																					<div>
																						<p class="file-name">presentation.keynote</p>
																						<p class="file-size">20 KB</p>
																					</div>
																					<div>
																						<div class="avatar avatar-xs avatar-rounded me-2">
																							<img src="dist/img/avatar5.jpg" alt="user" class="avatar-img">
																						</div>
																						<a href="#" class="btn btn-sm btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></a>
																						<div class="dropdown-menu dropdown-menu-end">
																							<a class="dropdown-item ms-0" href="#">Download</a>
																							<a class="dropdown-item ms-0 link-danger" href="#">Delete</a>
																						</div>
																					</div>
																				</div>
																			</div>
																		</li>
																		<li>
																			<div class="media">
																				<div class="media-head">
																					<div class="avatar avatar-icon avatar-sm avatar-soft-warning">
																						<span class="initial-wrap fs-3">
																							<i class="ri-file-zip-fill"></i>
																						</span>
																					</div>
																				</div>
																				<div class="media-body">
																					<div>
																						<p class="file-name">PACK-TRIAL.zip</p>
																						<p class="file-size">2.45 GB</p>
																					</div>
																					<div>
																						<div class="avatar avatar-xs avatar-rounded me-2">
																							<img src="dist/img/avatar2.jpg" alt="user" class="avatar-img">
																						</div>
																						<a href="#" class="btn btn-sm btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></a>
																						<div class="dropdown-menu dropdown-menu-end">
																							<a class="dropdown-item ms-0" href="#">Download</a>
																							<a class="dropdown-item ms-0" href="#">Delete</a>
																						</div>
																					</div>
																				</div>
																			</div>
																			
																		</li>
																		<li>
																			<div class="media">
																				<div class="media-head">
																					<div class="avatar avatar-sm">
																						<img src="dist/img/img-thumb1.jpg" alt="user" class="avatar-img">
																					</div>
																				</div>
																				<div class="media-body">
																					<div>
																						<p class="file-name">joel-mott-LaK153ghdigaghdi</p>
																						<p class="file-size">3,028 KB</p>
																					</div>
																					<div>
																						<div class="avatar avatar-xs avatar-rounded me-2">
																							<img src="dist/img/avatar8.jpg" alt="user" class="avatar-img">
																						</div>
																						<a href="#" class="btn btn-sm btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret" data-bs-toggle="dropdown"><span class="icon"><span class="feather-icon"><i data-feather="more-vertical"></i></span></span></a>
																						<div class="dropdown-menu dropdown-menu-end">
																							<a class="dropdown-item ms-0" href="#">Download</a>
																							<a class="dropdown-item ms-0" href="#">Delete</a>
																						</div>
																					</div>
																				</div>
																			</div>
																		</li>
																	</ul>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane fade" id="tab_activity">
												<div class="mt-5 mb-2">
													<div class="title title-lg mb-0"><span>Latest activity</span></div>
												</div>
												<div class="collapse-simple">
													<div class="card">
														<div class="card-header">
															<a role="button" data-bs-toggle="collapse" href="#activity_1" aria-expanded="true">Today</a>
														</div>
														<div id="activity_1" class="collapse show">
															<div class="card-body">
																<ul class="activity-list list-group list-group-flush">
																	<li class="list-group-item">
																		<div class="media">
																			<div class="media-head">
																				<div class="avatar avatar-xs avatar-primary avatar-rounded">
																					<span class="initial-wrap">H</span>
																				</div>
																			</div>
																			<div class="media-body">
																				<p><span class="text-dark">Hencework</span> on Documentation link is working now - <a href="#" class="link-url"><u>ttps://hencework.com/theme/jampa</u></a></p>
																				<div class="last-activity-time">Oct 15, 2021, 12:34 PM</div>
																			</div>
																		</div>
																	</li>
																	<li class="list-group-item">
																		<div class="media">
																			<div class="media-head">
																				<div class="avatar avatar-xs avatar-rounded">
																					<img src="dist/img/avatar2.jpg" alt="user" class="avatar-img">
																				</div>
																			</div>
																			<div class="media-body">
																				<p><span class="text-dark">Morgan Fregman</span> completed react conversion of <a href="#" class="link-default"><u>components</u></a></p>
																				<div class="last-activity-time">Sep 16, 2021, 4:54 PM</div>
																			</div>
																		</div>
																	</li>
																	<li class="list-group-item">
																		<div class="media">
																			<div class="media-head">
																				<div class="avatar avatar-xs avatar-rounded">
																					<img src="dist/img/avatar13.jpg" alt="user" class="avatar-img">
																				</div>
																			</div>
																			<div class="media-body">
																				<p><span class="text-dark">Jimmy Carry</span>completed side bar menu on <a href="#" class="link-default"><u>elements</u></a></p>
																				<div class="last-activity-time">Sep 10, 2021, 10:13 AM</div>
																			</div>
																		</div>
																	</li>
																	<li class="list-group-item">
																		<div class="media">
																			<div class="media-head">
																				<div class="avatar avatar-xs avatar-rounded">
																					<img src="dist/img/avatar7.jpg" alt="user" class="avatar-img">
																				</div>
																			</div>
																			<div class="media-body">
																				<p><span class="text-dark">Charlie Chaplin</span> deleted empty cards on <a href="#" class="link-default"><u>completed</u></a></p>
																				<div class="last-activity-time">Sep 10, 2021, 10:13 AM</div>
																			</div>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
													<div class="card">
														<div class="card-header">
															<a role="button" data-bs-toggle="collapse" href="#activity_2" aria-expanded="true">Yesterday</a>
														</div>
														<div id="activity_2" class="collapse show">
															<div class="card-body">
																<ul class="activity-list list-group list-group-flush">
																	<li class="list-group-item">
																		<div class="media">
																			<div class="media-head">
																				<div class="avatar avatar-xs avatar-soft-danger avatar-rounded">
																					<span class="initial-wrap">W</span>
																				</div>
																			</div>
																			<div class="media-body">
																				<p><span class="text-dark">Winston Churchills</span> created a note on UI components task list</p>
																				<div class="last-activity-time">Sep 2, 2021, 9:23 AM</div>
																			</div>
																		</div>
																	</li>
																	<li class="list-group-item">
																		<div class="media">
																			<div class="media-head">
																				<div class="avatar avatar-xs avatar-rounded">
																					<img src="dist/img/avatar2.jpg" alt="user" class="avatar-img">
																				</div>
																			</div>
																			<div class="media-body">
																				<p><span class="text-dark">Morgan Fregman</span> completed react conversion of <a href="#" class="link-default"><u>components</u></a></p>
																				<div class="last-activity-time">Sep 16, 2021, 4:54 PM</div>
																			</div>
																		</div>
																	</li>
																	<li class="list-group-item">
																		<div class="media">
																			<div class="media-head">
																				<div class="avatar avatar-xs avatar-rounded">
																					<img src="dist/img/avatar13.jpg" alt="user" class="avatar-img">
																				</div>
																			</div>
																			<div class="media-body">
																				<p><span class="text-dark">Jimmy Carry</span>added shared components to <a href="#" class="link-default"><u>basic structure</u></a></p>
																				<div class="last-activity-time">Sep 10, 2021, 10:13 AM</div>
																			</div>
																		</div>
																	</li>
																	<li class="list-group-item">
																		<div class="media">
																			<div class="media-head">
																				<div class="avatar avatar-xs avatar-primary avatar-rounded">
																					<span class="initial-wrap">H</span>
																				</div>
																			</div>
																			<div class="media-body">
																				<p><span class="text-dark">Hencework</span> commented on <a href="#" class="link-default"><u>basic structure</u></a></p>
																				<div class="last-activity-time">Sep 10, 2021, 10:13 AM</div>
																			</div>
																		</div>
																	</li>
																	<li class="list-group-item">
																		<div class="media">
																			<div class="media-head">
																				<div class="avatar avatar-xs avatar-rounded">
																					<img src="dist/img/avatar7.jpg" alt="user" class="avatar-img">
																				</div>
																			</div>
																			<div class="media-body">
																				<p><span class="text-dark">Charlie Chaplin</span> moved components from all modules to in progress</p>
																				<div class="last-activity-time">Sep 10, 2021, 10:13 AM</div>
																			</div>
																		</div>
																	</li>
																	<li class="list-group-item">
																		<div class="media">
																			<div class="media-head">
																				<div class="avatar avatar-xs avatar-soft-danger avatar-rounded">
																					<span class="initial-wrap">W</span>
																				</div>
																			</div>
																			<div class="media-body">
																				<p><span class="text-dark">Winston Churchills</span> created a note on UI components task list</p>
																				<div class="last-activity-time">Sep 10, 2021, 10:13 AM</div>
																			</div>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Edit Info -->
						<div id="add_new_task" class="modal fade add-new-contact" tabindex="-1" role="dialog" aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="modal-body">
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">×</span>
										</button>
										<h5 class="mb-4">프로젝트 등록</h5>
										<form>
											<div class="row gx-3">
												<div class="col-sm-12">
													<div class="form-group">
														<label class="form-label">프로젝트명</label>
														<input class="form-control" type="text"/>
													</div>
												</div>
											</div>
											<div class="row gx-3">
												<div class="col-md-12">
													<div class="form-group">
														<div class="form-label-group">
															<label class="form-label">프로젝트 내용</label>
															<small class="text-muted">200</small>
														</div>
														<textarea class="form-control" rows="3"></textarea>
													</div>
												</div>
											</div>
											<div class="row gx-3">
												<div class="col-sm-6">
													<div class="form-group">
														<label class="form-label">시작일자</label>
														<input class="form-control" name="single-date" type="text"/>
														</div>
													</div>
												<div class="col-sm-6">
													<div class="form-group">
														<label class="form-label">종료일자</label>
														<input class="form-control" name="single-date" type="text"/>
													</div>
												</div>
											</div>
												<div class="col-sm-3">
													<div class="form-group">
														<div class="form-check form-check-sm mt-2">
															<input type="checkbox" class="form-check-input" checked="">
															<label class="form-check-label">종일여부</label>
														</div>
													</div>
												</div>
											<div class="row gx-3">
												<div class="col-sm-12">
													<div class="form-group">
														<label class="form-label">진행상태</label>
														<select class="form-control custom-select">
															<option selected="">예정</option>
															<option value="1">대기</option>
															<option value="1">진행중</option>
															<option value="2">마감</option>
														</select>
													</div>
												</div>
											</div>
											<div class="row gx-3">
												<div class="col-sm-12">
													<div class="form-inline">
														<div class="form-group">
															<label class="form-label">Set priority:</label>
															<div class="form-check form-check-inline ms-2">
																<div class="custom-control custom-radio radio-primary">
																	<input type="radio" id="customRadioc2" name="customRadioc2" class="form-check-input">
																	<label class="form-check-label" for="customRadioc2">High</label>
																</div>
															</div>
															<div class="form-check form-check-inline">
																<div class="custom-control custom-radio radio-primary">
																	<input type="radio" id="customRadioc3" name="customRadioc2" class="form-check-input">
																	<label class="form-check-label" for="customRadioc3">Medium</label>
																</div>
															</div>
															<div class="form-check form-check-inline">
																<div class="custom-control custom-radio radio-primary">
																	<input type="radio" id="customRadioc4" name="customRadioc2" class="form-check-input">
																	<label class="form-check-label" for="customRadioc4">Low</label>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="title title-xs title-wth-divider text-primary text-uppercase my-4"><span>Assign to</span></div>
											<div class="repeater">
												<div data-repeater-list="category-group">
													<div class="d-flex">
														<div class="row gx-3 flex-1">
															<div class="col-sm-6 form-group mb-0">
																<label class="form-label">Add Person</label>
															</div>
															<div class="col-sm-6 form-group mb-0">
																<label class="form-label">Role</label>
															</div>
														</div>
														<a href="#" class="btn btn-xs btn-icon btn-rounded btn-light mb-2" data-repeater-create data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Add Person"><span class="icon"><span class="feather-icon"><i data-feather="plus"></i></span></span></a>
													</div>
													<div class="d-flex" data-repeater-item>
														<div class="row gx-3 flex-1">
															<div class="col-sm-6 form-group">
																<input class="form-control" placeholder="--" type="text"/>
															</div>
															<div class="col-sm-6 form-group">
																<input class="form-control" placeholder="--" type="text"/>
															</div>
														</div>
														<a href="#" class="btn btn-xs btn-icon btn-rounded btn-light ms-2 mt-1" data-repeater-delete><span class="icon"><i class="ri-delete-bin-6-line"></i></span></a>
													</div>
												</div>
											</div>
										</form>
									</div>
									<div class="modal-footer align-items-center">
										<button type="button" class="btn btn-secondary">취소</button>
										<button type="button" class="btn btn-primary" data-bs-dismiss="modal">등록</button>
									</div>
								</div>
							</div>
						</div>
						<!-- /Edit Info -->
					</div>
				</div>
			</div>
			<!-- /Page Body -->
		</div>
		<!-- /Main Content -->
<!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JS -->
   	<script src="vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

    <!-- FeatherIcons JS -->
    <script src="dist/js/feather.min.js"></script>

    <!-- Fancy Dropdown JS -->
    <script src="dist/js/dropdown-bootstrap-extended.js"></script>

	<!-- Simplebar JS -->
	<script src="vendors/simplebar/dist/simplebar.min.js"></script>

	<!-- Daterangepicker JS -->
    <script src="vendors/moment/min/moment.min.js"></script>
    <script src="vendors/daterangepicker/daterangepicker.js"></script>
    <script src="dist/js/daterangepicker-data.js"></script>
	
	<!-- Tinymce JS -->
    <script src="vendors/tinymce/tinymce.min.js"></script>
	
	<!-- Dropzone JS -->
	<script src="vendors/dropzone/dist/dropzone.min.js"></script>
	
	<!-- Apex JS -->
	<script src="vendors/apexcharts/dist/apexcharts.min.js"></script>
	
	<!-- Repeater JS -->
    <script src="vendors/jquery.repeater/jquery.repeater.min.js"></script>
	
	<!-- Drag JS -->
	<script src="vendors/dragula/dist/dragula.min.js"></script>
	
	<!-- Init JS -->
	<script src="dist/js/init.js"></script>
	<script src="dist/js/todo-data.js"></script>
	<script src="dist/js/chips-init.js"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>