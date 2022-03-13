<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="product" scope="request" type="com.nht.onlineshopping.beans.Product"/>
<t:nav-foot>
    <jsp:attribute name="css">
    </jsp:attribute>
    <jsp:attribute name="js">
        <script>
        </script>
    </jsp:attribute>
    <jsp:body>
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="${pageContext.request.contextPath}/public/img/product/${product.proID}/1.png"
                                     class="d-block w-100" alt="${product.proName}-img-1">
                            </div>
                            <c:forEach var="i" begin="2" end="7" step="1" varStatus="name">
                                <div class="carousel-item">
                                    <img src="${pageContext.request.contextPath}/public/img/product/${product.proID}/${i}.png"
                                         class="d-block w-100" alt="${product.proName}-img-${i}">
                                </div>
                            </c:forEach>
                        </div>
                        <button class="carousel-control-prev" type="button" data-target="#carouselExampleControls"
                                data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-target="#carouselExampleControls"
                                data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </button>
                    </div>
                </div>
                <div class="col-sm-6">
                    <h3>${product.proName}</h3>
                    <div class="card-text">
                        Mô tả
                    </div>
                    <div class="card-text">
                            ${product.description}
                    </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:nav-foot>