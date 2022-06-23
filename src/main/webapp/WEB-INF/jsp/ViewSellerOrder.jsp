<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ include file="IncludeMypageHeader.jsp"%>

<div class="content">
	<div class="py-4 px-3 px-md-4">
		<div class="card mb-3 mb-md-4">
			<div class="card-body">
				<!-- Breadcrumb -->
				<nav class="d-none d-md-block" aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">구매</a></li>
						<li class="breadcrumb-item"><a
							href='<c:url value="/user/viewSellerOrderList.do"/>'>주문 목록</a></li>
						<li class="breadcrumb-item active" aria-current="page">주문 상세
							정보</li>
					</ol>
				</nav>
				<!-- End Breadcrumb -->

				<div class="mb-3 mb-md-4 d-flex justify-content-between">
					<div class="h3 mb-0">요청된 주문 상세 정보</div>
				</div>

				<!-- Info -->
				<div>
					<p></p>
					<table style="width:30%">
						<tr>
							<td colspan="2"><font size="4"> <b>주문 #<c:out
											value="${order.orderId}" />
								</b></font> <br /> <font size="3"> <fmt:formatDate
										value="${order.orderDate}" pattern="yyyy/MM/dd hh:mm:ss" />
							</font></td>
						</tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td colspan="2"><font size="4"><b>배송 주소</b></font></td>
						</tr>
						<tr>
							<td>우편번호:</td>
							<td><c:out value="${order.shippingZipCode}" /></td>
						</tr>
						<tr>
							<td>배송지:</td>
							<td><c:out value="${order.shippingAddress}" /></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td colspan="2"><b><font size="4">현재 주문 상태:</font>
							<c:if test="${order.orderStatus eq 'waiting'}">
									주문확인중
							</c:if>
							<c:if test="${order.orderStatus eq 'check'}">
								배송준비중
							</c:if>
							<c:if test="${order.orderStatus eq 'start'}">
								배송중
							</c:if>
							</b></td>
						</tr>
						<tr><td>&nbsp;</td></tr>
						<tr>
							<td colspan="2"><b><font size="4">주문 상태 변경:</font></b></td>
						</tr>
						<tr>
						<tr><td>&nbsp;</td></tr>
						<form action="<c:url value="/user/updateOrder.do"/>" method="post" id="myForm">
							<td>
								<select name="orderStatus" form="myForm" class="select">
								    <option value="waiting">주문 확인중</option>
								    <option value="check">배송 준비중</option>
								    <option value="start">배송 중</option>
								</select>
							</td>
							<td>
								<input type="hidden" name="orderId" value="${order.orderId}" />
								<button type="submit" class="btn btn-primary float-right">변경</button>
							
							</td>
						</form></tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
					</table>
					<table style="width:30%">
						<tr>
							<td colspan="2"><b><font size="4">주문 상품 정보</font></b></td>
						</tr>
						<tr>
							<td>상품명 :</td>
							<td><c:out value="${order.product.title}" /></td>
						</tr>
						<tr>
							<td>설명:</td>
							<td><c:out value="${order.product.description}" /></td>
						</tr>
						<tr>
							<td>가격:</td>
							<td><fmt:formatNumber value="${order.product.price}"
									pattern="₩#,##0" /></td>
						</tr>
						<tr>
							<td>배송방법:</td>
							<td><c:out value="${order.product.shipping}" /></td>
						</tr>
						<tr>
							<td>배송비:</td>
							<td><fmt:formatNumber value="${order.product.shippingFee}"
									pattern="₩#,##0" /></td>
						</tr>
					</table>
					</td>
				</div>
				<!-- End Info -->
			</div>
		</div>
	</div>
	<%@ include file="IncludeMypageFooter.jsp"%>