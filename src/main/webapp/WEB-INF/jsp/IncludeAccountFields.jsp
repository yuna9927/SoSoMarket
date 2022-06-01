<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3>
  <font color="darkgreen">Account Information</font>
</h3>

<table class="n13">
  <tr>
    <td>Nick Name:</td>
    <td><form:input path="account.nickname" htmlEscape="false"/>
      <form:errors path="account.nickname" cssClass="error" /></td>
  </tr>
  <tr>
    <td>Phone Number:</td>
    <td><form:input path="account.phoneNumber" htmlEscape="false"/> 
      <form:errors path="account.phoneNumber" cssClass="error" /></td>
  </tr>
  <tr>
    <td>Email:</td>
    <td><form:input path="account.email" htmlEscape="false"/>
      <form:errors path="account.email" cssClass="error" /></td>
  </tr>
  <tr>
    <td>Address :</td>
    <td><form:input path="account.address" /> 
      <form:errors path="account.address" cssClass="error" /></td>
  </tr>
  <tr>
    <td>Zipcode :</td>
    <td><form:input path="account.zipcode" htmlEscape="false"/>
      <form:errors path="account.zipcode" cssClass="error" /></td>
  </tr>
  <tr>
    <td>Bank Name :</td>
    <td><form:input path="account.bankName" htmlEscape="false"/>
      <form:errors path="account.bankName" cssClass="error" /></td>
  </tr>
  <tr>
    <td>Bank Number:</td>
    <td><form:input path="account.bankNumber" htmlEscape="false"/> 
      <form:errors path="account.bankNumber" cssClass="error" /></td>
  </tr>
</table>
