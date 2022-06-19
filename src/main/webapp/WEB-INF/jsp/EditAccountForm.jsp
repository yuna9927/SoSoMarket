<%@ include file="IncludeTop.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<div align="center">
<form:form modelAttribute="accountForm" method="post">
  <form:errors cssClass="error" /> <br><br>
  
  <table id="account">
    <tr>
      <td>
        <h3><font color="darkgreen">User Information</font></h3>
        <table class="n13">
          <tr>
            <td>User ID:</td>
            <td>
            <c:if test="${accountForm.newAccount}">
              <form:input path="account.accountId" htmlEscape="false"/>
              <B><form:errors path="account.accountId" cssClass="error" /></B>
            </c:if> 
            <c:if test="${!accountForm.newAccount}">
              <c:out value="${accountForm.account.accountId}" />
            </c:if>
            </td>
          </tr>
          <tr>
            <td>New password:</td>
            <td>
              <form:password path="account.password" /> 
              <B><form:errors path="account.password" cssClass="error" /></B></td>
          </tr>
          <tr>
            <td>Repeat password:</td>
            <td>
              <form:password path="repeatedPassword" /> 
              <B><form:errors path="repeatedPassword" cssClass="error" /></B></td>
          </tr>
        </table> 
        <b>철회횟수</b>
        <c:out value="${accountForm.account.withdraw}" />
        
        <%@ include file="IncludeAccountFields.jsp"%>

      </td>
    </tr>
  </table>
  <br />
    <input type="image" src="../images/button_submit.gif" name="submit"
      value="Save Account Information" />
</form:form>
<p></p>
<c:if test="${!accountForm.newAccount}">
  <h3><b><a href='<c:url value="/user/viewAccount.do"/>'>User VIew</a></b></h3>
  <h3><b><a href='<c:url value="/user/deleteUser.do"/>'>User Delete</a></b></h3>
  <br>
  <h3><b><a href='<c:url value="/user/viewBuyerOrderList.do"/>'>내가 구매한 상품 주문 목록</a></b></h3>
  <h3><b><a href='<c:url value="/user/viewSellerOrderList.do"/>'>내가 판매한 상품 주문 목록</a></b></h3>
  <h3><b><a href='<c:url value="/shop/viewMyBiddingList.do"/>'>나의 입찰 목록</a></b></h3>
  <h3><b><a href='<c:url value="/user/viewMyProductList.do"/>'>나의 일반 판매 목록</a></b></h3>
  <h3><b><a href='<c:url value="/user/viewMyAuctionProductList.do"/>'>나의 경매 판매 목록</a></b></h3>
</c:if>
</div>

<%@ include file="IncludeBottom.jsp"%>