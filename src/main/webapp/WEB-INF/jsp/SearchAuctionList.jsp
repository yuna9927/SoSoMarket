<%@ include file="IncludeTop.jsp"%>

<table id="main-menu">
  <tr>
    <td><a href='<c:url value="/shop/index.do"/>'><b>
      <font color="black" size="2">&lt;&lt; Main Menu</font></b></a></td>
  </tr>
</table>

<div align="center">
  <table class="n23">
    <tr bgcolor="#CCCCCC">
      <td>&nbsp;</td>
      <td><b>title</b></td>
      <td><b>desc</b></td>
      <!--<td><b>desc</b></td>  -->
    </tr>
    <c:forEach var="auction" items="${auctionList.pageList}">
      <tr bgcolor="#FFFF88">
        <td><b><a
            href='<c:url value="/shop/viewAuction.do"><c:param name="auctionId" value="${auction.auctionId}"/></c:url>'>
            <font color="BLACK"><c:out value="${auction.product.title}" /></font>
          </a></b></td>
        <td><c:out value="${auction.product.description}" /></td>
        <td><c:out value="${auction.product.price}" /></td>
        <td><c:out value="${auction.product.productStatus}" /></td>
      </tr>
    </c:forEach>
    <tr>
      <td>
        <c:if test="${!auctionList.firstPage}">
          <a href='<c:url value="/shop/viewAuctionList2.do">
            <c:param name="page" value="previous"/></c:url>'>
              <font color="white"><B>&lt;&lt; Prev</B></font></a>
        </c:if> 
        <c:if test="${!auctionList.lastPage}">
          <a href='<c:url value="/shop/viewAuctionList2.do">
            <c:param name="page" value="next"/></c:url>'>
              <font color="white"><B>Next &gt;&gt;</B></font></a>
        </c:if>
      </td>
    </tr>
  </table>
</div>

<%@ include file="IncludeBottom.jsp"%>
