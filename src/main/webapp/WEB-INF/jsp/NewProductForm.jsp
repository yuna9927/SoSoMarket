<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ include file="IncludeHeader.jsp"%>
<!-- Start Content Page -->
<div class="container-fluid bg-light py-5">
    <div class="col-md-6 m-auto text-center">
        <h1 class="h1">일반상품</h1>
        <p>
            구매자가 바로 주문할 수 있는 일반상품입니다.
        </p>
    </div>
</div>

<!-- Start Contact -->
<div class="container py-5">
    <div class="row py-5">
        <form:form class="col-md-9 m-auto" modelAttribute="productForm" method="post" enctype="multipart/form-data">
        <form:errors cssClass="error" />
        
            <div class="row">
                <div class="form-group col-md-6 mb-3">
                    <label for="title">제목</label>
                    <form:input class="form-control mt-1" name="title" placeholder="제목" path="product.title" htmlEscape="false"/>
                    <form:errors path="product.title" cssClass="error" />
                </div>
                <div class="form-group col-md-6 mb-3">
                    <label for="categoryId">카테고리</label>
                    <form:input class="form-control mt-1" name="categoryId" placeholder="카테고리 숫자 입력" path="product.categoryId" htmlEscape="false"/>
                    <form:errors path="product.categoryId" cssClass="error" />
                </div>
            </div>
            <div class="mb-3">
                <label for="description">상품 설명</label>
                <form:textarea class="form-control mt-1" name="description" placeholder="설명" path="product.description" htmlEscape="false"/>
                  <form:errors path="product.description" cssClass="error" />
            </div>
            <div class="mb-3">
                <label for="price">가격</label>
                <form:input class="form-control mt-1" name="price" placeholder="가격" path="product.price" htmlEscape="false"/>
                    <form:errors path="product.price" cssClass="error" />
            </div>
            <div class="row">
                <div class="form-group col-md-6 mb-3">
                    <label for="shipping">배송방법</label>
                    <form:input class="form-control mt-1" name="shipping" placeholder="배송방법 (ex. 우체국 택배)" path="product.shipping" htmlEscape="false"/>
                    <form:errors path="product.shipping" cssClass="error" />
                </div>
                <div class="form-group col-md-6 mb-3">
                    <label for="shippingFee">배송비</label>
                    <form:input class="form-control mt-1" name="shippingFee" placeholder="배송 비용" path="product.shippingFee" htmlEscape="false"/>
                    <form:errors path="product.shippingFee" cssClass="error" />
                </div>
            </div>
            <input type="file" name="imageFile" />
            <form:hidden path="product.productType" value="product"/>
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