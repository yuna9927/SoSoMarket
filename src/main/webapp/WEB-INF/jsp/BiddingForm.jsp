<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="IncludeHeader.jsp"%>

<!-- Open Content -->
<section class="bg-light">
    <div class="container pb-5">
        <div class="row">
            <div class="20 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h1 class="h2">
                            입찰가를 입력해주세요.
                        </h1>
                        <p class="py-2">
                            현재가보다 높은 값만 입력할 수 있습니다.
                        </p>
                        <form:form modelAttribute="biddingForm"  method="post">
					  		<form:errors cssClass="error" /> <br><br>
					  		<label for="biddingPrice">입찰가</label>
		                    <form:input class="form-control mt-1" name="biddingPrice" placeholder="입찰가" path="bidding.biddingPrice" htmlEscape="false"/>
		                    <form:errors path="bidding.biddingPrice" cssClass="error" />
	                    	<div class="col text-end mt-2">
			                    <button type="submit" class="btn btn-success btn-lg px-3">입찰</button>
			                </div>
		                </form:form>
	                </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Close Content -->
<%@ include file="IncludeFooter.jsp"%>