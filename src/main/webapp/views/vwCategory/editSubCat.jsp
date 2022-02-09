<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<jsp:useBean id="listMainCat" scope="request" type="java.util.List<com.nht.onlineshopping.beans.Category>"/>
<jsp:useBean id="categorynext" scope="request" type="com.nht.onlineshopping.beans.CategoryNext"/>


<t:admin>
    <jsp:attribute name="js">
        <script>
            $('#frmAddSubCat').on('submit', function (e) {
                e.preventDefault();
                const catID = $('#catName').find('option:selected').attr("name");
                $('#CatID').val(catID);

                const CatNextName = $('#CatNextName').val();
                if (CatNextName === '') {
                    alert("Tên không hợp lệ");
                    return;
                } else {
                    $('#frmAddSubCat').off('submit').submit();
                }

            });
        </script>
    </jsp:attribute>
    <jsp:body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-2">
                    <div class="card">
                        <div class="card-header">
                            Danh mục
                        </div>
                        <div class="list-group list-group-flush">
                            <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
                                The current link item
                            </a>
                            <a href="#" class="list-group-item list-group-item-action">A second link item</a>
                            <a href="#" class="list-group-item list-group-item-action">A third link item</a>
                            <a href="#" class="list-group-item list-group-item-action">A fourth link item</a>
                            <a class="list-group-item list-group-item-action disabled">A disabled link item</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-10">
                    <div class="card">
                        <form id="frmAddSubCat" method="post" class="justify-content-center">
                            <div class="card-header">
                                Thêm Danh Mục Phụ
                            </div>
                            <div class="row justify-content-center">
                                <div class="card-body col-sm-6">
                                    <div class="form-group">
                                        <label for="catName">Tên danh mục chính</label>
                                        <select class="form-control" id="catName">
                                            <c:forEach items="${listMainCat}" var="mainCat">
                                                <option name=${mainCat.catID}
                                                        <c:if test="${mainCat.catID == categorynext.catID}">
                                                                selected
                                                        </c:if>
                                                >
                                                        ${mainCat.catName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                        <input type="number" hidden name="CatID" id="CatID"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="CatNextName">Tên danh mục phụ</label>
                                        <input type="text" class="form-control" id="CatNextName" name="CatNextName"
                                              value="${categorynext.catNextName}" autofocus>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="row justify-content-center">
                                    <a class="btn btn-outline-success mr-4"
                                       href="${pageContext.request.contextPath}/admin/category" role="button"
                                       type="submit">
                                        <i class="fa fa-backward" aria-hidden="true"></i>
                                        Quay Lại
                                    </a>
                                    <button class="btn btn-primary" type="submit">
                                        <i class="fa fa-check" aria-hidden="true"></i>
                                        Sửa
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:admin>

