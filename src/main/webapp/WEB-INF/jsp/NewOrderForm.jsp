<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ include file="IncludeHeader.jsp"%>

<c:set var="targetUrl">
    <c:url value="/shop/newOrder.do" />
</c:set>
<!-- Start Content Page -->
<div class="container-fluid bg-light py-5">
    <div class="col-md-6 m-auto text-center">
        <h1 class="h1">주문</h1>
        <p>
            상품 주문을 위해 주문자 정보를 입력해주세요.
        </p>
    </div>
</div>

<!-- Start Contact -->
<div class="d-flex justify-content-center py-5" >
    <div class="row py-2">
        <div class="row">
            <div class="col-md-6">
                <p>이름</p>
            </div>
            <div class="col-md-6">
                <p><c:out value="${param.productId}" /></p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <p>가격</p>
            </div>
            <div class="col-md-6">
                <p><fmt:formatNumber value="${param.productPrice}" pattern="$#,##0.00" /></p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <p>배송비</p>
            </div>
            <div class="col-md-6">
                <p><fmt:formatNumber value="${param.productShippingFee}" pattern="$#,##0.00" /></p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <p>배송방법</p>
            </div>
            <div class="col-md-6">
                <p><c:out value="${param.productShipping}" /></p>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row py-5">   
        <form:form modelAttribute="orderForm" action="${targetUrl}" method="post">
            <form:errors cssClass="error" />

            <div class="row">
                <div class="form-group col-md-6 mb-3">
                    <label for="bankName">은행</label>
                    <form:input class="form-control mt-1" name="bankName" placeholder="은행 이름" path="order.bankName"
                        htmlEscape="false" />
                    <form:errors path="order.bankName" cssClass="error" />
                </div>
                <div class="form-group col-md-6 mb-3">
                    <label for="bankNumber">계좌 번호</label>
                    <form:input class="form-control mt-1" name="bankNumber" placeholder="계좌번호 숫자 입력"
                        path="order.bankNumber" htmlEscape="false" />
                    <form:errors path="order.bankNumber" cssClass="error" />
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6 mb-3">
                    <label for="shippingZipCode">우편번호</label>
                    <form:input class="form-control mt-1" name="shippingZipCode" placeholder="우편번호" path="order.shippingZipCode"
                        htmlEscape="false" />
                    <form:errors path="order.shippingZipCode" cssClass="error" />
                </div>
                <div class="form-group col-md-6 mb-3">
                    <label for="shippingAddress">집주소</label>
                    <form:input class="form-control mt-1" name="shippingAddress" placeholder="ex. 서울시 성북구 하월곡동 동덕여자대학교 인문관"
                        path="order.shippingAddress" htmlEscape="false" />
                    <form:errors path="order.shippingAddress" cssClass="error" />
                </div>
            </div>
            <div class="row">
                <div class="col text-end mt-2">
                    <button type="submit" class="btn btn-success btn-lg px-3">확인</button>
                </div>
            </div>
        </form:form>
    </div>
</div>
<!-- End Contact -->
<%@ include file="IncludeFooter.jsp" %>