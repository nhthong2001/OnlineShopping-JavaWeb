<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top shadow mb-4">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/home">
        <i class="fa fa-home fa-lg" aria-hidden="true"></i>
    </a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <div class="navbar-nav mr-auto">
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
        <div class="navbar-nav ml-auto">
            <c:choose>
                <c:when test="${auth}">
                    <form id="frmLogout" method="post" action="${pageContext.request.contextPath}/auth/logout"></form>
                    <div class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-toggle="dropdown" aria-expanded="false">
                            Xin chào, ${authUser.name}
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/account/profile">Hồ sơ cá nhân</a>
                            <a class="dropdown-item" href="#">Quản lí bán hàng</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="javascript: $('#frmLogout').submit()">Đăng xuất</a>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                    <a type="button" href="${pageContext.request.contextPath}/auth/signup"
                       class="btn btn-outline-success mr-3">Đăng ký</a>
                    <a type="button" href="${pageContext.request.contextPath}/auth/login"
                       class="btn btn-outline-danger">Đăng nhập</a>
                </c:otherwise>
            </c:choose>

        </div>
    </div>

    </div>
</nav>