<%@ include file="IncludeTop.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div align="center">

  <table id="account">
    <tr>
      <td>
        <h3><font color="darkgreen">User Information</font></h3>
        <table class="n13">
          <tr>
            <td>User ID:</td>
            <td>
              <c:out value="${account.accountId}" />
            </td>
          </tr>
          <tr>
            <td>User Password:</td>
            <td>
              <c:out value="${account.password}" />
            </td>
          </tr>
          <tr>
            <td>User Nickname</td>
            <td>
              <c:out value="${account.nickname}" />
            </td>
          </tr>
          <tr>
            <td>joinDate:</td>
              <td><fmt:formatDate value="${account.joinDate}"
            pattern="yyyy/MM/dd hh:mm:ss" /></td>
          </tr>
          <tr>
            <td>Phone Number:</td>
            <td>
              <c:out value="${account.phoneNumber}" />
            </td>
          </tr>
          <tr>
            <td>Email:</td>
            <td>
              <c:out value="${account.email}" />
            </td>
          </tr>
          <tr>
            <td>Bank Name:</td>
            <td>
              <c:out value="${account.bankName}" />
            </td>
          </tr>
          <tr>
            <td>Bank Number:</td>
            <td>
              <c:out value="${account.bankNumber}" />
            </td>
          </tr>
          <tr>
            <td>Address:</td>
            <td>
              <c:out value="${account.address}" />
            </td>
          </tr>
          <tr>
            <td>Zipcode:</td>
            <td>
              <c:out value="${account.zipcode}" />
            </td>
          </tr>
          <tr>
            <td>Your number of withdrawals:</td>
            <td>
              <c:out value="${account.withdraw}" />
            </td>
          </tr>
          
        </table> 

      </td>
    </tr>
  </table>
  <br />

<p></p>
<h3><b><a href='<c:url value="/user/deleteUser.do"/>'>User Delete</a></b></h3>
</div>



<%@ include file="IncludeBottom.jsp"%>