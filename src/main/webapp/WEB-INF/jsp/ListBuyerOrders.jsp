<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="IncludeTop.jsp"%>

<div align="center">
  <p>
    <font size="4"><b>구매-상품 주문 목록</b></font>
  </p>
  <table class="n23">
    <tr bgcolor="#CCCCCC">
      <td><b>주문 ID</b></td>  <td><b>상품 이름</b></td> <td><b>날짜</b></td> <td><b>주문 상태</b></td>
    </tr>
    <c:forEach var="order" items="${buyOrderList}">
      <tr bgcolor="#FFFF88">
        <td>
          <b><a href='<c:url value="/user/viewBuyerOrder.do">
              <c:param name="orderId" value="${order.orderId}"/></c:url>'>
              <font color="black"><c:out value="${order.orderId}" /></font>
            </a></b></td>
        <td>
          <c:out value="${order.product.title}" /></td>
        <td><fmt:formatDate value="${order.orderDate}"
            pattern="yyyy/MM/dd hh:mm:ss" /></td>
        <td>
          <c:out value="${order.orderStatus}" /></td>
      </tr>
    </c:forEach>
  </table>
</div>

<%@ include file="IncludeBottom.jsp"%>
