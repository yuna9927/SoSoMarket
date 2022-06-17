<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ include file="IncludeTop.jsp"%>
<p>
<div align="center">
  <table id="product">
  	<tr>
      <td>Title : </td>
      <td><c:out value="${product.title}" /></td>
    </tr>
    <tr>
    	<td> Description: </td>
        <td><c:out value="${product.description}"  /></td>
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
      <td>shippingFee: </td>
      <td><c:out value="${product.shippingFee}" /></td>
    </tr>
    <tr>
      <td>Current Price: </td>
      <td><c:out value="${auction.currentPrice}" /></td>
    </tr>
    <tr>
      <td>Start Price: </td>
      <td><c:out value="${acution.startPrice}" /></td>
    </tr>
    <tr>
      <td>Dead Line: </td>
      <td><c:out value="${product.deadLine}" /></td>
    </tr>
  </table>
  <br>
  <h3><b><a href='<c:url value="/shop/updateAucionProduct.do"/>'>Product Edit</a></b></h3>
  <h3><b><a href='<c:url value="/shop/deleteAuctionProduct.do"/>'>Product Delete</a></b></h3>
  <br><br>
  
  <h3>Bidding Product</h3>
  <form:form modelAttribute="biddingForm" method="post">
  <form:errors cssClass="error" /> <br><br>
	  <table class="n13">
		  <tr>
		    <td>입찰가:</td>
		    <td><form:input path="bidding.biddingPrice" htmlEscape="false"/>
		      <form:errors path="bidding.biddingPrice" cssClass="error" /></td>
		  </tr>
	  </table>
	  <input type="image" src="../images/button_submit.gif" name="submit"
	      value="Save Account Information" />
  </form:form>
  
  <br>
  <h3>Bidding List</h3>
  <table class="n23">
    <tr bgcolor="#CCCCCC">
      <td>&nbsp;</td>
      <td><b>date</b></td>
      <td><b>price</b></td>
      <td><b>user</b></td>
    </tr>
    <c:forEach var="bidding" items="${biddingList}">
      <tr bgcolor="#FFFF88">
        <td><fmt:formatDate value="${bidding.updateDate}"
            pattern="yyyy/MM/dd hh:mm:ss" /></td>
        <td><c:out value="${bidding.biddingPrice}" /></td>
        <td><c:out value="${bidding.productStatus}" /></td>
      </tr>
    </c:forEach>
  </table>
  
</div>



<%@ include file="IncludeBottom.jsp"%>
