<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ include file="IncludeTop.jsp"%>
<p>
<div align="center">
  <table id="auction">
  	<tr>
      <td>Title : </td>
      <td><c:out value="${auction.product.title}" /></td>
    </tr>
    <tr>
    	<td> Description: </td>
        <td><c:out value="${auction.product.description}"  /></td>
    </tr>
    <tr>
      <td>Status: </td>
      <td><c:out value="${auction.product.productStatus}" /></td>
    </tr>
    <tr>
      <td>Price: </td>
      <td><fmt:formatNumber value="${auction.product.price}"
            pattern="$#,##0.00" /></td>
    </tr>
    <tr> 
      <td>createdTime: </td>
      <td><fmt:formatDate value="${auction.product.createdTime}"
            pattern="yyyy/MM/dd hh:mm:ss" /></td>
    </tr>
    
    <tr>
      <td>seller: </td>
      <td><c:out value="${auction.product.sellerId}" /></td>
    </tr> 
    <tr>
      <td>shipping: </td> 
      <td><c:out value="${auction.product.shipping}" /></td>
    </tr>
    <tr>
      <td>shippingFee: </td>
      <td><c:out value="${auction.product.shippingFee}" /></td>
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
      <td><c:out value="${auction.deadLine}" /></td>
    </tr>
  </table>
  <br>
  <h3><b><a href='<c:url value="/shop/updateAucionProduct.do"/>'>Product Edit 없는거임 </a></b></h3>
  <h3><b><a href='<c:url value="/shop/deleteAuctionProduct.do"><c:param name="auctionId" value="${auction.auctionId}"/></c:url>'>Auction Delete</a></b></h3>
  <br><br>
  
  <h3>Bidding Product</h3>
  
  
  <a href='<c:url value="/shop/newBidding.do">
              <c:param name="auctionId" value="${auction.auctionId}"/></c:url>'>go to bidding insert form
            </a>
  <br>

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
      </tr>
    </c:forEach>
  </table>
  
</div>



<%@ include file="IncludeBottom.jsp"%>
