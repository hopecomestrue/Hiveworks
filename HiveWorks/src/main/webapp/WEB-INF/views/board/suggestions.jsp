<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/views/common/header.jsp">
    <jsp:param value="default" name="style" />
    <jsp:param value="" name="hover" />
</jsp:include>
<%@ include file="/WEB-INF/views/common/sideBar.jsp"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<div class="hk-pg-wrapper">
    <div class="container-xxl" style="margin-left: 0px; margin-bottom: 30px; margin-top: 40px;">
        <h2>건의사항</h2>
    </div>
       <a href="${path}/board/boardWrite">
			<button type="button" class="btn btn-primary btn-sm" style="margin-left: 1495px; margin-bottom: 5px;">등록</button>
		</a>
    <div class="invoice-body">
        <div>
            <div class="invoice-list-view">
                <table id="datable_4" class="table">
                    <thead>
                        <tr>
                            <!-- 테이블 헤더 정보 추가 -->
                            <th>
                            </th>
                            <th>글 번호</th>
                            <th>날짜</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>작성일</th>
                            <th>수정/삭제</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:if test="${not empty boardList }">
                            <c:forEach var="b" items="${boardList}">
                                <tr>
                                    <td></td>
                                    <td>
	                                    <a href="#" class="table-link-text link-high-em">
	                                            <a href="${path}/board/boardView?boardNo=${b.boardNo}">
	                                            <c:out value="${b.boardNo}" /></a>
	                                    	<td><c:out value="${b.createDate}" /></td>
	                                    </a>
	                               </td>
                                    <td><c:out value="${b.boardTitle}" /></td>
                                    <td><c:out value="${b.emp_name}" /></td>
                                    <td><c:out value="${b.createDate}" /></td>
                                    <td>
                                        <div class="d-flex">
                                            <a
                                                class="btn btn-icon btn-flush-dark btn-rounded flush-soft-hover"
                                                data-bs-toggle="tooltip" data-bs-placement="top" title=""
                                                data-bs-original-title="수정"
                                                href="${path}/board/boardUpdate?boardNo=${b.boardNo}">
                                                <span class="btn-icon-wrap"><span
                                                        class="feather-icon"><i data-feather="edit"></i></span></span>
                                            </a>
                                            <a
                                                class="btn btn-icon btn-flush-dark btn-rounded flush-soft-hover del-button"
                                                data-bs-toggle="tooltip" data-bs-placement="top" title=""
                                                data-bs-original-title="삭제"
                                                href="${path}/board/boardDelete?boardNo=${b.boardNo}"> <span
                                                    class="btn-icon-wrap"><span class="feather-icon"><i
                                                            data-feather="trash-2"></i></span></span>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:if>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<style>
.sorting::before{
	width:100px;
	padding-right: 0px;
}
.table{
	margin-left: 0px;
	width: 1650px;
	padding-right: 100px;
	padding-left: 80px;
}
#datable_4_length{
	margin-left: 90px;
}
#datable_4_filter{
	width: 715px;
}
</style>
<!-- jQuery -->
<script src="${path}/resources/vendors/jquery/dist/jquery.min.js"></script>

<script src="${path}/resources/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="${path}/resources/vendors/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
<script src="${path}/resources/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="${path}/resources/vendors/datatables.net-buttons-bs5/js/buttons.bootstrap5.min.js"></script>
<script src="${path}/resources/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="${path}/resources/vendors/jszip/dist/jszip.min.js"></script>
<script src="${path}/resources/vendors/pdfmake/build/pdfmake.min.js"></script>
<script src="${path}/resources/vendors/pdfmake/build/vfs_fonts.js"></script>
<script src="${path}/resources/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="${path}/resources/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="${path}/resources/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="${path}/resources/vendors/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js"></script>
<script src="${path}/resources/vendors/datatables.net-select/js/dataTables.select.min.js"></script>
<script src="${path}/resources/vendors/datatables.net-fixedcolumns/js/dataTables.fixedColumns.min.js"></script>
<script src="${path}/resources/vendors/datatables.net-rowreorder/js/dataTables.rowReorder.min.js"></script>
<script>
    var targetElem = $('#datable_4');
    var targetDt = targetElem.DataTable({
        scrollX: true,
        autoWidth: false,
        language: {
            search: "",
            searchPlaceholder: "Search",
            sLengthMenu: "_MENU_items",
            paginate: {
                next: '<i class="ri-arrow-right-s-line"></i>', // or '→'
                previous: '<i class="ri-arrow-left-s-line"></i>' // or '←' 
            }
        },
        select: {
            style: 'multi'
        },
        "drawCallback": function () {
            $('.dataTables_paginate > .pagination').addClass('custom-pagination pagination-simple');
        }
    });
    $(document).on('click', '.del-button', function () {
        targetDt.rows('.selected').remove().draw(false);
    });
    $('Delete row').insertAfter(targetElem.closest('#datable_4_wrapper').find('.dataTables_length label'));

</script>

<!-- Init JS -->
<script src="${path}/resources/js/invoice-data.js"></script>
<script src="${path}/resources/js/chips-init.js"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>

