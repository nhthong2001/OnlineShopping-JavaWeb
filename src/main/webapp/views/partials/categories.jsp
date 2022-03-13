<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="categories" scope="request" type="java.util.List<com.nht.onlineshopping.beans.Category>"/>
<jsp:useBean id="categoriesNext" scope="request" type="java.util.List<com.nht.onlineshopping.beans.CategoryNext>"/>
<div class="card">
    <div class="card-header">
        Danh mục
    </div>
    <input type="number" value="${categories.size()}" id="totalCat" hidden>
    <div class="list-group list-group-flush">
        <c:forEach items="${categories}" var="categories">
            <button class="list-group-item list-group-item-action" id="mainCat${categories.catID}">
                    <h6>${categories.catName}</h6>
            </button>
            <div class="list-group list-group-item-action list-group-flush">
                <c:forEach items="${categoriesNext}" var="categoryNext">
                    <c:if test="${categories.catID == categoryNext.catID}">
                        <a href="${pageContext.request.contextPath}/product/byCatNext?catIDNext=${categoryNext.catIDNext}"
                           class="list-group-item list-group-item-action subCat${categories.catID} subCat" >
                                ${categoryNext.catNextName}
                        </a>
                    </c:if>
                </c:forEach>
            </div>
        </c:forEach>
    </div>
</div>
