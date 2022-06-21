<%@ include file="IncludeTop.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div align="center">
<form:form modelAttribute="productForm" method="post" enctype="multipart/form-data">
  <form:errors cssClass="error" /> <br><br>
  
  <table id="product">
    <tr>
      <td>
        <h3><font color="darkgreen">insertProduct</font></h3>
        
        <h3>
  			<font color="darkgreen">product Information</font>
		</h3>

		<table class="n13">
  		<tr>
    		<td>category</td>
  		</tr>
  		<tr>
    		<td>categoryId</td>
    		<td>
    		<form:input path="product.categoryId" htmlEscape="false"/>
      		<form:errors path="product.categoryId" cssClass="error" />
      		</td>
  		</tr>
  		<tr>
    		<td>name</td>
    		<td><form:input path="product.title" htmlEscape="false"/>
      			<form:errors path="product.title" cssClass="error" /></td>
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
  		
		</table>

      </td>
    </tr>
  </table>
  <input type="file" name="imageFile" />
	<br/>
  <form:hidden path="product.productType" value="product"/>
  <br/>
    <input type="image" src="../images/button_submit.gif" name="submit"
      value="Save Product Information" />
</form:form>
<p></p>
</div>

<%@ include file="IncludeBottom.jsp"%>