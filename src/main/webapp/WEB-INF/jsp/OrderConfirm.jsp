<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ include file="IncludeTop.jsp"%>

<!-- order summary -->
<h2>주문 상품 정보</h2>
<table class="n25">
  <tr bgcolor="#CCCCCC">
    <td><b>이름</b></td>
    <td><b>가격</b></td>
    <td><b>배송비</b></td>
    <td><b>배송방법</b></td>
  </tr>
  <tr bgcolor="#FFFF88">
    <td><c:out value="${product.name}" /></td>
    <td align="right"><fmt:formatNumber
        value="${product.price}" pattern="$#,##0.00" /></td>
    <td align="right"><fmt:formatNumber
        value="${product.shippingFee}" pattern="$#,##0.00" /></td>
    <td><c:out value="${product.shipping}" /></td>
  </tr>
</table>

<!-- Order Info Check -->
<div align="center">
  <p>
    <b>아래의 입력 정보가 맞나면 '다음으로' 버튼을 클릭해주세요.</b>
  </p>
  <p></p>
  <table class="n13">
    <tr>
      <td align="center" colspan="2">
        <font size="4"><b>Order</b></font><br />
        <font size="3">
          <b><fmt:formatDate value="${orderForm.order.orderDate}" 
            pattern="yyyy/MM/dd hh:mm:ss" /></b></font>
      </td>
    </tr>
    <tr>
      <td colspan="2">
        <font color="GREEN" size="4"><b>결제 정보</b></font></td>
    </tr>
    <tr>
      <td>은행: </td>
      <td>${orderForm.order.bankName}</td>
    </tr>
    <tr>
      <td>계좌번호: </td>
      <td>${orderForm.order.bankNumber}</td>
    </tr>
    <tr>
      <td colspan="2">
        <font color="GREEN" size="4"><b>배송지</b></font></td>
    </tr>
    <tr>
      <td>우편번호: </td>
      <td>${orderForm.order.shippingZipCode}</td>
    </tr>
    <tr>
      <td>집주소: </td>
      <td>${orderForm.order.shippingAddress}</td>
    </tr>
  </table>
  <p>
    <a href='<c:url value="/shop/confirmOrder.do"/>'>
      <img border="0" src="../images/button_continue.gif" alt="" /></a>
  </p>
</div>

<%@ include file="IncludeBottom.jsp"%>
