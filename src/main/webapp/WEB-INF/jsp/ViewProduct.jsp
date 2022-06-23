<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="IncludeHeader.jsp"%>

<!-- Open Content -->
<section class="bg-light">
    <div class="container pb-5">
        <div class="row">
            <div class="col-lg-5 mt-5">
                <div class="card mb-3">
                    <img class="card-img img-fluid" src="<c:url value='${product.image}'/>" alt="Card image cap"
                        id="product-detail" onerror="this.src='../img/no_image.jpg'">
                </div>
            </div>
            <!-- col end -->
            <div class="col-lg-7 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h1 class="h2">
                            <c:out value="${product.title}" />
                        </h1>
                        <p class="h3 py-2">
                            <fmt:formatNumber value="${product.price}" pattern="₩#,##0" />
                        </p>
						<p class="text-muted">
                        	<fmt:formatDate value="${product.createdTime}" pattern="yyyy/MM/dd hh:mm:ss" />
                        </p>
                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <h6>판매자 :</h6>
                            </li>
                            <li class="list-inline-item">
                                
                                <p class="text-muted"><strong>
                                    <c:out value="${product.account.nickname}" />
                                </strong></p>
                            </li>
                        </ul>

                        <h6>설명:</h6>
                        <p>
                            <c:out value="${product.description}" />
                        </p>
                     
                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <h6>배송방법/배송비:</h6>
                            </li>
                            <li class="list-inline-item">
                                <p class="text-muted"><strong><c:out value="${product.shipping}" /> / <c:out value="${product.shippingFee}" /></strong></p>
                            </li>
                        </ul>
                        <h6>상품 상태: 
                        	<c:if test="${product.productStatus eq 'sale'}">
								<span class="badge text-bg-primary">판매중</span>
							</c:if>
							<c:if test="${product.productStatus eq 'done'}">
								<span class="badge text-bg-secondary">판매완료</span>
							</c:if>
                        </h6>
                        <br><br>
						<c:if test="${product.sellerId ne userSession.account.accountId}">
                        <div class="row pb-3">
                            <div class="col d-grid">
                            <c:choose>
                            	<c:when test="${product.productStatus eq 'done'}">
                                	<button type="button" class="btn btn-secondary btn-lg">판매된 상품입니다.</button>
                                </c:when>
                            	<c:when test="${empty userSession.account}">
	                            	<button type="button" class="btn btn-success btn-lg"
	                                    onclick="location.href='<c:url value="/main/signonForm.do" />';">주문하기
	                                </button>
	                            </c:when>
	                            <c:when test="${!empty userSession.account}">
		                                <button type="button" class="btn btn-success btn-lg"
		                                    onclick="location.href='<c:url value="/shop/newOrderForm.do">
		                                    <c:param name="productId" value="${product.productId}" />
		                                    <c:param name="productPrice" value="${product.price}" />
		                                    <c:param name="productShippingFee" value="${product.shippingFee}" />
		                                    <c:param name="productShipping" value="${product.shipping}" />
		                                    </c:url>';">주문하기
		                                </button>   
                                </c:when>
                            </c:choose>
                            </div>
                        </div>
                        </c:if>
                        <!-- 본인이 올린 상품 -->
                        <c:if test="${product.sellerId eq userSession.account.accountId}">
                            <div class="row pb-3">
                                <div class="col d-grid">
                                    <button type="button" class="btn btn-success btn-lg" name="submit"
                                        onclick="location.href='<c:url value="/shop/updateProduct.do">
                                        <c:param name="productId" value="${product.productId}" />
                                        </c:url>';">상품 수정
                                    </button>
                                </div>
                                <div class="col d-grid">
                                    <button type="button" class="btn btn-success btn-lg" name="submit"
                                        onclick="location.href='<c:url value="/shop/deleteProduct.do">
                                        <c:param name="productId" value="${product.productId}" />
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
<!-- Close Content -->
<%@ include file="IncludeFooter.jsp"%>