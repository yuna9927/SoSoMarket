<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ include file="IncludeTop.jsp" %>

<a href="<c:url value="/shop/viewProductList.do"/>">일반상품리스트</a>
                   
<a href="<c:url value="/shop/viewAuctionList.do"/>">경매상품리스트</a>

<table style="border:none;border-collapse:collapse;width:100%">
  <tr>
    <td style="text-align:left;vertical-align:top;width:100%">
      <table style="border:none;border-collapse:collapse;width:80%">
        <tr>
          <td valign="top">                    
            <!-- SIDEBAR -->
            <table id="index">
              <tr>
                <td>
                <c:if test="${!empty userSession.account}">
			       <b><i><font size="4" color="RED">Welcome ${userSession.account.accountId}!</font></i></b>
                </c:if>&nbsp;
                </td>
              </tr>
              <tr>
                <td>
                  <a href="<c:url value="/shop/viewCategory.do?categoryId=0"/>">
                    <b>포토카드</b></a>
                </td>
              </tr>
              <tr>
                <td>
                  <a href="<c:url value="/shop/viewCategory.do?categoryId=1"/>">
                   <b>포스터</b></a>
                </td>
              </tr>
              <tr>
                <td>
                  <a href="<c:url value="/shop/viewCategory.do?categoryId=2"/>">
                    <b>앨범</b></a>
                </td>
              </tr>
              
            </table>
          </td>
          <td style="text-align:center;background-color:white;height:300;width:100%">
            <!-- MAIN IMAGE -->
            <map name="estoremap">
              <area alt="Birds" coords="72,2,280,250" href="viewCategory.do?categoryId=BIRDS" shape="RECT" />
              <area alt="Fish" coords="2,180,72,250" href="viewCategory.do?categoryId=FISH" shape="RECT" />
              <area alt="Dogs" coords="60,250,130,320" href="viewCategory.do?categoryId=DOGS" shape="RECT" />
              <area alt="Reptiles" coords="140,270,210,340" href="viewCategory.do?categoryId=REPTILES" shape="RECT" />
              <area alt="Cats" coords="225,240,295,310" href="viewCategory.do?categoryId=CATS" shape="RECT" />
              <area alt="Birds" coords="280,180,350,250" href="viewCategory.do?categoryId=BIRDS" shape="RECT" />
            </map>
            <img src="../images/splash.gif" usemap="#estoremap" style="float:center;width:350;height:355;border:0;" />
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>

<a href="<c:url value="/shop/newProductForm.do"/>">go to new product form </a> <p></p>

<a href="<c:url value="/shop/newAuctionForm.do"/>">go to new auction form</a> <p></p>

<a href="<c:url value="/user/deleteUser.do"/>">deleteUser</a>

<br>



<%@ include file="IncludeBottom.jsp" %>
