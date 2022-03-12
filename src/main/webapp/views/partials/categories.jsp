<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="categories" scope="request" type="java.util.List<com.nht.onlineshopping.beans.Category>"/>
<jsp:useBean id="categoriesNext" scope="request" type="java.util.List<com.nht.onlineshopping.beans.CategoryNext>"/>
<div class="text-center mb-4">
    <c:forEach items="${categories}" var="categories">
        <div class="btn-group mr-4">
            <button type="button" class="btn btn-outline-success dropdown-toggle" data-toggle="dropdown"
                    aria-expanded="false">
                    ${categories.catName}
            </button>
            <div class="dropdown-menu">
                <c:forEach items="${categoriesNext}" var="categoryNext">
                    <c:if test="${categories.catID == categoryNext.catID}">
                        <a class="dropdown-item"
                           href="${pageContext.request.contextPath}/product/byCatNext?catIDNext=${categoryNext.catIDNext}">${categoryNext.catNextName}
                        </a>
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </c:forEach>
</div>