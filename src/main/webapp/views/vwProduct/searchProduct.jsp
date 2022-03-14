<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="productList" scope="request" type="java.util.List<com.nht.onlineshopping.beans.Product>"/>
<t:main>
    <jsp:body>
        <div class="card">
            <div class="card-header">
                <h3>SẢN PHẨM</h3>
            </div>
            <div class="card-body">
                <c:choose>
                    <c:when test="${productList.size() == 0}">
                        <p>Không có sản phẩm</p>
                    </c:when>
                    <c:otherwise>
                        <div class="row">
                            <c:forEach items="${productList}" var="p">
                                <a class="link-product"
                                   href="${pageContext.request.contextPath}/product/detail?id=${p.proID}" role="button">
                                    <div class="col-sm-4 mb-4">

                                        <div class="card h-100">
                                            <img src="${pageContext.request.contextPath}/public/img/product/${p.proID}/1.png"
                                                 alt="${p.proName}" title="${p.proName}" class="card-img-top">
                                            <div class="card-body">
                                                <h5 class="card-title">${p.proName}</h5>
                                                <h5 class="card-title text-danger">
                                                    <fmt:setLocale value="vi_VN"/>
                                                    <fmt:formatNumber value="${p.priceCurrent}" type="currency"/>
                                                </h5>
                                                <p class="card-text">Text</p>
                                            </div>
                                            <div class="card-footer text-muted">
                                                <a class="btn btn-sm btn-outline-danger" href="#" role="button">
                                                    <i class="fa fa-heart" aria-hidden="true"></i>
                                                    Yêu thích
                                                </a>
                                                <a class="btn btn-sm btn-outline-primary" href="#" role="button">
                                                    <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                                    Mua ngay
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </jsp:body>
</t:main>

