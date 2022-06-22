<%@ include file="IncludeTop.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


 <!-- action='<c:url value="/shop/insertBidding.do"/>' -->
  <form:form modelAttribute="biddingForm"  method="post">
  	<form:errors cssClass="error" /> <br><br>
	  <table class="n13">
		  <tr>
		    <td>bidding price:</td>
		    <td><form:input path="bidding.biddingPrice" htmlEscape="false"/>
		      <form:errors path="bidding.biddingPrice" cssClass="error" /></td>
		  </tr>
	  </table>
	  <input type="image" src="../images/button_submit.gif" name="submit"
	      value="Save Account Information" />
  </form:form>