<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <!-- action='<c:url value="/shop/insertBidding.do"/>' -->
  <form:form modelAttribute="biddingForm"  method="post">
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

</body>
</html>