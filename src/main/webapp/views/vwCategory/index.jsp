<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<jsp:useBean id="categories" scope="request" type="java.util.List<com.nht.onlineshopping.beans.Category>"/>
<jsp:useBean id="categoriesNext" scope="request" type="java.util.List<com.nht.onlineshopping.beans.CategoryNext>"/>

<t:admin>
    <jsp:body>
        <div class="container-fluid">
        <div class="card mb-4">
            <div class="card-header d-flex justify-content-between">
                Danh mục chính
                <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/admin/category/addMain"
                   role="button">
                    <i class="fa fa-plus" aria-hidden="true"></i>
                    Thêm
                </a>
            </div>
            <div class="card-body">
                <table class="table table-hover text-center">
                    <thead>
                    <tr>
                        <th scope="col">CatID</th>
                        <th scope="col">Tên danh mục</th>
                        <th scope="col">&nbsp;</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${categories}" var="category">
                        <tr>
                            <th scope="row">${category.catID}</th>
                            <td>${category.catName}</td>
                            <td>
                                            <span class="float-right">
                                                <a class="btn btn-outline-primary mr-2"
                                                   href="${pageContext.request.contextPath}/admin/category/editMain?id=${category.catID}"
                                                   role="button">
                                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                                </a>
                                                <a class="btn btn-outline-primary"
                                                   href="javascript: $('#frmDel').submit();" role="button">
                                                    <form id="frmDel"
                                                          action="${pageContext.request.contextPath}/admin/category/deleteMain?id=${category.catID}"
                                                          method="post"></form>
                                                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                                                </a>
                                            </span>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="card">
            <div class="card-header d-flex justify-content-between">
                Danh mục phụ
                <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/admin/category/addSub"
                   role="button">
                    <i class="fa fa-plus" aria-hidden="true"></i>
                    Thêm
                </a>
            </div>
            <div class="card-body">
                <div class="card-body">
                    <table class="table table-hover text-center">
                        <thead>
                        <tr>
                            <th scope="col">Mã danh mục phụ</th>
                            <th scope="col">Tên danh mục phụ</th>
                            <th scope="col">Danh mục chính</th>
                            <th scope="col">&nbsp;</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${categoriesNext}" var="categoryNext">
                            <tr>
                                <th scope="row">${categoryNext.catIDNext}</th>
                                <td>${categoryNext.catNextName}</td>
                                <c:forEach items="${categories}" var="category">
                                    <c:if test="${category.catID == categoryNext.catID}">
                                        <td>${category.catName}</td>
                                    </c:if>
                                </c:forEach>
                                <td>
                                    <a class="btn btn-outline-primary float-right"
                                       href="${pageContext.request.contextPath}/admin/category/editSub?id=${categoryNext.catIDNext}"
                                       role="button">
                                        <i class="fa fa-pencil" aria-hidden="true"></i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </jsp:body>
</t:admin>

