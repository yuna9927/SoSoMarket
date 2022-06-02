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
    <c:forEach var="product" items="${productList}">
      <tr bgcolor="#FFFF88">
        <td><b><a
            href='<c:url value="/shop/viewProduct.do"><c:param name="productId" value="${product.productId}"/></c:url>'>
              <font color="BLACK"><c:out value="${product.name}" /></font>
          </a></b></td>
        <td><c:out value="${product.desc}" /></td>
        <td><c:out value="${product.price}" /></td>
        <td><c:out value="${product.productStatus}" /></td>
      </tr>
    </c:forEach>
  </table>
</div>

<%@ include file="IncludeBottom.jsp"%>
