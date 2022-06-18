<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ include file="IncludeTop.jsp"%>

<div align="center">
  <p>
    <font size="4"><b>나의 입찰 목록</b></font>
  </p>
  <table class="n23">
    <tr bgcolor="#CCCCCC">
      <td><b>상품 이름</b></td>  <td><b>날짜</b></td> <td><b>입찰가</b></td> <td><b>상품 상태</b></td> <td></td>
    </tr>
    <c:forEach var="bidding" items="${biddingList.pageList}">
      <tr bgcolor="#FFFF88">
        <td>
          <b><a href='<c:url value="/shop/viewProduct.do">
              <c:param name="productId" value="${bidding.productId}"/></c:url>'>
          
            </a></b></td>
        <td><fmt:formatDate value="${bidding.updateDate}"
            pattern="yyyy/MM/dd hh:mm:ss" /></td>
        <td><fmt:formatNumber value="${bidding.biddingPrice}"
            pattern="$#,##0.00" /></td>
        
        <td>
          <b><a href='<c:url value=""/>'>주문하기</a></b>
      </tr>
    </c:forEach>
  </table>
</div>

<%@ include file="IncludeBottom.jsp"%>
