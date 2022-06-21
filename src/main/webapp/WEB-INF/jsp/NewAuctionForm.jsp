<%@ include file="IncludeTop.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div align="center">
<form:form modelAttribute="auctionForm" method="post" enctype="multipart/form-data">
  <form:errors cssClass="error" /> <br><br>
  
  <table id="auction">
    <tr>
      <td>
        <h3><font color="darkgreen">insert Auction Product</font></h3>
        
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
    		<form:input path="auction.product.categoryId" htmlEscape="false"/>
      		<form:errors path="auction.product.categoryId" cssClass="error" />
      		</td>
  		</tr>
  		<tr>
    		<td>title</td>
    		<td><form:input path="auction.product.title" htmlEscape="false"/>
      			<form:errors path="auction.product.title" cssClass="error" /></td>
  		</tr>
  		<tr>
    		<td>description</td>
    		<td><form:input path="auction.product.description" htmlEscape="false"/>
      			<form:errors path="auction.product.description" cssClass="error" /></td>
  		</tr>
  		<tr>
    		<td>productStatus</td>
    		<td><form:input path="auction.product.productStatus" htmlEscape="false"/>
      		<form:errors path="auction.product.productStatus" cssClass="error" /></td>
  		</tr>
  		<tr>
    		<td>shipping</td>
    		<td><form:input path="auction.product.shipping" htmlEscape="false"/>
      			<form:errors path="auction.product.shipping" cssClass="error" /></td>
  		</tr>
  		<tr>
    		<td>shippingFee</td>
    		<td><form:input path="auction.product.shippingFee" htmlEscape="false"/>
    	 	<form:errors path="auction.product.shippingFee" cssClass="error" /></td>
  		</tr>
  		<tr>
    		<td>price</td>
    			<td><form:input path="auction.product.price" htmlEscape="false"/>
      			<form:errors path="auction.product.price" cssClass="error" /></td>
  		</tr>
  		
  		<tr>
    		<td>start price</td>
   			<td>
   			<form:input path="auction.startPrice" htmlEscape="false"/>
    			<form:errors path="auction.product.image" cssClass="error" />
   			</td>
  		</tr>
  		<tr>
    		<td>deadLine</td>
   			<td>
   			<label for="deadLine-datepicker">Choose a date</label>
    			<b-form-datepicker id="deadLine-datepicker" v-model="value" class="mb-2"></b-form-datepicker>
   			<form:hidden path="auction.deadLine" value="2023/12/08"/>
   			</td>
  		</tr>
		</table>

      </td>
    </tr>
  </table>
    <input type="file" name="imageFile" />
    <br/>
  <form:hidden path="auction.product.productType" value="auction"/>
  <br/>
    <input type="image" src="../images/button_submit.gif" name="submit"
      value="Save Auction Information" />
</form:form>
<p></p>
</div>

<%@ include file="IncludeBottom.jsp"%>