<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ include file="IncludeTop.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 먼지 몰라요 -->
<c:set var="targetUrl"><c:url value="/shop/newOrder.do" /></c:set>

<div align="center">

<!-- order summary -->
<!--  order form -->

<form:form modelAttribute="orderForm" action="${targetUrl}" method="post">
  <form:errors cssClass="error" /> <br><br>
  
	<h2>주문자 정보 작성</h2>

	<table class="n25">
  		<tr bgcolor="#CCCCCC">
    	<td><b>이름</b></td>
    	<td><b>가격</b></td>
    	<td><b>배송비</b></td>
    	<td><b>배송방법</b></td>
  		</tr>
  		<tr bgcolor="#FFFF88">
    		<td><c:out value="${param.productId}" /></td>
    		<td align="right"><fmt:formatNumber
        		value="${param.productPrice}" pattern="$#,##0.00" /></td>
    		<td align="right"><fmt:formatNumber
        		value="${param.productShippingFee}" pattern="$#,##0.00" /></td>
    		<td><c:out value="${param.productShipping}" /></td>
  		</tr>
	</table>
  
  <h2>주문 상품 정보</h2>  
  <table class="n13">
    <tr>
      <td colspan="2">
        <font color="green" size="4"><b>결제 정보</b></font></td>
    </tr>
    <tr>
      <td>은행: </td>
      <td><form:input path="order.bankName" /> 
        <form:errors path="order.bankName" /></td>
    </tr>
    <tr>
      <td>계좌 번호: </td>
      <td><form:input path="order.bankNumber" /> 
        <form:errors path="order.bankNumber" /></td>
    </tr>
    <tr>
      <td colspan="2">
        <font color="green" size="4"><b>배송지</b></font></td>
    </tr>
    <tr>
      <td>우편번호: </td>
      <td><form:input path="order.shippingZipCode" /> 
        <form:errors path="order.shippingZipCode" /></td>
    </tr>
    <tr>
      <td>집주소:</td>
      <td><form:input path="order.shippingAddress" /> 
        <form:errors path="order.shippingAddress" /></td>
    </tr>
  </table>
  <!--<form:hidden path="order.product.productType" />-->
  <p>
    <input type="image" src="../images/button_submit.gif">
  </p>
</form:form>
</div>

<%@ include file="IncludeBottom.jsp"%>
