<%@ include file="IncludeTop.jsp"%>

<p>
<div align="center">
  <table id="product">
  	<tr>
      <td>Title : </td>
      <td><c:out value="${product.name}" /></td>
    </tr>
    <tr>
      <td bgcolor="#FFFFFF">
        <c:out value="${product.description}"  /></td>
    </tr>
    <tr>
      <td>Status: </td>
      <td><c:out value="${product.productStatus}" /></td>
    </tr>
    <tr>
      <td>Price: </td>
      <td><fmt:formatNumber value="${product.price}"
            pattern="$#,##0.00" /></td>
    </tr>
    <tr> 
      <td>createdTime: </td>
      <td><fmt:formatDate value="${product.createdTime}"
            pattern="yyyy/MM/dd hh:mm:ss" /></td>
    </tr>
    
    <tr>
      <td>seller: </td>
      <td><c:out value="${product.sellerId}" /></td>
    </tr> 
    <tr>
      <td>shipping: </td> 
      <td><c:out value="${product.shipping}" /></td>
    </tr>
    <tr>
      <td>shippingFee</td>
      <td><c:out value="${product.shippingFee}" /></td>
    </tr>
  </table>
  <br>
  <h3><b><a href='<c:url value="/shop/updateProduct.do"/>'>Product Edit</a></b></h3>
  <h3><b><a href='<c:url value="/shop/deleteProduct.do"/>'>Product Delete</a></b></h3>
</div>



<%@ include file="IncludeBottom.jsp"%>
