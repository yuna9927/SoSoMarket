<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<body class="has-sidebar has-fixed-sidebar-and-header">
<!-- Header -->
<header class="header bg-body">
    <nav class="navbar flex-nowrap p-0">
        <div class="navbar-brand-wrapper d-flex align-items-center col-auto">

            <!-- Logo For Desktop View -->
            <a class="navbar-brand navbar-brand-desktop" href="<c:url value="/user/index.do"/>">
                <img class="side-nav-show-on-closed" src="../img/logo-mini.png" alt="Graindashboard" style="width: auto; height: 33px;">
                <img class="side-nav-hide-on-closed" src="../img/logo.png" alt="Graindashboard" style="width: auto; height: 33px;">
            </a>
            <!-- End Logo For Desktop View -->
        </div>

        <div class="header-content col px-md-3">
            <div class="d-flex align-items-center">
                <!-- Side Nav Toggle -->
                <a  class="js-side-nav header-invoker d-flex mr-md-2" href="#"
                    data-close-invoker="#sidebarClose"
                    data-target="#sidebar"
                    data-target-wrapper="body">
                    <i class="gd-align-left"></i>
                </a>
                <!-- End Side Nav Toggle -->

                <!-- User Notifications - delete -->
                <div class="dropdown ml-auto"></div>
                <!-- End User Notifications -->

                <!-- User Avatar -->
                <div class="dropdown mx-3 dropdown ml-2">
                    <a id="profileMenuInvoker" class="header-complex-invoker" href="#" aria-controls="profileMenu" aria-haspopup="true" aria-expanded="false" data-unfold-event="click" data-unfold-target="#profileMenu" data-unfold-type="css-animation" data-unfold-duration="300" data-unfold-animation-in="fadeIn" data-unfold-animation-out="fadeOut">
                        <span class="mr-md-2 avatar-placeholder">X</span>
                        <span class="d-none d-md-block"><c:out value="${userSession.account.nickname}" /></span>
                        <i class="gd-angle-down d-none d-md-block ml-2"></i>
                    </a>

                    <ul id="profileMenu" class="unfold unfold-user unfold-light unfold-top unfold-centered position-absolute pt-2 pb-1 mt-4 unfold-css-animation unfold-hidden fadeOut" aria-labelledby="profileMenuInvoker" style="animation-duration: 300ms;">
                        <li class="unfold-item">
                            <a class="unfold-link d-flex align-items-center text-nowrap" href="<c:url value="/user/viewAccount.do"/>">
                    <span class="unfold-item-icon mr-3">
                        <i class="gd-user"></i>
                    </span>
                                프로필
                            </a>
                        </li>
                        <li class="unfold-item unfold-item-has-divider">
                            <a class="unfold-link d-flex align-items-center text-nowrap" href="<c:url value="/main/signoff.do"/>">
                    <span class="unfold-item-icon mr-3">
                        <i class="gd-power-off"></i>
                    </span>
                                로그아웃
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- End User Avatar -->
            </div>
        </div>
    </nav>
</header>
<!-- End Header -->
<main class="main">
    <!-- Sidebar Nav -->
    <aside id="sidebar" class="js-custom-scroll side-nav">
        <ul id="sideNav" class="side-nav-menu side-nav-menu-top-level mb-0">

            <!-- Title -->
            <li class="sidebar-heading h6">계정</li>
            <!-- End Title -->
	
            <!-- Wishs -->
            <li class="side-nav-menu-item side-nav-has-menu">
                <a class="side-nav-menu-link media align-items-center" href="#"
                    data-target="#subWishs">
                    <span class="side-nav-menu-icon d-flex mr-3">
                    <i class="gd-heart"></i>
                    </span>
                    <span class="side-nav-fadeout-on-closed media-body">위시리스트</span>
                    <span class="side-nav-control-icon d-flex">
                <i class="gd-angle-right side-nav-fadeout-on-closed"></i>
                </span>
                    <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
                </a>

                <!-- Wishs: subWishs -->
                <ul id="subWishs" class="side-nav-menu side-nav-menu-second-level mb-0">
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="<c:url value="/user/viewWishList.do"/>">일반상품</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="<c:url value="/user/viewAuctionWishList.do"/>">경매상품</a>
                    </li>
                </ul>
                <!-- End Wishs: subWishs -->
            </li>
            <!-- End Wishs -->

            <!-- User -->
            <li class="side-nav-menu-item side-nav-has-menu">
                <a class="side-nav-menu-link media align-items-center" href="#"
                    data-target="#subUsers">
                    <span class="side-nav-menu-icon d-flex mr-3">
                    <i class="gd-user"></i>
                    </span>
                    <span class="side-nav-fadeout-on-closed media-body">사용자</span>
                    <span class="side-nav-control-icon d-flex">
                <i class="gd-angle-right side-nav-fadeout-on-closed"></i>
                </span>
                    <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
                </a>

                <!-- Users: subUsers -->
                <ul id="subUsers" class="side-nav-menu side-nav-menu-second-level mb-0">
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="<c:url value="/user/viewAccount.do"/>">프로필</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="<c:url value="/user/editAccount.do"/>">사용자 정보 수정</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="<c:url value="/user/deleteUser.do"/>">회원 탈퇴</a>
                    </li>
                </ul>
                <!-- End Users: subUsers -->
            </li>
            <!-- End Users -->

            <!-- Title -->
            <li class="sidebar-heading h6">구매</li>
            <!-- End Title -->

            <!-- Bidding List -->
            <li class="side-nav-menu-item">
                <a class="side-nav-menu-link media align-items-center" href='<c:url value="/shop/viewMyBiddingList.do"/>'>
                <span class="side-nav-menu-icon d-flex mr-3">
                    
                <i class="gd-shopping-cart"></i>
                </span>
                    <span class="side-nav-fadeout-on-closed media-body">입찰 목록</span>
                </a>
            </li>
            <!-- End Bidding List -->

            <!-- Buyer Order List -->
            <li class="side-nav-menu-item">
                <a class="side-nav-menu-link media align-items-center" href='<c:url value="/user/viewBuyerOrderList.do"/>'>
                <span class="side-nav-menu-icon d-flex mr-3">
                    
                <i class="gd-shopping-cart-full"></i>
                </span>
                    <span class="side-nav-fadeout-on-closed media-body">주문 목록</span>
                </a>
            </li>
            <!-- End Order List -->
            
            <!-- Title -->
            <li class="sidebar-heading h6">판매</li>
            <!-- End Title -->

            <!-- Selling List -->
            <li class="side-nav-menu-item">
                <a class="side-nav-menu-link media align-items-center" href='<c:url value="/user/viewSellerOrderList.do"/>'>
                <span class="side-nav-menu-icon d-flex mr-3">
                    
                <i class="gd-check"></i>
                </span>
                    <span class="side-nav-fadeout-on-closed media-body">요청된 주문 목록</span>
                </a>
            </li>
            <!-- End Selling List -->
            
            <!-- Sellings -->
            <li class="side-nav-menu-item side-nav-has-menu">
                <a class="side-nav-menu-link media align-items-center" href="#"
                    data-target="#subSellings">
                    <span class="side-nav-menu-icon d-flex mr-3">
                    <i class="gd-briefcase"></i>
                    </span>
                    <span class="side-nav-fadeout-on-closed media-body">판매 목록</span>
                    <span class="side-nav-control-icon d-flex">
                <i class="gd-angle-right side-nav-fadeout-on-closed"></i>
                </span>
                    <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
                </a>

                <!-- Sellings: product -->
                <ul id="subSellings" class="side-nav-menu side-nav-menu-second-level mb-0">
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="<c:url value="/user/viewMyProductList.do"/>">일반상품</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="<c:url value="/user/viewMyAuctionProductList.do"/>">경매상품</a>
                    </li>
                </ul>
                <!-- End Users: product -->
            </li>
            <!-- End Sellings -->
            
                        

        </ul>
    </aside>
    <!-- End Sidebar Nav -->
    