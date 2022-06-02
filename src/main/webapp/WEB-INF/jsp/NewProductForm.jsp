<%@ include file="IncludeTop.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div align="center">
<form:form modelAttribute="productForm" method="post">
  <form:errors cssClass="error" /> <br><br>
  
  <table id="product">
    <tr>
      <td>
        <h3><font color="darkgreen">어떤 상품을 올리시나요?</font></h3>
        
        <%@ include file="IncludeProductFields.jsp"%>

      </td>
    </tr>
  </table>
  <br />
    <input type="image" src="../images/button_submit.gif" name="submit"
      value="Save Product Information" />
</form:form>
<p></p>
</div>

<%@ include file="IncludeBottom.jsp"%>
