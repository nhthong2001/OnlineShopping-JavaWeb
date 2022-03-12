<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="categories" scope="request" type="java.util.List<com.nht.onlineshopping.beans.Category>"/>
<jsp:useBean id="categoriesNext" scope="request" type="java.util.List<com.nht.onlineshopping.beans.CategoryNext>"/>
<div class="card">
    <div class="card-header">
        Danh mục
    </div>
    <div class="list-group list-group-flush">

        <c:forEach items="${categories}" var="categories">
            <a href="javascript:;" class="list-group-item list-group-item-action">${categories.catName}</a>
            <div class="list-group list-group-item-action">
                <c:forEach items="${categoriesNext}" var="categoryNext">
                    <c:if test="${categories.catID == categoryNext.catID}">
                        <a href="${pageContext.request.contextPath}/product/byCatNext?catIDNext=${categoryNext.catIDNext}"
                           class="list-group-item">
                                ${categoryNext.catNextName}
                        </a>
                    </c:if>
                </c:forEach>
            </div>
        </c:forEach>
    </div>
</div>
