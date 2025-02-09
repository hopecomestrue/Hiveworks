<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<%-- <jsp:include page= "/WEB-INF/views/common/header.jsp"/> --%>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="collapsed" name="style" />
	<jsp:param value="data-hover='active'" name="hover" />
</jsp:include>
<%-- <%@ include file="/WEB-INF/views/common/sideBar.jsp"%> --%>
<jsp:include page="/WEB-INF/views/common/sideBar.jsp">
	<jsp:param value="${edocCountWait }" name="edocCountWait"/>
</jsp:include>
	<!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
	
	<!-- Daterangepicker CSS -->
    <link href="${path}/resources/vendors/daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css" />
	
	<!-- Bootstrap Dropzone CSS -->
	<link href="${path}/resources/vendors/dropzone/dist/dropzone.min.css" rel="stylesheet" type="text/css"/>
	
	<!-- Dragula CSS -->
    <link href="${path}/resources/vendors/dragula/dist/dragula.min.css" rel="stylesheet" type="text/css">

	<!-- CSS -->
    <link href="${path}/resources/css/style.css" rel="stylesheet" type="text/css">
<style>
.bigbax {
   margin-top: 20px;
   border-radius: 20px;
   background-color: #ffffff;
   padding: 20px;
   box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
</style>
<!-- Main Content -->
<div class="hk-pg-wrapper pb-0">
	<!-- Page Body -->
	<div class="hk-pg-body py-0">
		<div class="todoapp-wrap todoapp-info-active">
			<nav class="todoapp-sidebar">
				<div data-simplebar class="nicescroll-bar">
					<div class="menu-content-wrap">
						<button class="btn btn-primary btn-rounded btn-block mb-4"
							data-bs-toggle="modal" data-bs-target="#add_new_task">새 프로젝트
							등록</button>
						<div class="menu-group">
							<ul class="nav nav-light navbar-nav flex-column">
								<li class="nav-item active"><a class="nav-link"
									href="${path }/schedule/projectlist.do"> <span
										class="nav-icon-wrap"><span class="feather-icon"><i
												data-feather="layout"></i></span></span> <span class="nav-link-text">전체
											프로젝트</span>
								</a></li>
			<%-- 					<li class="nav-item"><a class="nav-link"
									href="${path }/schedule/projectlistbyempno.do?empNo=1234">
										<span class="nav-icon-wrap"><span class="feather-icon"><i
												data-feather="list"></i></span></span> <span class="nav-link-text">내
											프로젝트</span>
								</a></li> --%>
							</ul>
						</div>
						<div class="separator separator-light"></div>
						<div class="title-sm text-primary">프로젝트 상태</div>
						<div class="menu-group">
							<ul class="nav nav-light navbar-nav flex-column">
								<li class="nav-item"><a class="nav-link link-with-badge"
									href="#"> <span
										class="badge badge-danger badge-indicator badge-indicator-lg me-2"></span>
										<span class="nav-link-text">마감</span>
								</a></li>
								<li class="nav-item"><a class="nav-link link-with-badge"
									href="#"> <span
										class="badge badge-orange badge-indicator badge-indicator-lg me-2"></span>
										<span class="nav-link-text">진행중</span>
								</a></li>
								<li class="nav-item"><a class="nav-link link-with-badge"
									href="#"> <span
										class="badge badge-yellow badge-indicator badge-indicator-lg me-2"></span>
										<span class="nav-link-text">대기</span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</nav>
			<div class="todoapp-content">
				<div class="todoapp-detail-wrap">
					<header class="todo-header">
						<div class="d-flex align-items-center">
							<a class="todoapp-title dropdown-toggle link-dark"
								data-bs-toggle="dropdown" href="#" role="button"
								aria-haspopup="true" aria-expanded="false">
								<h1>전체 프로젝트</h1>
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#"><span
									class="feather-icon dropdown-icon"><i
										data-feather="align-center"></i></span><span>전체 프로젝트</span></a> <a
									class="dropdown-item" href="#"><span
									class="feather-icon dropdown-icon"><i
										data-feather="list"></i></span><span>진행중인 프로젝트</span></a><a
									class="dropdown-item" href="#"><span
									class="feather-icon dropdown-icon"><i
										data-feather="droplet"></i></span><span>마감된 프로젝트</span></a>
								<div class="dropdown-divider"></div>
								 <a class="dropdown-item" href="#">Urgent Priority</a>
										<a class="dropdown-item" href="#">High Priority</a>
										<a class="dropdown-item" href="#">Low Priority</a>
							</div>

						</div>
						<div class="todo-options-wrap">
							<form class="d-sm-block d-none" role="search">
								<input type="text" class="form-control"
									placeholder="Search tasks">
							</form>
							<a
								class="btn btn-icon btn-flush-dark btn-rounded flush-soft-hover hk-navbar-togglable"
								href="#" data-bs-toggle="tooltip" data-bs-placement="top"
								title="" data-bs-original-title="Collapse"> <span
								class="icon"> <span class="feather-icon"><i
										data-feather="chevron-up"></i></span> <span
									class="feather-icon d-none"><i
										data-feather="chevron-down"></i></span>
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
										<select
											class="d-xxl-inline-block d-none  form-select form-select-sm mx-2">
											<option selected="">Sort by date</option>
											<option value="1">Sort By Time</option>
											<option value="2">Sort By Category</option>
											<option value="3">Sort By Priority</option>
											<option value="4">Sort By Title</option>
											<option value="5">Sort By Assignee</option>
										</select>
									</div>
									<div>
										<div class="paging-info d-xxl-inline-block d-none">1 -
											10 of 30</div>
										<ul
											class="pagination custom-pagination pagination-simple m-0 ms-3">
											<li class="paginate_button page-item previous disabled"
												id="datable_1_previous"><a href="#" data-dt-idx="0"
												tabindex="0" class="page-link"><i
													class="ri-arrow-left-s-line"></i></a></li>
											<li class="paginate_button page-item active"><a href="#"
												data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
											<li class="paginate_button page-item "><a href="#"
												data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
											<li class="paginate_button page-item next"
												id="datable_1_next"><a href="#" data-dt-idx="3"
												tabindex="0" class="page-link"><i
													class="ri-arrow-right-s-line"></i></a></li>
										</ul>
									</div>
								</div>
	<div class="row">
      <div class="col-1"></div>
      <div class="col-10  bigbax">
         <div class="row" style="display: flex; justify-content: space-evenly; text-align: center;">
            <div class="col-1"></div>
            <div class="col-2 smallbox" >
               <div class="">
                  <h4 >총 프로젝트 수</h4>
               </div>
               <div class="blank">
                 <%--  <c:if test="${not empty commute}">
                      <c:set var="nomalCount" value="0" />
                      <c:set var="nonAntteCount" value="0" />
                         <c:forEach var="c" items="${commute}" varStatus="loop">
                             <c:set var="nomalCount" value="${nomalCount + 1}" />
                             <c:if test="${c. EMP_COMMUTE_STATUS == 'nonAntte'}">
                                <c:set var="nonAntteCount" value="${nonAntteCount + 1}" /> 
                             </c:if>
                            </c:forEach>
                      <h4 id="finishCount">${nomalCount-nonAntteCount} 일 </h4>
                  </c:if> --%>
               </div>
            </div>
            <div class="col-2 smallbox" >
               <div class=" ">
                  <h4 class="">마감된 프로젝트</h4>
               </div>
               <div class="blank">
                <%--   <c:if test="${not empty commute}">
                   <c:set var="nomalCount" value="0" />
                      <c:forEach var="c" items="${commute}" varStatus="loop">
                          <c:if test="${c. EMP_COMMUTE_LATENESS == 'N'}">
                              <c:set var="nomalCount" value="${nomalCount + 1}" />
                          </c:if>
                         </c:forEach>
                   <h4 id="finishCount">${nomalCount} 일</h4>
                  </c:if> --%>
               </div>
            </div>
            <div class=" col-2 smallbox">
               <div class="">
                  <h4 class="">남은 프로젝트</h4>
               </div>
               <div class="blank">
                <%--   <c:if test="${not empty commute}">
                   <c:set var="lateCount" value="0" />
                   <c:forEach var="c" items="${commute}" varStatus="loop">
                       <c:if test="${c. EMP_COMMUTE_LATENESS == 'Y'}">
                           <c:set var="lateCount" value="${lateCount + 1}" />
                       </c:if>
                   </c:forEach>
                  
                   <h4 id="lateCount">${lateCount} 회</h4>
               </c:if> --%>
               </div>
            </div>
            <div class=" col-2 smallbox">
               <div class="">
                  <h4 class="">프로젝트 진행률</h4>
               </div>
               <div class="blank">
                 <%--  <c:set var="nonAntteCount" value="0" />
                  <c:if test="${not empty commute}">
                      <c:set var="absenceCount" value="0" />
                      <c:forEach var="c" items="${commute}" varStatus="loop">
                          <c:if test="${c.EMP_COMMUTE_ABSENCE == 'Y'}">
                              <c:set var="absenceCount" value="${absenceCount + 1}" />
                          </c:if> 
                          <c:if test="${c. EMP_COMMUTE_STATUS == 'nonAntte'}">
                                <c:set var="nonAntteCount" value="${nonAntteCount + 1}" />
                         </c:if>
                      </c:forEach>
                      <h4 id="finishCount">${absenceCount-nonAntteCount} 회</h4>
                  </c:if> --%>
               </div>
            </div>
            <div class=" col-2 smallbox">
               <div class="">
                  <h3 class="">퇴근 미처리</h3>
               </div>
               <div class="blank">
                 <%--  <c:if test="${not empty commute}">
                      <c:set var="Uncleared" value="0" />
                      <c:forEach var="c" items="${commute}" varStatus="loop">                
                          <c:if test="${c.EMP_COMMUTE_STATUS == 'Uncleared'}">
                              <c:set var="Uncleared" value="${Uncleared + 1}" />
                          </c:if>
                      </c:forEach>                    
                      <h4 id="Uncleared">${Uncleared} 회</h4>
                  </c:if> --%>
               </div>
               
            </div>
            <div class="col-1"></div>
         </div>
      </div>
   </div> 
								<div class="collapse-simple mt-4">
									<div class="card">
										<div class="card-header">
											<a role="button" data-bs-toggle="collapse"
												href="#todo_collapse_1" aria-expanded="true">
												<h5 class="mb-0">최근 등록된 프로젝트</h5>
											</a>
										</div>
										<div id="todo_collapse_1" class="collapse show">
											<div class="card-body">
												<ul id="todo_list" class="advance-list">
													<c:if test="${not empty projectList}">
														<c:forEach var="pro" items="${projectList}">
															<li
																class="advance-list-item single-task-list active-todo">
																<div
																	class="d-flex align-items-center justify-content-between">
																	<div class="d-flex align-items-center">
																		<div class="form-check">
																			<input type="checkbox" class="form-check-input"
																				id="customCheckTodo1"> <label
																				class="form-check-label" for="customCheckTodo1"></label>
																		</div>
																		<div>
																		<c:if test="${pro.calImportYn == 'Y'}">
																			<span class="todo-star marked"><span
																				class="feather-icon"><i data-feather="star"></i></span></span>
																		</c:if>
																				
																			<c:if test="${pro.calStatus == '마감'}">
																			<span class="badge badge-danger badge-indicator badge-indicator-xl"></span>
																			</c:if>		
																			<c:if test="${pro.calStatus == '진행중'}">
																			<span class="badge badge-orange badge-indicator badge-indicator-xl"></span>
																			</c:if>	
																			<c:if test="${pro.calStatus == '대기'}">
																			<span class="badge badge-warning badge-indicator badge-indicator-xl"></span>
																			</c:if>			
																				
																			 <span class="todo-text text-dark text-truncate projectView" data-projectNo="${pro.calNo }">${pro.calSubject}</span>
																			
																			
																			<c:if test="${pro.calStatus == '마감'}">
																			<span
																				class="badge badge-sm badge-outline badge-danger badge-wth-indicator badge-wth-icon ms-3 d-lg-inline-block d-none"><span><i
																					class="badge-dot ri-checkbox-blank-circle-fill"></i>마감</span></span>
																			</c:if>		
																			<c:if test="${pro.calStatus == '진행중'}">
																			<span class="badge  badge-sm badge-outline badge-orange badge-wth-indicator badge-wth-icon ms-3 d-lg-inline-block d-none"><span><i
																			class="badge-dot ri-checkbox-blank-circle-fill"></i>진행중</span></span>	
																			</c:if>	
																			<c:if test="${pro.calStatus == '대기'}">
																			<span class="badge  badge-sm badge-outline badge-warning badge-wth-indicator badge-wth-icon ms-3 d-lg-inline-block d-none"><span><i
																			class="badge-dot ri-checkbox-blank-circle-fill"></i>대기</span></span>
																			</c:if>				
																								
																					
																					
																		</div>
																	</div>
																	<div
																		class="d-flex flex-shrink-0 align-items-center ms-3">
																		<span
																			class="todo-time d-lg-inline-block d-none text-primary me-3 projectViewDate" data-projectNo="${pro.calNo }">~ ${pro.calEndDate.toString().substring(0, 16)}</span>
																		
																		<div
																			class="avatar avatar-xs avatar-rounded d-md-inline-block d-none">
																			<span class="d-block projectViewName" style="width: 70px; padding-right: 5px;">${pro.myEmpName}</span> 
																		</div>
																	<!-- 	<span
																			class="badge badge-primary ms-3 d-md-inline-block d-none">Calls</span> -->
															<div class="d-flex align-items-center">
																<div class="dropdown">
																	<button
																		class="btn btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret"
																		aria-expanded="false" data-bs-toggle="dropdown">
																		<span class="icon"><span class="feather-icon"><i
																				data-feather="more-vertical"></i></span></span>
																	</button>
																	<div role="menu"
																		class="dropdown-menu dropdown-menu-end">
																		<span class="dropdown-item" id="updateBtn"
																			data-resourceNo="${r.resourceNo}"
																			data-resourceType="${r.resourceType}"
																			data-resourceName="${r.resourceName}"
																			data-resourceMax="${r.resourceMax}"
																			data-useYn="${r.useYn}">수정</span>
																	</div>
																</div>
															</div>
																	</div>
																</div>
															</li>
																</c:forEach>
														</c:if>
												</ul>
											</div>
										</div>
									</div>
								</div>
								
								<div class="row mt-3">
									<div class="col-sm-12">
										<div class="float-end text-end">
											<ul
												class="pagination custom-pagination pagination-simple active-theme">
												<li class="paginate_button page-item previous disabled"><a
													href="#" class="page-link"><i
														class="ri-arrow-left-s-line"></i></a></li>
												<li class="paginate_button page-item active"><a
													href="#" class="page-link">1</a></li>
												<li class="paginate_button page-item "><a href="#"
													class="page-link">2</a></li>
												<li class="paginate_button page-item "><a href="#"
													class="page-link">3</a></li>
												<li class="paginate_button page-item next"><a href="#"
													class="page-link"><i class="ri-arrow-right-s-line"></i></a></li>
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
									<button
										class="btn btn-icon btn-light btn-rounded d-lg-none d-lg-inline-block ms-1">
										<span><span class="icon"><span
												class="feather-icon"><i data-feather="link"></i></span></span></span>
									</button>
								</div>
								<div class="task-options-wrap">
									<div class="form-check" style="padding-right:300px">
								<input type="checkbox" class="form-check-input"
									id="event_import"> <label class="form-check-label"
									for="event_import">중요 프로젝트</label></div>
										<a class="btn btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret ms-1"
										href="#" data-bs-toggle="dropdown"><span class="icon"><span
											class="feather-icon"><i data-feather="more-vertical"></i></span></span></a>
									<div class="dropdown-menu dropdown-menu-end">
										<span class="dropdown-item" id="proeditBtn"><span
											class="feather-icon dropdown-icon"><i
												data-feather="edit"></i></span><span>수정</span></span><span
											class="dropdown-item delete-task" id="prodelBtn"><span
											class="feather-icon dropdown-icon"><i
												data-feather="trash-2"></i></span><span>삭제</span></span>
									</div>
									<a
										class="btn btn-icon btn-flush-dark btn-rounded flush-soft-hover close-task-info"
										id="closeBtn" href="#"><span class="icon"><span
											class="feather-icon"><i data-feather="x"></i></span></span></a>
								</div>
							</header>
							<div class="task-detail-body">
							<form class="row">
							<input type="hidden" class="form-control"class="form-control" id="recalno" value="${project.calNo}"/>
								<h4
									class="d-flex align-items-center fw-bold mb-0 inline-editable-wrap">
									 <input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" 
									 id="reproSubject">
								</h4>
								<p class="d-flex align-items-center inline-editable-wrap">
									  
									 <div class="form-floating">
						  <textarea class="form-control" id="reproContent"></textarea>
						</div>	 
								</p>
									<div class="col-md-6">
										<div class="title title-wth-divider my-4">
											<span>시작 일자</span>
										</div>
										<input class="form-control" type="text" name="single-date"
											id="reproStartDate" />
									</div>
									<div class="col-md-6">
										<div class="title title-wth-divider my-4">
											<span>마감 일자</span>
										</div>
										<input class="form-control" type="text" name="single-date"
											id="reproEndDate" />
									</div>
									<div class="col-sm-12 form-group">
										<input class="cal-event-allday"
											name="reallday" type="checkbox" id="realldaycheck"> <label
											class="form-check-label" for="realldaycheck">종일여부</label>
									</div>
									<div class="col-md-12">
										<div class="title title-wth-divider my-4">
											<span>진행 상태</span>
										</div>
										<select class="form-select" id="reproStatus"
											aria-label="Default select example">
											<option value="대기">대기</option>
											<option value="진행중">진행중</option>
											<option value="마감">마감</option>
										</select>
									</div>
									<div class="separator separator-light"></div>
									<div class="form-group">
							<div class="d-flex flex-wrap">
								<button type="button" 
									id="addBtnRe" class="btn btn-light btn-floating;">프로젝트
									공유 추가</button>
								<div id="shareListJob" class="row gx-3">


								</div>
							</div>
						</div>
								</form>
								<ul
									class="nav nav-justified nav-light nav-tabs nav-segmented-tabs active-theme mt-4">
									<li class="nav-item"><a class="nav-link active"
										data-bs-toggle="tab" href="#tab_checklist"> <span
											class="nav-link-text">체크리스트</span>
									</a></li>
									<li class="nav-item"><a class="nav-link"
										data-bs-toggle="tab" href="#tab_comments"> <span
											class="nav-link-text badge-on-text">댓글</span>
									</a></li>
									<!-- <li class="nav-item">
												<a class="nav-link" data-bs-toggle="tab" href="#tab_files">
													<span class="nav-link-text badge-on-text">Files</span>
												</a>
											</li> -->
								</ul>
								<div class="tab-content mt-7">
									<div class="tab-pane fade show active" id="tab_checklist">
										<div
											class="d-flex align-items-center justify-content-between mb-2" id="commentAllArea">
											<div class="title title-lg mb-0">
												<span>To-Do-List</span>
											</div>
										</div>
										 <div class="hk-checklist">
											<!-- <div class="form-check">
											 <input type="hidden" id="checkNohidden" value=""/>
												<input type="checkbox" class="form-check-input" name="checkListBox"
													id="customCheckList1" checked=""> <label
													class="form-check-label" for="customCheckList1">
													Video conference with canada Team <span
													class="done-strikethrough"></span>
												</label> <span class="btn btn-xs btn-icon btn-rounded btn-flush-light flush-soft-hover delete-checklist"><span
													class="icon"><span class="feather-icon"><i
															data-feather="trash-2"></i></span></span></span> 
											</div> -->
											<a href="#"
												class="d-flex align-items-center add-new-checklist"> <span
												class="feather-icon fe-x me-2"><i
													data-feather="plus-square"></i></span>To-Do-List 추가<span></span>
											</a>
										 </div> 
										 <div class="d-flex align-items-center justify-content-between">
											<!-- <div class="title title-wth-divider flex-grow-1 my-4 me-2">
												<span>Canada team task</span>
											</div> -->
										<!-- 	 <div>
												<a href="#"
													class="btn btn-xs btn-icon btn-rounded btn-flush-light flush-soft-hover delete-checklist"
													data-bs-toggle="tooltip" data-bs-placement="top" title=""
													data-bs-original-title="Edit"><span class="icon"><span
														class="feather-icon"><i data-feather="edit-2"></i></span></span></a>
												<a href="#"
													class="btn btn-xs btn-icon btn-rounded btn-flush-light flush-soft-hover delete-checklist"><span
													class="icon"><span class="feather-icon"><i
															data-feather="trash-2"></i></span></span></a>
											</div>  -->
										</div> 
						<!-- 				<div class="hk-checklist">
											<div class="form-check">
												<input type="checkbox" class="form-check-input"
													id="customCheckList5" checked=""> <label
													class="form-check-label" for="customCheckList5">
													Upgrade dependency on resources <span
													class="done-strikethrough"></span>
												</label> <a href="#"
													class="btn btn-xs btn-icon btn-rounded btn-flush-light flush-soft-hover delete-checklist"><span
													class="icon"><span class="feather-icon"><i
															data-feather="trash-2"></i></span></span></a>
											</div>
										 	<a href="#"
												class="d-flex align-items-center add-new-checklist"> <span
												class="feather-icon fe-x me-2"><i
													data-feather="plus-square"></i></span> <span>New Item</span>
											</a> 
										</div> -->
									</div> 
									<div class="tab-pane fade" id="tab_comments">
										<div
											class="d-flex align-items-center justify-content-between mb-2">

										<div class="comment-block">
<!-- 											<div class="media" id="level1">
												<input type="hidden" id="commentNo" value="">
												<div class="media-body">
													<div>
														<span class="cm-name">이름</span>
													</div>
													<p id="commentContent">
														내용
													</p>
													<div class="comment-action-wrap mt-3">
														<span>3 hours ago</span> <span class="comment-dot-sep">●</span>
														<a href="#">Reply</a> 
													</div>
												</div>
											</div> -->
									<!-- 		<div class="separator separator-light"></div>
													<div class="media" id="level2">
														<div class="media-body">
															<div>
																<span class="cm-name">Ashton Kutche</span>
															</div>
															<p>
																@<a href="#" class="fw-medium">Katherine Jones</a> Thank
																you :)
															</p>
															<div class="comment-action-wrap mt-3">
																<span>3 hours ago</span>
																<span class="comment-dot-sep">●</span><span id="replyComment">답글</span>
																<span class="comment-dot-sep">●</span><span id="updateComment">수정</span>
																<span class="comment-dot-sep">●</span><span id="deleteComment">삭제</span>
															</div>
														</div>
													</div> -->
												</div>
											</div>
											<div class="separator separator-light"></div>
												<div class="form-group">
													<label class="form-label">댓글 등록</label>
													<textarea class="form-control" id="commentInput" rows="5"></textarea>
												</div>
												<div
													class="d-flex align-items-center justify-content-between">
													<button class="btn btn-primary" id="addComment">등록</button>
												</div>
										</div>
									</div>
		<%-- 							<div class="tab-pane fade" id="tab_files">
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
											<div class="title title-lg mb-0">
												<span>Shared files</span>
											</div>
										</div>
										<div class="file-block">
											<div class="collapse-simple">
												<div class="card">
													<div class="card-header">
														<a role="button" data-bs-toggle="collapse"
															href="#files_collapse" aria-expanded="true">Yesterday</a>
													</div>
													<div id="files_collapse" class="collapse show">
														<div class="card-body">
															<ul class="sh-files">
																<li>
																	<div class="media">
																		<div class="media-head">
																			<div
																				class="avatar avatar-icon avatar-sm avatar-soft-blue">
																				<span class="initial-wrap fs-3"> <i
																					class="ri-file-excel-2-fill"></i>
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
																					<img src="${path}/resources/img/avatar2.jpg" alt="user"
																						class="avatar-img">
																				</div>
																				<a href="#"
																					class="btn btn-sm btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret"
																					data-bs-toggle="dropdown"><span class="icon"><span
																						class="feather-icon"><i
																							data-feather="more-vertical"></i></span></span></a>
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
																			<div
																				class="avatar avatar-icon avatar-sm avatar-soft-light">
																				<span class="initial-wrap fs-3"> <i
																					class="ri-file-text-fill"></i>
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
																					<img src="${path}/resources/img/avatar3.jpg" alt="user"
																						class="avatar-img">
																				</div>
																				<a href="#"
																					class="btn btn-sm btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret"
																					data-bs-toggle="dropdown"><span class="icon"><span
																						class="feather-icon"><i
																							data-feather="more-vertical"></i></span></span></a>
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
																			<div
																				class="avatar avatar-icon avatar-sm avatar-soft-warning">
																				<span class="initial-wrap fs-3"> <i
																					class="ri-file-zip-fill"></i>
																				</span>
																			</div>
																		</div>
																		<div class="media-body">
																			<div>
																				<p class="file-name">themeforest-pack.zip</p>
																				<p class="file-size">2.45 GB</p>
																			</div>
																			<div>
																				<div
																					class="avatar avatar-xs avatar-soft-danger avatar-rounded me-2">
																					<span class="initial-wrap">H</span>
																				</div>
																				<a href="#"
																					class="btn btn-sm btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret"
																					data-bs-toggle="dropdown"><span class="icon"><span
																						class="feather-icon"><i
																							data-feather="more-vertical"></i></span></span></a>
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
																				<span class="initial-wrap"> <img
																					src="${path}/resources/img/6image.png" alt="user">
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
																					<img src="${path}/resources/img/avatar5.jpg" alt="user"
																						class="avatar-img">
																				</div>
																				<a href="#"
																					class="btn btn-sm btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret"
																					data-bs-toggle="dropdown"><span class="icon"><span
																						class="feather-icon"><i
																							data-feather="more-vertical"></i></span></span></a>
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
																				<span class="initial-wrap"> <img
																					src="${path}/resources/img/2image.png" alt="user">
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
																					<img src="${path}/resources/img/avatar6.jpg" alt="user"
																						class="avatar-img">
																				</div>
																				<a href="#"
																					class="btn btn-sm btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret"
																					data-bs-toggle="dropdown"><span class="icon"><span
																						class="feather-icon"><i
																							data-feather="more-vertical"></i></span></span></a>
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
														<a role="button" data-bs-toggle="collapse"
															href="#files_collapse_1" aria-expanded="true">23
															April</a>
													</div>
													<div id="files_collapse_1" class="collapse show">
														<div class="card-body">
															<ul class="sh-files">
																<li>
																	<div class="media">
																		<div class="media-head">
																			<div
																				class="avatar avatar-icon avatar-sm avatar-soft-light">
																				<span class="initial-wrap fs-3"> <i
																					class="ri-keynote-fill"></i>
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
																					<img src="${path}/resources/img/avatar5.jpg" alt="user"
																						class="avatar-img">
																				</div>
																				<a href="#"
																					class="btn btn-sm btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret"
																					data-bs-toggle="dropdown"><span class="icon"><span
																						class="feather-icon"><i
																							data-feather="more-vertical"></i></span></span></a>
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
																			<div
																				class="avatar avatar-icon avatar-sm avatar-soft-warning">
																				<span class="initial-wrap fs-3"> <i
																					class="ri-file-zip-fill"></i>
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
																					<img src="${path}/resources/img/avatar2.jpg" alt="user"
																						class="avatar-img">
																				</div>
																				<a href="#"
																					class="btn btn-sm btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret"
																					data-bs-toggle="dropdown"><span class="icon"><span
																						class="feather-icon"><i
																							data-feather="more-vertical"></i></span></span></a>
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
																				<img src="${path}/resources/img/img-thumb1.jpg" alt="user"
																					class="avatar-img">
																			</div>
																		</div>
																		<div class="media-body">
																			<div>
																				<p class="file-name">joel-mott-LaK153ghdigaghdi</p>
																				<p class="file-size">3,028 KB</p>
																			</div>
																			<div>
																				<div class="avatar avatar-xs avatar-rounded me-2">
																					<img src="${path}/resources/img/avatar8.jpg" alt="user"
																						class="avatar-img">
																				</div>
																				<a href="#"
																					class="btn btn-sm btn-icon btn-flush-dark btn-rounded flush-soft-hover dropdown-toggle no-caret"
																					data-bs-toggle="dropdown"><span class="icon"><span
																						class="feather-icon"><i
																							data-feather="more-vertical"></i></span></span></a>
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
									</div> --%>
			<%-- 						<div class="tab-pane fade" id="tab_activity">
										<div class="mt-5 mb-2">
											<div class="title title-lg mb-0">
												<span>Latest activity</span>
											</div>
										</div>
										<div class="collapse-simple">
											<div class="card">
												<div class="card-header">
													<a role="button" data-bs-toggle="collapse"
														href="#activity_1" aria-expanded="true">Today</a>
												</div>
												<div id="activity_1" class="collapse show">
													<div class="card-body">
														<ul class="activity-list list-group list-group-flush">
															<li class="list-group-item">
																<div class="media">
																	<div class="media-head">
																		<div
																			class="avatar avatar-xs avatar-primary avatar-rounded">
																			<span class="initial-wrap">H</span>
																		</div>
																	</div>
																	<div class="media-body">
																		<p>
																			<span class="text-dark">Hencework</span> on
																			Documentation link is working now - <a href="#"
																				class="link-url"><u>ttps://hencework.com/theme/jampa</u></a>
																		</p>
																		<div class="last-activity-time">Oct 15, 2021,
																			12:34 PM</div>
																	</div>
																</div>
															</li>
															<li class="list-group-item">
																<div class="media">
																	<div class="media-head">
																		<div class="avatar avatar-xs avatar-rounded">
																			<img src="${path}/resources/img/avatar2.jpg" alt="user"
																				class="avatar-img">
																		</div>
																	</div>
																	<div class="media-body">
																		<p>
																			<span class="text-dark">Morgan Fregman</span>
																			completed react conversion of <a href="#"
																				class="link-default"><u>components</u></a>
																		</p>
																		<div class="last-activity-time">Sep 16, 2021,
																			4:54 PM</div>
																	</div>
																</div>
															</li>
															<li class="list-group-item">
																<div class="media">
																	<div class="media-head">
																		<div class="avatar avatar-xs avatar-rounded">
																			<img src="${path}/resources/img/avatar13.jpg" alt="user"
																				class="avatar-img">
																		</div>
																	</div>
																	<div class="media-body">
																		<p>
																			<span class="text-dark">Jimmy Carry</span>completed
																			side bar menu on <a href="#" class="link-default"><u>elements</u></a>
																		</p>
																		<div class="last-activity-time">Sep 10, 2021,
																			10:13 AM</div>
																	</div>
																</div>
															</li>
															<li class="list-group-item">
																<div class="media">
																	<div class="media-head">
																		<div class="avatar avatar-xs avatar-rounded">
																			<img src="${path}/resources/img/avatar7.jpg" alt="user"
																				class="avatar-img">
																		</div>
																	</div>
																	<div class="media-body">
																		<p>
																			<span class="text-dark">Charlie Chaplin</span>
																			deleted empty cards on <a href="#"
																				class="link-default"><u>completed</u></a>
																		</p>
																		<div class="last-activity-time">Sep 10, 2021,
																			10:13 AM</div>
																	</div>
																</div>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header">
													<a role="button" data-bs-toggle="collapse"
														href="#activity_2" aria-expanded="true">Yesterday</a>
												</div>
												<div id="activity_2" class="collapse show">
													<div class="card-body">
														<ul class="activity-list list-group list-group-flush">
															<li class="list-group-item">
																<div class="media">
																	<div class="media-head">
																		<div
																			class="avatar avatar-xs avatar-soft-danger avatar-rounded">
																			<span class="initial-wrap">W</span>
																		</div>
																	</div>
																	<div class="media-body">
																		<p>
																			<span class="text-dark">Winston Churchills</span>
																			created a note on UI components task list
																		</p>
																		<div class="last-activity-time">Sep 2, 2021,
																			9:23 AM</div>
																	</div>
																</div>
															</li>
															<li class="list-group-item">
																<div class="media">
																	<div class="media-head">
																		<div class="avatar avatar-xs avatar-rounded">
																			<img src="${path}/resources/img/avatar2.jpg" alt="user"
																				class="avatar-img">
																		</div>
																	</div>
																	<div class="media-body">
																		<p>
																			<span class="text-dark">Morgan Fregman</span>
																			completed react conversion of <a href="#"
																				class="link-default"><u>components</u></a>
																		</p>
																		<div class="last-activity-time">Sep 16, 2021,
																			4:54 PM</div>
																	</div>
																</div>
															</li>
															<li class="list-group-item">
																<div class="media">
																	<div class="media-head">
																		<div class="avatar avatar-xs avatar-rounded">
																			<img src="${path}/resources/img/avatar13.jpg" alt="user"
																				class="avatar-img">
																		</div>
																	</div>
																	<div class="media-body">
																		<p>
																			<span class="text-dark">Jimmy Carry</span>added
																			shared components to <a href="#" class="link-default"><u>basic
																					structure</u></a>
																		</p>
																		<div class="last-activity-time">Sep 10, 2021,
																			10:13 AM</div>
																	</div>
																</div>
															</li>
															<li class="list-group-item">
																<div class="media">
																	<div class="media-head">
																		<div
																			class="avatar avatar-xs avatar-primary avatar-rounded">
																			<span class="initial-wrap">H</span>
																		</div>
																	</div>
																	<div class="media-body">
																		<p>
																			<span class="text-dark">Hencework</span> commented on
																			<a href="#" class="link-default"><u>basic
																					structure</u></a>
																		</p>
																		<div class="last-activity-time">Sep 10, 2021,
																			10:13 AM</div>
																	</div>
																</div>
															</li>
															<li class="list-group-item">
																<div class="media">
																	<div class="media-head">
																		<div class="avatar avatar-xs avatar-rounded">
																			<img src="${path}/resources/img/avatar7.jpg" alt="user"
																				class="avatar-img">
																		</div>
																	</div>
																	<div class="media-body">
																		<p>
																			<span class="text-dark">Charlie Chaplin</span> moved
																			components from all modules to in progress
																		</p>
																		<div class="last-activity-time">Sep 10, 2021,
																			10:13 AM</div>
																	</div>
																</div>
															</li>
															<li class="list-group-item">
																<div class="media">
																	<div class="media-head">
																		<div
																			class="avatar avatar-xs avatar-soft-danger avatar-rounded">
																			<span class="initial-wrap">W</span>
																		</div>
																	</div>
																	<div class="media-body">
																		<p>
																			<span class="text-dark">Winston Churchills</span>
																			created a note on UI components task list
																		</p>
																		<div class="last-activity-time">Sep 10, 2021,
																			10:13 AM</div>
																	</div>
																</div>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div> --%>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Edit Info -->
				<div id="add_new_task" class="modal fade add-new-contact"
					tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content">
							<div class="modal-body">
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">×</span>
								</button>
								<h5 class="mb-4">프로젝트 등록</h5>
								<form id="todoForm" action="${path}/schedule/insertproject" method="POST">
									<input type="hidden" name="empno" id="projectEmpno"
										value="${loginEmp.emp_no}" />
										<input type="hidden" name="code" id="projectCode"
										value="CAL007" />
										<input type="hidden" name="backgroundColor" id="projectColor"
										value="#9b42f5" />
									<div class="row gx-3">
										<div class="col-sm-12">
											<div class="form-group">
												<label class="form-label">프로젝트명</label> <input
													class="form-control" type="text" name="title" id="projectName" />
											</div>
										</div>
									</div>
									<div class="row gx-3">
										<div class="col-md-12">
											<div class="form-group">
												<div class="form-label-group">
													<label class="form-label">프로젝트 내용</label>
												</div>
												<textarea class="form-control" name="content" id="projectContent" rows="3"></textarea>
											</div>
										</div>
									</div>
									<div class="row gx-3">
										<div class="col-sm-12">
											<div class="form-group">
												<label class="form-label">진행상태</label> <select
													class="form-control custom-select" name="status" id="projectStatus">
													<option value="대기">대기</option>
													<option value="진행중">진행중</option>
													<option value="마감">마감</option>
												</select>
											</div>
										</div>
									</div>
									<div class="row gx-3">
										<div class="col-sm-6">
											<div class="form-group">
												<label class="form-label">시작일자</label> <input
													class="form-control cal-event-date-start" id="startDate"
													name="start" type="text" />
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label class="form-label">종료일자</label> <input
													class="form-control cal-event-date-end" id="endDate"
													name="end" type="text" />
											</div>
										</div>
									</div>
									<div class="row gx-3" style="display: flex">
										<div class="col-sm-12 form-group">
											<input class="form-check-input cal-event-allday"
												id="alldaycheck" name="allday" type="checkbox"> <label
												class="form-check-label" for="alldaycheck"> 종일여부</label>
										</div>
										<div
											class="title title-xs title-wth-divider text-primary text-uppercase my-4">
										</div>
					<div class="row gx-3" style="display: flex">
									<div class="row gx-3">
										<div class="col-sm-3">
											<span>프로젝트 공유</span>
										</div>
										<div class="col-sm-5">
											<div class="form-group">
												<button type="button" onclick="window.adddelFunction.util.addFile();"
													id="delBtn">추가</button>
<%--												<button type="button"--%>
<%--													id="addBtn">삭제</button>--%>
											</div>
										</div>
									</div>

									<div class="inviteContainer inviteContainer_1" style="display: flex">
										<div class="col-sm-4">
											<div class="form-groupddddd">
												<label class="form-label">부서</label>
												<div class="d-flex">
													<select class="form-select me-3" name="calDept"
														id="calDept1">
														<c:if test="${not empty deptList}">
															<c:forEach var="dept" items="${deptList}">
																<option value="${dept.deptCode}">${dept.deptName}</option>
															</c:forEach>
														</c:if>
													</select>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="form-group">
												<label class="form-label">직원</label>
												<div class="d-flex">
													<select class="form-select me-3" name="calEmp" id="calEmp1">
														<option value=""></option>
													</select>
												</div>
											</div>
										</div>
										<button type="button" onclick="window.adddelFunction.util.delFile(this);">삭제</button>
									</div>


								</div>

								<div name="someContainer"></div>
									<div class="modal-footer align-items-center">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal" id="cancelBtn">취소</button>
										<button id="add_project" type="submit" class="btn btn-primary"
											data-bs-dismiss="modal">등록</button>
									</div>
								</form>
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
<script>
var loginEmpNo = ${loginEmp.emp_no}
var loginDeptCode = '${loginEmp.dept_code}';


var deptCodes = [];
var deptNames = [];

<c:forEach items="${deptList }" var="dept">
    deptCodes.push("${dept.deptCode}");
    deptNames.push("${dept.deptName}");
</c:forEach>

var empDeptCodes = [];
var empNames = [];
var empNos = []

<c:forEach items="${empList }" var="emp">
empDeptCodes.push("${emp.dept_code}");
empNames.push("${emp.emp_name}");
empNos.push("${emp.emp_no}");
</c:forEach>




/* $('input[name="start"]').daterangepicker({
	singleDatePicker: true,
	timePicker: true, 
	timePicker24Hour: true, // 24시간 형식 활성화
	startDate: moment().startOf('hour'), // 오늘 날짜의 9시로 설정
    showDropdowns: true,
	showDropdowns: true,
	minYear: 1901,
	timePickerIncrement: 60, // 1시간 간격
	"cancelClass": "btn-secondary",
	locale:  {
	  format: 'YYYY/MM/DD HH:mm'
	}
});

$('input[name="start"]').attr('readonly', 'readonly');

/* Single Date*/
/* $('input[name="end"]').daterangepicker({
	singleDatePicker: true,
	timePicker: true,
	timePicker24Hour: true, // 24시간 형식 활성화
	sstartDate: moment().startOf('hour'), // 오늘 날짜의 9시로 설정
    showDropdowns: true,
	showDropdowns: true,
	minYear: 1901,
	"cancelClass": "btn-secondary",
	locale:  {
	  format: 'YYYY/MM/DD HH:mm'
	}
});

$('input[name="end"]').attr('readonly', 'readonly');
  */


document.querySelectorAll(".projectView").forEach(element => {
    element.onclick = (e) => {
        const $project = e.currentTarget
        todoAppTarget.addClass('todoapp-info-active');
        
        searchProjectbyCalNo($project.getAttribute('data-projectNo'),0);
    }
});
  
//중요일정으로 변경
	document.querySelector('#event_import').addEventListener('change', function() {
      var importYn = this.checked ? 'Y' : 'N';
      
      $.ajax({
			url: "/schedule/updateImportYn",
			method: "POST",
			data: JSON.stringify(
				{importYn : importYn,
				calno: document.getElementById('recalno').value,
				}),
			contentType: 'application/json',
		})
			.done(function(result) {
				alert("중요 프로젝트로 변경 성공");
				calendar.addEvent(editEvent);

				calendar.refetchEvents();
			})
			.fail(function(request, status, error) {
				alert("중요 프로젝트로 변경 실패" + error);
				this.checked = false;
			});

		calendar.unselect();

	});



//프로젝트 상세조회
  function searchProjectbyCalNo(calNo,initcount=2) {
  	$.ajax({
  		url: "/schedule/projectlistbycalno.do?calNo="+calNo,
  		method: "GET",
  		contentType: 'application/json',
  		dataType: 'json',
  	})
  		.done(function(data) {  			
  	    	function formatDate(date) {
  				  var formattedDate = new Date(date);
  				  var year = formattedDate.getFullYear();
  				  var month = ("0" + (formattedDate.getMonth() + 1)).slice(-2);
  				  var day = ("0" + formattedDate.getDate()).slice(-2);
  				  var hours = ("0" + formattedDate.getHours()).slice(-2);
  				  var minutes = ("0" + formattedDate.getMinutes()).slice(-2);
  				  
  				  return year + '/' + month + '/' + day + ' ' + hours + ':' + minutes;
  					}
  	    	
  	    	
  	    	
  	        document.getElementById('recalno').value = data.calNo;
  	        document.getElementById('reproSubject').value = data.calSubject;
  	        document.getElementById('reproContent').textContent = data.calContent;
  	        document.getElementById('reproEndDate').value = formatDate(data.calEndDate);
  	        document.getElementById('reproStartDate').value = formatDate(data.calStartDate);
  	        
  	      var importantYn = data.calImportYn;
			switch (importantYn) {
			    case 'Y':
			        document.querySelector('#event_import').checked = true;
			        break;
			    case 'N':
			        document.querySelector('#event_import').checked = false;
			        break;
			        }
  	        
  	        const selectElement = document.getElementById('reproStatus');

  	     // select 요소의 options를 순회하면서 서버로부터 받아온 'calStatus' 값과 일치하는 
  	     // option을 찾아 'selected' 속성을 true로 설정합니다.
  	     Array.from(selectElement.options).forEach(option => {
  	         if (option.value === data.calStatus) {
  	             option.selected = true;
  	         };  
  	     });
  	     
  	     
  	     switch (data.calAlldayYn) {
  	     	case 'Y':
  	     		$('#realldaycheck').prop('checked', true);
  	     		break;
  	     	case 'N':
  	     		$('#realldaycheck').prop('checked', false);
  	     		break;
  	     }
  	     
  	     
  	     $('#realldaycheck').on('click', function() {
  	    		var startPicker = $('#reproStartDate').data('daterangepicker');
  	    		var endPicker = $('#reproEndDate').data('daterangepicker');

  	    		if ($(this).is(':checked')) {

  	    			var startD = moment(startPicker.startDate);
  	    			startD.set({ hour: 0, minute: 0, second: 0, millisecond: 0 });
  	    			startPicker.setStartDate(startD);

  	    			var endD = moment(endPicker.endDate); // 수정된 부분
  	    			endD.set({ hour: 23, minute: 59, second: 59, millisecond: 999 });
  	    			endPicker.setStartDate(endD);


  	    		} else {
  	    			$('#reproStartDate').daterangepicker({
  	    				timePicker: true,
  	    				singleDatePicker: true,
  	    				timePicker24Hour: true,
  	    				timePickerIncrement: 1,
  	    				startDate: formatDate(data.calStartDate),
  	    				locale: {
  	    					format: 'YYYY/MM/DD HH:mm'
  	    				}
  	    			});




  	    			$('#reproEndDate').daterangepicker({
  	    				timePicker: true,
  	    				singleDatePicker: true,
  	    				timePicker24Hour: true,
  	    				timePickerIncrement: 1,
  	    				startDate: formatDate(data.calEndDate),
  	    				locale: {
  	    					format: 'YYYY/MM/DD HH:mm'
  	    				}
  	    			});

  	    		}
  	    	});
  	     
  	     
  	     const invitationEmpList = data.invitationEmpList;
  	     const invitationEmpListLength = invitationEmpList.length;
  	     let removedItemsCount = 0; // 삭제된 요소의 수를 추적하는 변수
  	     shareProjectCount = initcount;
  	     
  	   	$("div#shareListJob>*").remove();

  	     if (invitationEmpListLength > 0) {
  	     	
  	     	// 수정 모달 list만큼 만들어주기(부서 직원)
  	     	for (var i = 0; i < invitationEmpListLength; i++) {
  	     	    var YourEmpNo = invitationEmpList[i].yourEmpNo;
  	     	    var YourEmpName = invitationEmpList[i].yourEmpName;
  	     	    var YourDeptName = invitationEmpList[i].yourDeptName;
  	     	    var YourDeptCode = invitationEmpList[i].yourDeptCode;
  	     	    
  	     	    if(invitationEmpList[i].inviUseYn = 'Y'){

  	     	    // 다시 생성
  	     	    let reInviContainer = document.createElement('div');
  	     	    reInviContainer.className = 'reinvicontainer' + (i + 1);
  	     	    reInviContainer.style.display = 'flex';
  	     	    reInviContainer.style.paddingTop = '5px';
  	     	    reInviContainer.style.paddingBottom = '5px';

  	     	    let deptContainer = document.createElement('div');
  	     	    deptContainer.className = 'col-sm-5';
  	     	    let empContainer = document.createElement('div');
  	     	    empContainer.className = 'col-sm-5';

  	     	    let deptSelect = document.createElement('select');
  	     	    deptSelect.className = 'form-select me-3';
  	     	    deptSelect.name = 'recalDept';
  	     	    deptSelect.id = 'recalDept' + (i + 1);

  	     	    let empSelect = document.createElement('select');
  	     	    empSelect.className = 'form-select me-3';
  	     	    empSelect.name = 'recalEmp';
  	     	    empSelect.id = 'recalEmp' + (i + 1);

  	     	    deptContainer.appendChild(deptSelect);
  	     	    empContainer.appendChild(empSelect);

  	     	    reInviContainer.appendChild(deptContainer);
  	     	    reInviContainer.appendChild(empContainer);

  	     	    let someContainer2 = document.getElementById('shareListJob');
  	     	    someContainer2.appendChild(reInviContainer);

  	     	    // 추가된 부분: 삭제 버튼 생성 및 이벤트 핸들러 연결
  	     	    let delButton = document.createElement('button');
  	     	    delButton.type = 'button';
  	     	    delButton.textContent = '삭제';
  	     	    delButton.addEventListener('click', function () {
  	     	        // 클릭된 삭제 버튼의 부모 요소인 컨테이너를 삭제
  	     	        reInviContainer.remove();
  	     	        removedItemsCount++;
  	     	        count = invitationEmpListLength - removedItemsCount + 1; // count 업데이트
  	     	    });

  	     	    reInviContainer.appendChild(delButton);

  	     	    // 나머지 코드는 그대로 유지

  	     	    for (var j = 0; j < deptCodes.length; j++) {
  	     	        let deptOption = document.createElement('option');
  	     	        deptOption.value = deptCodes[j];
  	     	        deptOption.text = deptNames[j];
  	     	        deptSelect.appendChild(deptOption);
  	     	    }

  	     	    for (var j = 0; j < deptSelect.options.length; j++) {
  	     	        if (deptSelect.options[j].value == YourDeptCode) {
  	     	            deptSelect.options[j].selected = true;
  	     	            break;
  	     	        }
  	     	    }

  	     	 // 부서 선택 시 이벤트 핸들러 함수
  	     		function handleDeptSelect() {
  	     		// 선택된 부서의 인덱스를 가져옵니다.
					var selectedDeptIndex = deptSelect.selectedIndex;
		
					// 선택된 부서에 해당하는 사원 이름과 사원 번호를 담을 배열을 초기화합니다.
					var matchingEmpNames = [];
					var matchingEmpNos = [];
		
					// 선택된 부서의 코드를 가져옵니다.
					var selectedDeptCode = deptCodes[selectedDeptIndex];
		
					// 선택된 부서의 코드와 일치하는 사원을 찾아서 배열에 추가합니다.
					for (var k = 0; k < empDeptCodes.length; k++) {
						if (empDeptCodes[k] === selectedDeptCode) {
							matchingEmpNames.push(empNames[k]);
							matchingEmpNos.push(empNos[k]);
						}
					}
		
					// 직원 선택(select) 요소를 초기화합니다.
					empSelect.innerHTML = "";
		
					// 매칭된 직원 이름과 사원 번호를 새로운 옵션으로 추가합니다.
					for (var l = 0; l < matchingEmpNames.length; l++) {
						var empOption = document.createElement("option");
						empOption.value = matchingEmpNos[l];
						empOption.text = matchingEmpNames[l];
						empSelect.appendChild(empOption);
					}
		
					for (var l = 0; l < empSelect.options.length; l++) {
						if (empSelect.options[l].value == YourEmpNo) {
							empSelect.options[l].selected = true;
							break;
						}
					}
				}
		


  	     	    handleDeptSelect();

  	     	    deptSelect.addEventListener("change", handleDeptSelect);
  	     	}
  	     	}
  	     }


  	     
  	     
  	   //체크리스트 조회

  	    const hkChecklist = document.querySelector('#tab_checklist .hk-checklist');  	
  	  	$("div.hk-checklist>div").remove();

		if (data.checkList.length > 0) {
    	// data.checkList 배열을 순회하며 DOM 요소를 생성합니다.
    	for (let i = 0; i < data.checkList.length; i++) {
        const checklistItem = data.checkList[i];

        // 새로운 div.form-check 요소를 생성합니다.
        const checklistDiv = document.createElement('div');
        checklistDiv.classList.add('form-check');

        // 새로운 input-hidden 요소를 생성합니다.
        const hiddenInput = document.createElement('input');
        hiddenInput.type = 'hidden';
        hiddenInput.id = 'checkNohidden';
        hiddenInput.value = checklistItem.calChecklistNo;

        // 새로운 input-checkbox 요소를 생성합니다.
        const checkboxInput = document.createElement('input');
        checkboxInput.type = 'checkbox';
        checkboxInput.classList.add('form-check-input');
        checkboxInput.id = `customCheckList${i + 2}`;
        checkboxInput.name = 'checkListBox';
        checkboxInput.checked = checklistItem.endYn === 'Y';

        // 새로운 label 요소를 생성합니다.
        const label = document.createElement('label');
        label.classList.add('form-check-label');
        label.htmlFor = `customCheckList${i + 2}`;
        label.innerText = checklistItem.calChecklistContent;

        // 새로운 span 요소를 생성합니다.
        const span = document.createElement('span');
        span.classList.add('done-strikethrough');

        // label에 span을 추가합니다.
        label.appendChild(span);

        // 삭제 링크를 위한 새로운 span 요소를 생성합니다.
        const deleteLink = document.createElement('span');
        deleteLink.classList.add('btn', 'btn-xs', 'btn-icon', 'btn-rounded', 'btn-flush-light', 'flush-soft-hover', 'delete-checklist');
        deleteLink.dataset.checklistNo = checklistItem.calChecklistNo;

        // 새로운 아이콘 span을 생성합니다.
        const iconSpan = document.createElement('span');
        iconSpan.classList.add('icon');

        // 새로운 feather-icon span을 생성합니다.
        const featherIcon = document.createElement('span');
        featherIcon.classList.add('feather-icon');

        // 새로운 휘더 아이콘 i를 생성합니다.
        const trashIcon = document.createElement('i');
		trashIcon.classList.add('icon', 'feather-icon');
		trashIcon.dataset.feather = 'trash-2';

        // i를 feather-icon에 추가합니다.
        featherIcon.appendChild(trashIcon);

        // feather-icon을 icon에 추가합니다.
        iconSpan.appendChild(featherIcon);

        // icon을 삭제 링크에 추가합니다.
        deleteLink.appendChild(iconSpan);

        // div.form-check에 input-hidden, input-checkbox, label, 삭제 링크를 추가합니다.
        checklistDiv.appendChild(hiddenInput);
        checklistDiv.appendChild(checkboxInput);
        checklistDiv.appendChild(label);
        checklistDiv.appendChild(deleteLink);

        // 생성된 DOM 요소를 #tab_checklist .hk-checklist 내에 추가합니다.
        hkChecklist.insertBefore(checklistDiv, document.querySelector('.add-new-checklist'));
    }
}
		
		//댓글 조회
		//$("div.comment-block").remove();
		if (data.commentList != null || data.commentList.length > 0) {
    	// data.checkList 배열을 순회하며 DOM 요소를 생성합니다.
    	for (let i = 0; i < data.commentList.length; i++) {
        const comment = data.commentList[i];
        
        var mediaDiv2 = document.createElement('div');
  		mediaDiv2.className = 'media';
  		mediaDiv2.id = 'level1'; // Ensure the id is unique
  		
  		var commentNoInput = document.createElement('input');
  		commentNoInput.type = 'hidden';
  		commentNoInput.id = 'commentNo';
  		commentNoInput.value = comment.calCommentNo;

  		// Create the inner div with class "media-body"
  		var mediaBodyDiv2 = document.createElement('div');
  		mediaBodyDiv2.className = 'media-body';

  		// Create the div for the name
  		var nameDiv2 = document.createElement('div');
  		var nameSpan2 = document.createElement('span');
  		nameSpan2.className = 'cm-name';
  		nameSpan2.textContent = comment.empName;
  		nameDiv2.appendChild(nameSpan2);

  		// Create the paragraph for the content
  		var contentParagraph2 = document.createElement('p');
  		contentParagraph2.id = 'commentContent';
  		contentParagraph2.textContent = comment.calCommentContent;

  		// Create the div for comment actions
  		var commentActionDiv2 = document.createElement('div');
		commentActionDiv2.classList.add('comment-action-wrap', 'mt-3');
		
		// Create the "답글" (Reply) span
		var replySpan = document.createElement('span');
		replySpan.className = 'comment-dot-sep';
		replySpan.textContent = '●';
		commentActionDiv2.appendChild(replySpan);
		
		var replyCommentSpan = document.createElement('span');
		replyCommentSpan.id = 'replyComment';
		replyCommentSpan.textContent = '답글';
		commentActionDiv2.appendChild(replyCommentSpan);
		
		// Create the "수정" (Update) span
		var updateSeparator1 = document.createElement('span');
		updateSeparator1.className = 'comment-dot-sep';
		updateSeparator1.textContent = '●';
		commentActionDiv2.appendChild(updateSeparator1);
		
		var updateCommentSpan = document.createElement('span');
		updateCommentSpan.id = 'updateComment';
		updateCommentSpan.textContent = '수정';
		commentActionDiv2.appendChild(updateCommentSpan);
		
		// Create the "삭제" (Delete) span
		var deleteSeparator = document.createElement('span');
		deleteSeparator.className = 'comment-dot-sep';
		deleteSeparator.textContent = '●';
		commentActionDiv2.appendChild(deleteSeparator);
		
		var deleteCommentSpan = document.createElement('span');
		deleteCommentSpan.id = 'deleteComment';
		deleteCommentSpan.textContent = '삭제';
		commentActionDiv2.appendChild(deleteCommentSpan);


  		// Append the inner elements to the mediaBodyDiv2
  		mediaBodyDiv2.appendChild(commentNoInput);
  		mediaBodyDiv2.appendChild(nameDiv2);
  		mediaBodyDiv2.appendChild(contentParagraph2);
  		mediaBodyDiv2.appendChild(commentActionDiv2);

  		// Append the mediaBodyDiv2 to the second mediaDiv
  		mediaDiv2.appendChild(mediaBodyDiv2);

  		// Create the second separator div
  		var separatorDiv2 = document.createElement('div');
  		separatorDiv2.className = 'separator separator-light';

  		// Get the parent element ".comment-block" where you want to insert the created elements
  		var commentBlock = document.querySelector('.comment-block');

  		// Append the second mediaDiv and separatorDiv2 inside the comment-block
  		commentBlock.appendChild(mediaDiv2);
  		commentBlock.appendChild(separatorDiv2);
  		
  		feather.replace();
  		
        
    		}
    	}
  		})
  		.fail(function(request, status, error) {
  			//console.log("프로젝트 상세 조회 실패" + error);
  		});
};
	  	

  // 체크리스트 추가
	   var id;
	   var checklistNo;

	   $(document).on("click", ".add-new-checklist", function (e) {
		    var id = uniqId(); // Generate unique ID

		    var checklistItem = $('<div class="form-check">' +
		    	'<input type="hidden" id="checkNohidden" value="">' +
		        '<input type="checkbox" class="form-check-input" name="checkListBox" id="customCheckListAppend_' + id + '">' +
		        '<label class="form-check-label" for="customCheckListAppend_' + id + '">' +
		        '<span class="done-strikethrough"></span>' +
		        '</label>' +
		        '<input class="form-control checklist-input" type="text" placeholder="Add new Item">' +
		        '<a href="#" class="btn btn-xs btn-icon btn-rounded btn-flush-light flush-soft-hover delete-checklist" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete">' +
		        '<span class="icon">' +
		        '<span class="feather-icon">' +
		        '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2">' +
		        '<polyline points="3 6 5 6 21 6"></polyline>' +
		        '<path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>' +
		        '<line x1="10" y1="11" x2="10" y2="17"></line>' +
		        '<line x1="14" y1="11" x2="14" y2="17"></line>' +
		        '</svg>' +
		        '</span>' +
		        '</span>' +
		        '</a>' +
		        '</div>');

		    checklistItem.insertBefore($(this)) // Insert new checklist before the current element
		        .find('input[type="text"]')
		        .on('keypress', function (e) {
		        	
		            if (e.which == 13) { // Enter key pressed
		                e.preventDefault();
		                var checklistValue = $(this).val(); // Save checklist input value

		                // Ajax call
		                $.ajax({
		                    url: "/schedule/insertChecklist",
		                    method: "POST",
		                    dataType: "json",
		                    data: JSON.stringify({
		                        checklistValue: checklistValue,
		                        calNo: document.querySelector('#recalno').value, // Set the appropriate value for data.calNo
		                        empNo: loginEmpNo // Set the appropriate value for loginEmpNo
		                    }),
		                    contentType: 'application/json',
		                    success: function (response) {
		                        // Success handling
		                         
		                      var newChecklistItem = $(this).prev().find('input').trigger('focus');

		                  
		                 	// Set the value of #checkNohidden to the response
		                    $('#checkNohidden').val(response);

		                    // Save the value of #checkNohidden in const checklistNo
		                  checklistItem.find('#checkNohidden').val(response);

                     // Save the value of .checkNohidden in const checklistNo
                     const checklistNo = checklistItem.find('#checkNohidden').val();
		                      
		                    },
		                    error: function (error) {
		                        // Error handling
		                        //console.error(error);
		                        //삭제..!!
		                    }
		                });
		            }
		        });

		    return false;
		});
	   
	   //체크리스트 삭제
			$(document).on("click",".delete-checklist",function (e) {
				e.preventDefault();
				
				const checklistNo = $(this).closest('.form-check').find('#checkNohidden').val();
			     
				   $.ajax({
	                   url: "/schedule/deleteChecklist",
	                   method: "POST",
	                   dataType: "json",
	                   data: JSON.stringify({
	                       checklistNo: checklistNo
	                   }),
	                   contentType: 'application/json',
	                   success: function (response) {
	                       // 성공 시 처리
	                       $(this).closest('.form-check').remove();

	                   },
	                   error: function (error) {
	                       // 에러 시 처리
	                       //console.error(error+"에러"+checklistNo);
	                       //그냥 두기
	                   }
	               });
			});
	   
			//체크리스트 완료 표시 //만든거 바로 안됨
  			$(document).on("change",'input[type="checkbox"][name="checkListBox"]',function (e) {
  				e.preventDefault();
  				
  				const isChecked = $(this).prop('checked');
  				const checklistNo = $(this).closest('.form-check').find('#checkNohidden').val();

  			    var checkUrl = isChecked ? "/schedule/doneChecklist" : "/schedule/undoneChecklist";
  					
  					   $.ajax({
  		                   url: checkUrl,
  		                   method: "POST",
  		                   dataType: "json",
  		                   data: JSON.stringify({
  		                       checklistNo: checklistNo
  		                   }),
  		                   contentType: 'application/json',
  		                   success: function (response) {
  		                       // 성공 시 처리
  		                   },
  		                   error: function (error) {
  		                       // 에러 시 처리
  		                   }
  					})
  			});
			
			
  			//댓글 등록
  	  		$("#addComment").on("click", function () {
  	        // 텍스트 영역에서 코멘트 내용 가져오기
  	        var commentText = $("#commentInput").val();

  	        // 만약 코멘트가 비어 있다면 아무 작업도 하지 않음
  	        if (!commentText.trim()) {
  	            return;
  	        }

  	        // Ajax 호출
  	    	fetch("${path}/schedule/insertComment",{
  	    		method:"POST",
  	    		headers:{
  	    			"Content-Type":"application/json"
  	    		},body:JSON.stringify({
  	    			commentText : commentText, 
  	    			 calNo: document.querySelector('#recalno').value, 
  	                 empNo: loginEmpNo,
  	                 calCommentLevel : 1,
  	                 calCommentRef: 0
  	    		})
  	    	}).then(response=>{
  	    		if(response.status!=200) throw new Error(response.status);
  	    		return response.json();
  	    	}).then(result=>{
  	    		alert("댓글 등록 성공");
  	    		
  	    		$("#commentInput").val("");
  	    	
  	    	// Create the second mediaDiv with class "media" and id "level2"
  	    		var mediaDiv2 = document.createElement('div');
  	    		mediaDiv2.className = 'media';
  	    		mediaDiv2.id = 'level1'; // Ensure the id is unique
  	    		
  	    		var commentNoInput = document.createElement('input');
  	    		commentNoInput.type = 'hidden';
  	    		commentNoInput.id = 'commentNo';
  	    		commentNoInput.value = result.calCommentNo;

  	    		// Create the inner div with class "media-body"
  	    		var mediaBodyDiv2 = document.createElement('div');
  	    		mediaBodyDiv2.className = 'media-body';

  	    		// Create the div for the name
  	    		var nameDiv2 = document.createElement('div');
  	    		var nameSpan2 = document.createElement('span');
  	    		nameSpan2.className = 'cm-name';
  	    		nameSpan2.textContent = result.empName;
  	    		nameDiv2.appendChild(nameSpan2);

  	    		// Create the paragraph for the content
  	    		var contentParagraph2 = document.createElement('p');
  	    		contentParagraph2.id = 'commentContent';
  	    		contentParagraph2.textContent = result.calCommentContent;

  	    		// Create the div for comment actions
  	    		var commentActionDiv2 = document.createElement('div');
				commentActionDiv2.classList.add('comment-action-wrap', 'mt-3');
				
				// Create the "답글" (Reply) span
				var replySpan = document.createElement('span');
				replySpan.className = 'comment-dot-sep';
				replySpan.textContent = '●';
				commentActionDiv2.appendChild(replySpan);
				
				var replyCommentSpan = document.createElement('span');
				replyCommentSpan.id = 'replyComment';
				replyCommentSpan.textContent = '답글';
				commentActionDiv2.appendChild(replyCommentSpan);
				
				// Create the "수정" (Update) span
				var updateSeparator1 = document.createElement('span');
				updateSeparator1.className = 'comment-dot-sep';
				updateSeparator1.textContent = '●';
				commentActionDiv2.appendChild(updateSeparator1);
				
				var updateCommentSpan = document.createElement('span');
				updateCommentSpan.id = 'updateComment';
				updateCommentSpan.textContent = '수정';
				commentActionDiv2.appendChild(updateCommentSpan);
				
				// Create the "삭제" (Delete) span
				var deleteSeparator = document.createElement('span');
				deleteSeparator.className = 'comment-dot-sep';
				deleteSeparator.textContent = '●';
				commentActionDiv2.appendChild(deleteSeparator);
				
				var deleteCommentSpan = document.createElement('span');
				deleteCommentSpan.id = 'deleteComment';
				deleteCommentSpan.textContent = '삭제';
				commentActionDiv2.appendChild(deleteCommentSpan);


  	    		// Append the inner elements to the mediaBodyDiv2
  	    		mediaBodyDiv2.appendChild(commentNoInput);
  	    		mediaBodyDiv2.appendChild(nameDiv2);
  	    		mediaBodyDiv2.appendChild(contentParagraph2);
  	    		mediaBodyDiv2.appendChild(commentActionDiv2);

  	    		// Append the mediaBodyDiv2 to the second mediaDiv
  	    		mediaDiv2.appendChild(mediaBodyDiv2);

  	    		// Create the second separator div
  	    		var separatorDiv2 = document.createElement('div');
  	    		separatorDiv2.className = 'separator separator-light';

  	    		// Get the parent element ".comment-block" where you want to insert the created elements
  	    		var commentBlock = document.querySelector('.comment-block');

  	    		// Append the second mediaDiv and separatorDiv2 inside the comment-block
  	    		commentBlock.appendChild(mediaDiv2);
  	    		commentBlock.appendChild(separatorDiv2);
  	    		
  	    		
  	    		
  	    		
  	    		
  	    		
  	    		
  	    		
  	    		
  	    		
  	    		
  	    		
  	    	}).catch(e=>{
  	    		alert("댓글 등록 실패");
  	    		$("#commentInput").val("");
  	    	})	
  	    });	
  			
  			
  		//댓글 수정
  	  		$(document).on("click","#updateComment",function (e) {
  	  		 // Find the closest '.media' element, then find the '.media-body' within it
  	  	    var mediaBody = $(this).closest('.media').find('.media-body');

		    // Find the first paragraph element within the '.media-body'
		    var commentContent = mediaBody.find('p').text().trim();
		
		    // Set the comment content to the comment input
		    $("#commentInput").val(commentContent);
		      	
			  if (!commentText.trim()) {
				  return;
			  } else {
				    // Create the "수정 저장" button
				    var updateButton = '<button class="btn btn-primary" id="updateBtn">수정 저장</button>';

				    // Insert the "수정 저장" button next to the "등록" button
				    $("#addComment").after(updateButton);
				  }
			});
				
			 
  
  	  	$(document).on("click","#updateBtn",function (e) {	
  	  		
  	      // Optional: Do something with the comment text
			 var commentText = $("#commentInput").val();
			
			 var calCommentNo = mediaBody.find('input').val();
			    
  	        // Ajax 호출
  	    	fetch("${path}/schedule/updateComment",{
  	    		method:"POST",
  	    		headers:{
  	    			"Content-Type":"application/json"
  	    		},body:JSON.stringify({
  	    			commentText : commentText,
  	    			calCommentNo: calCommentNo 
  	    		})
  	    	}).then(response=>{
  	    		if(response.status!=200) throw new Error(response.status);
  	    		return response.json();
  	    	}).then(result=>{
  	    		alert("댓글 수정 성공");
  	    		
  	    		$("#commentInput").val("");
  	    		
  	    		commentContent.textContent = result.calCommentContent;
  	    		
  	    			
  	    	}).catch(e=>{
  	    		alert("댓글 수정 실패");

  	    	})
  	    });	
  		
  	  	//댓글 삭제
  	  		$(document).on("click","#deleteComment",function (e) {
  	  		 // Find the closest '.media' element, then find the '.media-body' within it
  	  	    var mediaBody = $(this).closest('.media').find('.media-body');
  	  		var seperator = $(this).closest('.media').find('.separator separator-light'); 
  	  		 
  	  		var calCommentNo = mediaBody.find('input').val();

  	        // Ajax 호출
  	    	fetch("${path}/schedule/deleteComment",{
  	    		method:"POST",
  	    		headers:{
  	    			"Content-Type":"application/json"
  	    		},body:JSON.stringify({
  	    			calCommentNo: calCommentNo 
  	    		})
  	    	}).then(response=>{
  	    		if(response.status!=200) throw new Error(response.status);
  	    		return response.json();
  	    	}).then(result=>{
  	    		alert("댓글 삭제 성공");
  	    				
  	    		mediaBody.remove();
  	    		seperator.remove();
  	    		
  	    			
  	    	}).catch(e=>{
  	    		alert("댓글 삭제 실패");

  	    	})	
  	    });	
  			
  			
  			
			
	
			
  
  	  	//수정 부서 직원 추가 
			function createContainer(index) {
			    let reInviContainer = document.createElement('div');
			    reInviContainer.className = 'reinvicontainer' + index;
			    reInviContainer.style.display = 'flex';
			    reInviContainer.style.paddingTop = '5px';
			    reInviContainer.style.paddingBottom = '5px';
			
			    let deptContainer = document.createElement('div');
			    deptContainer.className = 'col-sm-5';
			    let empContainer = document.createElement('div');
			    empContainer.className = 'col-sm-5';
			
			    let deptSelect = document.createElement('select');
			    deptSelect.className = 'form-select me-3';
			    deptSelect.name = 'recalDept';
			    deptSelect.id = 'recalDept' + index;
			
			    let empSelect = document.createElement('select');
			    empSelect.className = 'form-select me-3';
			    empSelect.name = 'recalEmp';
			    empSelect.id = 'recalEmp' + index;
			
			    for (var j = 0; j < deptCodes.length; j++) {
			        let deptOption = document.createElement('option');
			        deptOption.value = deptCodes[j];
			        deptOption.text = deptNames[j];
			        deptSelect.appendChild(deptOption);
			    }
			    
			    deptSelect.addEventListener("change", function(){
					var selectedDeptIndex = deptSelect.selectedIndex;
			
					// 선택된 부서에 해당하는 사원 이름과 사원 번호를 담을 배열을 초기화합니다.
					var matchingEmpNames = [];
					var matchingEmpNos = [];
		
					// 선택된 부서의 코드를 가져옵니다.
					var selectedDeptCode = deptCodes[selectedDeptIndex];
		
					// 선택된 부서의 코드와 일치하는 사원을 찾아서 배열에 추가합니다.
					for (var k = 0; k < empDeptCodes.length; k++) {
						if (empDeptCodes[k] === selectedDeptCode) {
							matchingEmpNames.push(empNames[k]);
							matchingEmpNos.push(empNos[k]);
						}
					}
		
					// 직원 선택(select) 요소를 초기화합니다.
					empSelect.innerHTML = "";
		
					// 매칭된 직원 이름과 사원 번호를 새로운 옵션으로 추가합니다.
					for (var l = 0; l < matchingEmpNames.length; l++) {
						var empOption = document.createElement("option");
						empOption.value = matchingEmpNos[l];
						empOption.text = matchingEmpNames[l];
						empSelect.appendChild(empOption);
					}
		
				});
			
			    var selectedDeptIndex = deptSelect.selectedIndex;
			    var selectedDeptCode = deptCodes[selectedDeptIndex];
			
			    var matchingEmpNames = [];
			    var matchingEmpNos = [];
			
			    for (var k = 0; k < empDeptCodes.length; k++) {
			        if (empDeptCodes[k] === selectedDeptCode) {
			            matchingEmpNames.push(empNames[k]);
			            matchingEmpNos.push(empNos[k]);
			        }
			    }
			
			    empSelect.innerHTML = "";
			
			    for (var l = 0; l < matchingEmpNames.length; l++) {
			        var empOption = document.createElement("option");
			        empOption.value = matchingEmpNos[l];
			        empOption.text = matchingEmpNames[l];
			        empSelect.appendChild(empOption);
			    }
			
			    deptContainer.appendChild(deptSelect);
			    empContainer.appendChild(empSelect);
			
			    reInviContainer.appendChild(deptContainer);
			    reInviContainer.appendChild(empContainer);
			
			    // 추가된 부분: 삭제 버튼 생성 및 이벤트 핸들러 연결
			    let delButton = document.createElement('button');
			    delButton.type = 'button';
			    delButton.textContent = '삭제';
			    delButton.addEventListener('click', function () {
			        // 클릭된 삭제 버튼의 부모 요소인 컨테이너를 삭제
			        reInviContainer.remove();
			        shareProjectCount--;
			    });
			
			    reInviContainer.appendChild(delButton);
			
			    return reInviContainer;
			}
			
			function updateCount() {
			    shareProjectCount = document.querySelectorAll("[class^='reinvicontainer']").length + 1;
			}
			
			$('#addBtnRe').on('click', function () {
			    if (shareProjectCount <= 5) {
			        let reInviContainer = createContainer(shareProjectCount);
			
			        let someContainer2 = document.querySelector('#shareListJob');
			        someContainer2.appendChild(reInviContainer);
			
			        shareProjectCount++;
			    } else {
			        alert("공유인원은 5명까지 가능합니다.");
			    }
			    updateCount(); // count를 업데이트하는 함수 호출
			});
  
  
  
  
  
  
  
  
  
  
  
  
  
	
//프로젝트 수정
document.getElementById('proeditBtn').addEventListener('click', fn_update);

function fn_update() {

	//select empNo를 리스트로 담아줌
	const selectEmps = $('select[name="recalEmp"]');
	const reempList = [];

	selectEmps.each(function() {
		const reempValue = $(this).val();
		reempList.push(reempValue);
	});

	const editProject = {
			retitle: document.getElementById('reproSubject').value,
			recode: "CAL007",
			reempno: loginEmpNo,
			reempList: reempList, // empList를 addEvent 객체의 속성으로 추가
			rebackgroundColor: '#9b42f5',
			reallday: $('#realldaycheck').is(':checked') ? 'Y' : 'N',
			restart: document.getElementById('reproStartDate').value,
			reend: document.getElementById('reproEndDate').value,
			recontent: document.getElementById('reproContent').textContent,
			restatus: document.querySelector('#reproStatus').value,
			recalno: document.querySelector('#recalno').value
		};
	
	fetch("${path}/schedule/updateproject",{
		method:"POST",
		headers:{
			"Content-Type":"application/json"
		},body:JSON.stringify(editProject)
	}).then(response=>{
		if(response.status!=200) throw new Error(response.status);
		return response.json();
	}).then(result=>{
		alert("프로젝트 수정 성공");
		
		location.reload();
		
		/* document.querySelectorAll(".projectView").forEach(element => {
	        if (element.getAttribute('data-projectNo') === String(result.calNo)) {
	            element.innerHTML = result.calSubject;
	        }
	    }); */
		
	}).catch(e=>{
		alert("프로젝트 수정 실패");
	})	
};


//프로젝트 삭제
$(document).ready(function() {
    $('#prodelBtn').on('click', function(e) {
        e.preventDefault();
        
        var project = document.querySelector('.projectView');
        var calNo = project.getAttribute('data-projectNo');
        
        
        $.ajax({
        	url: "/schedule/deleteschedule",
			method: "POST",
			data: JSON.stringify({ calNo: calNo }),
			contentType: 'application/json',
        })
    		.done(function(result) {
    			 alert('프로젝트 삭제 성공');
                 todoAppTarget.removeClass('todoapp-info-active');
                 //$(this).closest('.advance-list-item').remove();
                 
              // 성공 후 현재 페이지 새로고침
                 location.reload();
                
    		})
    		.fail(function(request, status, error) {
    			alert("프로젝트 삭제 실패" + error);
    		});
	});
});



	
	


//부서 선택 시 직원 표시
document.getElementById('calDept1').addEventListener('change', function() {
 var selectedDeptCode = this.value;
 
 fetch('${path}/deptemplist?deptCode=' + encodeURIComponent(selectedDeptCode))
   .then(function(response) {
     if (response.ok) {
       return response.json();
     } else {
       throw new Error('요청이 실패하였습니다.');
     }
   })
   .then(function(employeeList) {
     var employeeSelect = document.getElementById('calEmp1');
     employeeSelect.innerHTML = ''; // 기존의 옵션 초기화
     
     employeeList.forEach(function(employee) {
       var option = document.createElement('option');
       option.value = employee.no;
       option.textContent = employee.name;
       employeeSelect.appendChild(option);
     });
   })
   .catch(function(error) {
     //console.error(error);
   });
}); 




//부서 직원 추가
const adddelFunction=(function(adddelFunction){
	let self = {};
  	let count = 2;
  self.addFile=()=>{
     if(count<=5){
        const fileForm = $(".inviteContainer").eq(0).clone(true);
	     fileForm.removeClass("inviteContainer_1");
        fileForm.addClass("inviteContainer_"+count);
           const deptId = "calDept" + count;
           const empId = "calEmp" + count;
           
           fileForm.find("#calDept1").attr("id", deptId).val("").change(); // 부서 선택 시 직원 표시
           fileForm.find("#calEmp1").attr("id", empId).val(""); // 초기화
           
           // 부서 선택 시 해당 부서의 직원 표시
           fileForm.find("#" + deptId).on("change", function() {
             var selectedDeptCode = $(this).val();
             
             fetch('${path}/deptemplist?deptCode=' + encodeURIComponent(selectedDeptCode))
               .then(function(response) {
                 if (response.ok) {
                   return response.json();
                 } else {
                   throw new Error('요청이 실패하였습니다.');
                 }
               })
               .then(function(employeeList) {
                 var employeeSelect = document.getElementById(empId);
           
                 employeeSelect.innerHTML = ''; // 기존의 옵션 초기화
           
                 employeeList.forEach(function(employee) {
                   var option = document.createElement('option');
                   option.value = employee.no;
                   option.textContent = employee.name;
                   employeeSelect.appendChild(option);
                 });
               })
               .catch(function(error) {
                 //console.error(error);
               });
           });
           
           $("div[name=someContainer]").before(fileForm);
           count++;
         } else {
           alert("공유인원은 5명까지 가능합니다.");
         }
  };
  self.delFile=(e)=>{
     if(count!=2){
		  $(e).parent().remove();
		  $(".inviteContainer").each(function(index, item){
			  item.removeAttribute('class');
			  $(item).addClass('inviteContainer').addClass('inviteContainer_'+(index+1));
		  });
   	  //$("div[name=someContainer]").prev().remove();
        count--;
     }
  };

	/**
	 * REGIST
	 */
	if (!adddelFunction) {
		window.adddelFunction = adddelFunction = {};
	}
	adddelFunction.util = self;
})();


$('#alldaycheck').on(
        'click',
        function() {
           if ($(this).is(':checked')) {
              var clickedDate = $('#startDate').data(
                    'daterangepicker').startDate;
           
              clickedDate.set({
                 hour : 0,
                 minute : 0,
                 second : 0,
                 millisecond : 0
              });
              $('#startDate').data('daterangepicker')
                    .setStartDate(clickedDate);
              
              
              
              clickedDate = $('#endDate').data(
                    'daterangepicker').startDate;
              clickedDate.set({
                 hour : 23,
                 minute : 59,
                 second : 59,
                 millisecond : 999
              });
              

              $('#endDate').data('daterangepicker')
                    .setEndDate(clickedDate);
              
           } else {
              var clickedDate = $('#startDate').data(
                    'daterangepicker').startDate;
              clickedDate.set({
                 hour : 0,
                 minute : 0,
                 second : 0,
                 millisecond : 0
              });
              $('#startDate').data('daterangepicker')
                    .setStartDate(clickedDate);

              clickedDate = $('#endDate').data(
                    'daterangepicker').startDate;
              clickedDate.set({
                 hour : 0,
                 minute : 0,
                 second : 0,
                 millisecond : 0
              });
              $('#endDate').data('daterangepicker')
                    .setEndDate(clickedDate);
           }
        });
        



        
/* document.querySelector('#closeBtn').addEventListener('click', function() {
    resetForm();
  });
 

 // 취소 버튼 클릭 이벤트 처리
 document.querySelector('#cancelBtn').addEventListener('click', function() {
    resetForm();
 }); */

 // 값 초기화 함수
 /* function resetForm() {
    document.querySelector('.cal-event-code').selectedIndex = "CAL001";
    document.querySelector('.cal-event-date-start').value = getCurrentDateTime();
    document.querySelector('.cal-event-date-end').value = getCurrentDateTime();
    document.getElementById('alldaycheck').checked = false;
    document.querySelector('.cal-event-content').value = '';
    document.querySelector('.cal-event-name').value = '';
    document.getElementById('reremindercheck').checked = false;
 	  $("[class$='inviteContainer']:not(:first)").remove();
    // 첫 번째 항목의 값 초기화
    $(".inviteContainer:first").find("select").val("");
  	  
 } */
 

 
 
 /*Select Dropdown*/
	$(document).on('click', '.selectable-dropdown .dropdown-menu .dropdown-item', function (e) {
		var selText = $(this).text(),
		selbg = $(this).attr('data-color');
		$(this).parents('.selectable-dropdown').find('.dropdown-toggle').css({"border-color": selbg, "background": selbg}).html(selText);
	});
	$(document).on('click', '.selectable-split-dropdown .dropdown-menu .dropdown-item', function (e) {
		var selText = $(this).text(),
		selbg = $(this).attr('data-color');
		$(this).parents('.selectable-split-dropdown').find('.btn-dyn-text').html(selText);
	});

	
	
 
 
</script>
    
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	<!-- Bootstrap Core JS -->
 <%--   	<script src="${path}/resources/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script> --%>

    <!-- FeatherIcons JS -->
     <script src="${path}/resources/js/feather.min.js"></script>

    <!-- Fancy Dropdown JS -->
    <%-- <script src="${path}/resources/js/dropdown-bootstrap-extended.js"></script> --%>

	<!-- Simplebar JS -->
	<script src="${path}/resources/vendors/simplebar/dist/simplebar.min.js"></script>

	<!-- Daterangepicker JS -->
    <script src="${path}/resources/vendors/moment/min/moment.min.js"></script>
    <script src="${path}/resources/vendors/daterangepicker/daterangepicker.js"></script>
    <script src="${path}/resources/js/daterangepicker-data.js"></script>
	
	<!-- Tinymce JS -->
    <script src="${path}/resources/vendors/tinymce/tinymce.min.js"></script>
	
	<!-- Dropzone JS -->
	<script src="${path}/resources/vendors/dropzone/dist/dropzone.min.js"></script>
	
	<!-- Repeater JS -->
    <script src="${path}/resources/vendors/jquery.repeater/jquery.repeater.min.js"></script>
	
	<!-- Drag JS -->
	<script src="${path}/resources/vendors/dragula/dist/dragula.min.js"></script>
	
	<!-- Init JS -->
	<%-- <script src="${path}/resources/js/init.js"></script> --%>
	<script src="${path}/resources/js/todo-data.js"></script>
	<%-- <script src="${path}/resources/js/chips-init.js"></script> --%>
   

