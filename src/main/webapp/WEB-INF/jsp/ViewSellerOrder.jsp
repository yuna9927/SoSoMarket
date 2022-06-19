<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="IncludeTop.jsp"%>

<div align="center">  
  <p></p>
  <table class="n13">
    <tr>
      <td align="center" colspan="2"><font size="4">
        <b>Order #<c:out value="${order.orderId}" /></b></font> <br />
        <font size="3"><b>
          <fmt:formatDate value="${order.orderDate}" pattern="yyyy/MM/dd hh:mm:ss" /></b>
        </font></td>
    </tr>
    <tr>
      <td colspan="2"><font color="green" size="4"><b>Shipping Address</b></font></td>
    </tr>
    <tr>
      <td>ZipCode:</td>
      <td><c:out value="${order.shippingZipCode}" /></td>
    </tr>
    <tr>
      <td>Address:</td>
      <td><c:out value="${order.shippingAddress}" /></td>
    </tr>
    <tr>
      <td colspan="2"><b><font color="green" size="4">Status:</font> 
        <c:out value="${order.orderStatus}" /></b></td>
    </tr>
    <tr>
      <td colspan="2">
      		
        <table class="n23" style="width:100%">
          <tr style="background-color:#CCCCCC;">
            <td><b>Title</b></td>
            <td><b>Description</b></td>
            <td><b>Price</b></td>
            <td><b>shipping Fee</b></td>
            <td><b>shipping</b></td>
          </tr>
          <tr>
	      	<td>Title : </td>
	      	<td><c:out value="${order.product.title}" /></td>
	      </tr>
	      <tr>
	      	<td>description: </td>
	        <td><c:out value="${order.product.description}"  /></td>
	      </tr>
	      <tr>
	      	<td>Price: </td>
      		<td><fmt:formatNumber value="${order.product.price}"
            pattern="$#,##0.00" /></td>
	      </tr>
	      <tr>
	      	<td>shipping: </td> 
	      	<td><c:out value="${order.product.shipping}" /></td>
	      </tr>
	      <tr>
	      	<td>shippingFee: </td>
	      	<td><c:out value="${order.product.shippingFee}" /></td>
	      </tr>
        </table>
      </td>
    </tr>
  </table>
</div>

<%@ include file="IncludeBottom.jsp"%>