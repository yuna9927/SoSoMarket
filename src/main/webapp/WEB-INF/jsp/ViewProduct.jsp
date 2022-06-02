<%@ include file="IncludeTop.jsp"%>

<p>
<div align="center">
  <table id="product">
    <tr>
      <td bgcolor="#FFFFFF">
        <c:out value="${product.description}"  /></td>
    </tr>
    <tr>
      <td>Title : </td>
      <td><c:out value="${product.name}" /></td>
    </tr>
    <tr>
      <td>Status: </td>
      <td><c:out value="${product.productStatus}" /></td>
    </tr>
    <tr> 
      <td>createdTime: </td>
      <td><fmt:formatDate value="${product.createdTime}"
            pattern="yyyy/MM/dd hh:mm:ss" /></td>
    </tr>
    
    <tr>
      <td>seller: </td>
      <td><c:out value="${product.sellerId}" /></td>
    <tr> 
      <td>shipping: </td> 
      <td><c:out value="${product.shipping}" /></td>
    <tr>
      <td>shippingFee</td>
      <td><c:out value="${product.shippingFee}" /></td>
  </table>
</div>

<%@ include file="IncludeBottom.jsp"%>
