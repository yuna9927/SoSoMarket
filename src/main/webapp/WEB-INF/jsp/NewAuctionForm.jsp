
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ include file="IncludeHeader.jsp"%>
<!-- Start Content Page -->
<div class="container-fluid bg-light py-5">
    <div class="col-md-6 m-auto text-center">
        <h1 class="h1">경매상품</h1>
        <p>
            입찰된 가격 중 가장 높은 가격이 낙찰되는 경매상품입니다.
        </p>
    </div>
</div>

<!-- Start Contact -->
<div class="container py-5">
    <div class="row py-5">
        <form:form class="col-md-9 m-auto" modelAttribute="auctionForm" method="post" enctype="multipart/form-data">
        <form:errors cssClass="error" />
        
            <div class="row">
                <div class="form-group col-md-6 mb-3">
                    <label for="title">제목</label>
                    <form:input class="form-control mt-1" name="title" placeholder="제목" path="auction.product.title" htmlEscape="false"/>
                    <form:errors path="auction.product.title" cssClass="error" />
                </div>
                <!-- test -->
            	<div class="form-group col-md-6 mb-3">
                    <label for="categoryId">카테고리</label>
                    <form:select class="form-select" path="auction.product.categoryId">
                       <c:forEach var="category" items="${categoryList}">
                          <form:option value="${category.categoryId}"><c:out value="${category.name}" /></form:option>
                       </c:forEach>
                </form:select>
                </div>
            </div>
            <div class="mb-3">
                <label for="description">상품 설명</label>
                <form:textarea class="form-control mt-1" name="description" placeholder="설명" path="auction.product.description" htmlEscape="false"/>
                  <form:errors path="auction.product.description" cssClass="error" />
            </div>
            <div class="row">
                <div class="form-group col-md-6 mb-3">
                    <label for="shipping">배송방법</label>
                    <form:input class="form-control mt-1" name="shipping" placeholder="배송방법 (ex. 우체국 택배)" path="auction.product.shipping" htmlEscape="false"/>
                    <form:errors path="auction.product.shipping" cssClass="error" />
                </div>
                <div class="form-group col-md-6 mb-3">
                    <label for="shippingFee">배송비</label>
                    <form:input class="form-control mt-1" name="shippingFee" placeholder="숫자만 입력할 수 있습니다." path="auction.product.shippingFee" htmlEscape="false"/>
                    <form:errors path="auction.product.shippingFee" cssClass="error" />
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6 mb-3">
                    <label for="startPrice">시작가</label>
                    <form:input class="form-control mt-1" name="startPrice" placeholder="최소 1000원 이상부터 등록할 수 있습니다." path="auction.startPrice" htmlEscape="false"/>
                    <form:errors path="auction.startPrice" cssClass="error" />
                </div>
                <div class="form-group col-md-6 mb-3">
                    <label for="deadLine">마감 날짜</label>
                    <form:input class="form-control mt-1" name="deadLine" placeholder="ex. 2022-06-23 13:00 **형식을 맞춰야 합니다" path="auction.deadLine" htmlEscape="false"/>
                    <form:errors path="auction.deadLine" cssClass="error" />
                </div>
            </div>
            <input type="file" name="imageFile" />
            <form:hidden path="auction.product.productType" value="auction"/>
            <form:hidden path="auction.product.price" value="0"/>
            <div class="row">
                <div class="col text-end mt-2">
                    <button type="submit" class="btn btn-success btn-lg px-3">확인</button>
                </div>
            </div>
        </form:form>
    </div>
</div>
<!-- End Contact -->
<%@ include file="IncludeFooter.jsp"%>