<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ include file="IncludeTop.jsp"%>

<div align="center">
  <p>
    <font size="4"><b>나의 판매 목록</b></font>
  </p>
  <table class="n23">
    <tr bgcolor="#CCCCCC">
      <td><b>상품 이름</b></td> <td><b>판매 날짜</b></td> <td><b>판매 상태 변경 - 추후 드롭다운으로 변경</b></td> <td></td>
    </tr>
    <c:forEach var="product" items="${productList}">
      <tr bgcolor="#FFFF88">
        <td>
          <b><a href='<c:url value="/shop/viewProduct.do">
              <c:param name="productId" value="${product.productId}"/></c:url>'>
              <font color="black"><c:out value="${product.title}" /></font>
            </a></b></td>
        <td><fmt:formatDate value="${product.createdTime}"
            pattern="yyyy/MM/dd hh:mm:ss" /></td>
        <td>
          <c:out value="${product.productStatus}" /></td>
      </tr>
    </c:forEach>
  </table>
</div>

<%@ include file="IncludeBottom.jsp"%>
