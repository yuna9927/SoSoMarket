<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="IncludeHeader.jsp"%>

<!-- Open Content -->
<section class="bg-light">
    <div class="container pb-5">
        <div class="row">
            <div class="col-lg-5 mt-5">
                <div class="card mb-3">
                    <img class="card-img img-fluid" src="<c:url value='${auction.product.image}'/>" alt="Card image cap"
                        id="product-detail" onerror="this.src='../img/no_image.jpg'">
                </div>
            </div>
            <!-- col end -->
            <div class="col-lg-7 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h1 class="h2">
                            <c:out value="${auction.product.title}" />
                        </h1>
                        <p class="h3 py-2">
                            <fmt:formatNumber value="${auction.currentPrice}" pattern="₩#,##0" />
                        </p>
                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <h6>시작가:</h6>
                            </li>
                            <li class="list-inline-item">
                                <p class="text-muted"><strong>
                                 <fmt:formatNumber value="${auction.startPrice}" pattern="₩#,##0" /></strong></p>
                            </li>
                        </ul>
						<p class="text-muted">
                        	<fmt:formatDate value="${auction.product.createdTime}" pattern="yyyy/MM/dd hh:mm:ss" />
                        </p>
                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <h6>판매자 :</h6>
                            </li>
                            <li class="list-inline-item">
                                
                                <p class="text-muted"><strong>
                                    <c:out value="${auction.product.sellerId}" />
                                </strong></p>
                            </li>
                        </ul>


                        <h6>설명:</h6>
                        <p>
                            <c:out value="${auction.product.description}" />
                        </p>
                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <h6>배송방법/배송비:</h6>
                            </li>
                            <li class="list-inline-item">
                                <p class="text-muted"><strong><c:out value="${auction.product.shipping}" /> /
                                 <fmt:formatNumber value="${auction.product.shippingFee}" pattern="₩#,##0" /></strong></p>
                            </li>
                        </ul>
                        <h6>상품 상태:
	                        <c:if test="${auction.product.productStatus eq 'sale'}">
								<span class="badge text-bg-primary">판매중</span>
							</c:if>
							<c:if test="${auction.product.productStatus eq 'done'}">
								<span class="badge text-bg-secondary" >판매완료</span>
							</c:if>
						</h6>
						<ul class="list-inline">
                            <li class="list-inline-item">
                                <h6>마감날짜:</h6>
                            </li>
                            <li class="list-inline-item">
                                <p class=""><strong><fmt:formatDate value="${auction.deadLine}" pattern="yyyy/MM/dd hh:mm:ss" /></strong></p>
                            </li>
                        </ul>
						<br><br>
						<c:if test="${auction.product.sellerId ne userSession.account.accountId}">
	                        <div class="row pb-3">
	                            <div class="col d-grid">
                            	<c:choose>
		                            <c:when test="${auction.product.productStatus eq 'done'}">
	                                	<button type="button" class="btn btn-secondary btn-lg">판매된 상품입니다.</button>
	                                </c:when>
		                            <c:when test="${empty userSession.account}">
		                            	<button type="button" class="btn btn-success btn-lg"
		                                    onclick="location.href='<c:url value="/main/signonForm.do" />';">입찰하기
		                                </button>
		                            </c:when>
		                            <c:when test="${!empty userSession.account}">
		                            	<button type="button" class="btn btn-success btn-lg"
		                                    onclick="location.href='<c:url value="/shop/newBidding.do">
		                                    <c:param name="productId" value="${auction.auctionId}" /></c:url>';">입찰하기
		                                </button>
		                            </c:when>
                              	</c:choose>
	                            </div>
	                        </div>
                        </c:if>
                        
                        <!-- 본인이 올림 -->
                        <c:if test="${auction.product.sellerId eq userSession.account.accountId}">
                            <div class="row pb-3">
                                <div class="col d-grid">
                                    <button type="button" class="btn btn-success btn-lg" name="submit"
                                        onclick="location.href='<c:url value="/shop/deleteAuctionProduct.do">
                                        <c:param name="productId" value="${auction.auctionId}" />
                                        </c:url>';">상품 삭제
                                    </button>
                                </div>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Start Article -->
<section class="py-5">
    <div class="container">
        <div class="row text-left p-2 pb-3">
            <h4>입찰 목록</h4>
        </div>

        <table class="table text-nowrap mb-0">
            <thead>
                <tr>
                    <th class="font-weight-semi-bold border-top-0 py-2">입찰 시간</th>
                    <th class="font-weight-semi-bold border-top-0 py-2">참여자</th>
                    <th class="font-weight-semi-bold border-top-0 py-2">입찰가</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="bidding" items="${biddingList}">
                    <tr>
                        <td class="py-3"><fmt:formatDate value="${bidding.updateDate}"
                                pattern="yyyy/MM/dd hh:mm:ss" /></td>
                        <td class="py-3">
                            <div class="d-flex align-items-center">
                                <c:out value="${bidding.account.nickname}" />
                        </div></td>
                        <td class="py-3">
                            <fmt:formatNumber value="${bidding.biddingPrice}" pattern="₩#,##0" />
                        </td>
                    </tr>
                    
                </c:forEach>
            </tbody>
        </table>

    </div>
</section>
<!-- End Article -->
<!-- Close Content -->
<%@ include file="IncludeFooter.jsp"%>