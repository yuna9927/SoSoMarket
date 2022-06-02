<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3>
  <font color="darkgreen">product Information</font>
</h3>

<table class="n13">
  <tr>
    <td>카테고리 - dao 후 적용</td>
  </tr>
  <tr>
    <td>id</td>
    <td><form:input path="product.productId" htmlEscape="false"/> 
      <form:errors path="product.productId" cssClass="error" /></td>
  </tr>
  <tr>
    <td>categoryId</td>
    <td><form:input path="product.categoryId" htmlEscape="false"/>
      <form:errors path="product.categoryId" cssClass="error" /></td>
  </tr>
  <tr>
    <td>sellerId</td>
    <td><form:input path="product.sellerId" /> 
      <form:errors path="product.sellerId" cssClass="error" /></td>
  </tr>
  <tr>
    <td>name</td>
    <td><form:input path="product.name" htmlEscape="false"/>
      <form:errors path="product.name" cssClass="error" /></td>
  </tr>
  <tr>
    <td>description</td>
    <td><form:input path="product.description" htmlEscape="false"/>
      <form:errors path="product.description" cssClass="error" /></td>
  </tr>
  <tr>
    <td>productStatus</td>
    <td><form:input path="product.productStatus" htmlEscape="false"/>
      <form:errors path="product.productStatus" cssClass="error" /></td>
  </tr>
  <tr>
    <td>createdTime</td>
    <td><form:input path="product.createdTime" htmlEscape="false"/>
      <form:errors path="product.createdTime" cssClass="error" /></td>
  </tr>
  <tr>
    <td>shipping</td>
    <td><form:input path="product.shipping" htmlEscape="false"/>
      <form:errors path="product.shipping" cssClass="error" /></td>
  </tr>
  <tr>
    <td>shippingFee</td>
    <td><form:input path="product.shippingFee" htmlEscape="false"/>
      <form:errors path="product.shippingFee" cssClass="error" /></td>
  </tr>
  <tr>
    <td>price</td>
    <td><form:input path="product.price" htmlEscape="false"/>
      <form:errors path="product.price" cssClass="error" /></td>
  </tr>
  <tr>
    <td>이미지 - 방법을 모름</td>
  </tr>
</table>
