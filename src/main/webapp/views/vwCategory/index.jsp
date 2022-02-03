<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<jsp:useBean id="categories" scope="request" type="java.util.List<com.nht.onlineshopping.beans.Category>"/>
<jsp:useBean id="categoriesNext" scope="request" type="java.util.List<com.nht.onlineshopping.beans.CategoryNext>"/>

<t:admin>
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
                    <div class="card mb-4">
                        <div class="card-header">
                            Danh mục chính
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
                                            <a class="btn btn-outline-primary" href="#" role="button">
                                                <i class="fa fa-pencil" aria-hidden="true"></i>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            Danh mục phụ
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
                                                <a class="btn btn-outline-primary" href="#" role="button">
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
                </div>
            </div>
        </div>
    </jsp:body>
</t:admin>

