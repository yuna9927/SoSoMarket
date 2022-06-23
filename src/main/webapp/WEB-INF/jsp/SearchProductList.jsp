<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="IncludeHeader.jsp"%>
<!-- Start Content -->
<div class="container py-5">
    <div class="row">

        <div class="col-lg-3">
            <h1 class="h2 pb-4">일반상품 카테고리</h1>
            <ul class="list-unstyled templatemo-accordion">

                <c:forEach var="category" items="${categoryList}">
                <li class="d-grid gap-2 col-10">
                	<button type="button" class="btn btn-light"
                	onclick="location.href='<c:url value="/shop/viewCategory.do">
                	<c:param name="categoryId" value="${category.categoryId}"/></c:url>';"><c:out value="${category.name}" /></button>
                </li>
                </c:forEach>
            </ul>
        </div>

        <div class="col-lg-9">
            <div class="row">
                <div class="col-md-6">
                    <ul class="list-inline shop-top-menu pb-3 pt-1">
                        <li class="list-inline-item">
                            <a class="h3 text-primary text-decoration-none mr-3" href="<c:url value="/shop/viewProductList.do"/>">일반상품</a>
                        </li>
                        <li class="list-inline-item">
                            <a class="h3 text-decoration-none" href="<c:url value="/shop/viewAuctionList.do"/>">경매상품</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="row">
            	<p>상품에 하트를 눌러보세요. 위시리스트에 추가됩니다. 이미 위시리스트에 있는 상품이라면 삭제됩니다.</p>
            </div>
            <div class="row">
            	<div class="col-md-6">
            		<c:if test="${!empty keyword}">
	                   	<p><i>[<c:out value="${keyword}" />]를 검색한 결과입니다.</i></p>
	                </c:if>
            	</div>
            </div>
            <div class="row">
            <c:forEach var="product" items="${productList.pageList}">
                <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="cover card-img rounded-0 img-fluid" src="<c:url value='${product.image}'/>" onerror="this.src='../img/no_image.jpg'">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                    <ul class="list-unstyled">
                                        <c:if test="${empty userSession.account}">
                                            <li><a class="btn btn-success text-white" href='<c:url value="/main/signonForm.do"/>'><i class="fa fa-heart"></i></a></li>
                                        </c:if>
                                        <c:if test="${!empty userSession.account}">
                                            <li><a class="btn btn-success text-white" href='<c:url value="/user/newWish.do">
                                            <c:param name="productId" value="${product.productId}"/></c:url>'>
                                            <i class="fa fa-heart" ></i></a></li>
                                        </c:if>
                                        <li><a class="btn btn-success text-white mt-2" href='<c:url value="/shop/viewProduct.do"><c:param name="productId" value="${product.productId}"/></c:url>'><i class="fa fa-eye"></i></a></li>
                                        
                                    </ul>
                                </div>
                            </div>
                            <div class="card-body">
                                <a href='<c:url value="/shop/viewProduct.do"><c:param name="productId" value="${product.productId}"/></c:url>' class="h3 text-decoration-none" ><c:out value="${product.title}" /></a>
                                <p class="mb-0"><fmt:formatNumber value="${product.price}"
                                    pattern="₩#,##0" /></p>
                                <c:if test="${product.productStatus eq 'sale'}">
									<span class="badge text-bg-primary" style="float:right;">판매중</span>
								</c:if>
								<c:if test="${product.productStatus eq 'done'}">
									<span class="badge text-bg-secondary" style="float:right;">판매완료</span>
								</c:if>
                            </div>
                        </div>
                        
                    </div>   
                    </c:forEach>          
            </div>
            <div div="row">
                <ul class="pagination pagination-lg justify-content-end">
                
                    <c:if test="${!productList.firstPage}">
                    <li class="page-item">	
                        <a href='<c:url value="/shop/viewProductList2.do">
            			<c:param name="page" value="previous"/></c:url>' class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0">&lt;</a>
           			</li>
	                </c:if>
	                <c:if test="${!productList.lastPage}">
	                	<li class="page-item">
	                    <a href='<c:url value="/shop/viewProductList2.do">
            			<c:param name="page" value="next"/></c:url>' class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark">&gt;</a>
            			</li>        
	                </c:if>
	          	
                </ul>
                
            </div>
        </div>

    </div>

</div>
<!-- End Content -->
<%@ include file="IncludeFooter.jsp"%>