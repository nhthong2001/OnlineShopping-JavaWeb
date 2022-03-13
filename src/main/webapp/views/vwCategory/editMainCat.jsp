<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<jsp:useBean id="category" scope="request" type="com.nht.onlineshopping.beans.Category"/>


<t:admin>
    <jsp:body>
        <div class="container-fluid">
        <div class="card">
            <form method="post" class="justify-content-center">
                <div class="card-header">
                    Thêm Danh Mục Chính
                </div>
                <div class="row justify-content-center">
                    <div class="card-body col-sm-6">
                        <div class="form-group">
                            <label for="CatID">Mã danh mục</label>
                            <input type="text" class="form-control" id="CatID" name="CatID" readonly
                                   value="${category.catID}">
                        </div>
                        <div class="form-group">
                            <label for="CatName">Tên danh mục</label>
                            <input type="text" class="form-control" id="CatName" name="CatName"
                                   value="${category.catName}" autofocus>
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
    </jsp:body>
</t:admin>

