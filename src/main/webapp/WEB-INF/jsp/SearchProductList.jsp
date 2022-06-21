<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="IncludeHeader.jsp"%>

<!-- Start Content -->
<div class="container py-5">
    <div class="row">

        <div class="col-lg-3">
            <h1 class="h2 pb-4">Categories 편집전</h1>
            <ul class="list-unstyled templatemo-accordion">
                <li class="pb-3">
                    <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                        Gender
                        <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
                    </a>
                    <ul class="collapse show list-unstyled pl-3">
                        <li><a class="text-decoration-none" href="#">Men</a></li>
                        <li><a class="text-decoration-none" href="#">Women</a></li>
                    </ul>
                </li>
                <li class="pb-3">
                    <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                        Sale
                        <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                    </a>
                    <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                        <li><a class="text-decoration-none" href="#">Sport</a></li>
                        <li><a class="text-decoration-none" href="#">Luxury</a></li>
                    </ul>
                </li>
                <li class="pb-3">
                    <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                        Product
                        <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                    </a>
                    <ul id="collapseThree" class="collapse list-unstyled pl-3">
                        <li><a class="text-decoration-none" href="#">Bag</a></li>
                        <li><a class="text-decoration-none" href="#">Sweather</a></li>
                        <li><a class="text-decoration-none" href="#">Sunglass</a></li>
                    </ul>
                </li>
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
                                            <li><a class="btn btn-success text-white" href='<c:url value="/user/newWish.do"><c:param name="productId" value="${product.productId}"/></c:url>'><i class="fa fa-heart"></i></a></li>
                                        </c:if>
                                        <li><a class="btn btn-success text-white mt-2" href='<c:url value="/shop/viewProduct.do"><c:param name="productId" value="${product.productId}"/></c:url>'><i class="fa fa-eye"></i></a></li>
                                        
                                    </ul>
                                </div>
                            </div>
                            <div class="card-body">
                                <a href='<c:url value="/shop/viewProduct.do"><c:param name="productId" value="${product.productId}"/></c:url>' class="h3 text-decoration-none" ><c:out value="${product.title}" /></a>
                                <p class="mb-0"><fmt:formatNumber value="${product.price}"
                                    pattern="$#,##0.00" /></p>
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
                <li class="page-item">
                    <c:if test="${!productList.firstPage}">
                        <a href='<c:url value="/shop/viewProductList2.do">
            			<c:param name="page" value="previous"/></c:url>' class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0">&lt;</a>
	                </c:if>
	                <c:if test="${!productList.lastPage}">
	                    <a href='<c:url value="/shop/viewProductList2.do">
            			<c:param name="page" value="next"/></c:url>' class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark">&gt;</a>        
	                </c:if>
	                </li>
                </ul>
                
            </div>
        </div>

    </div>

</div>
<!-- End Content -->
<%@ include file="IncludeFooter.jsp"%>