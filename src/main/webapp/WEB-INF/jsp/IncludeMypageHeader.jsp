<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>
<head>
    <title>SoSo Market</title>
    <meta http-equiv="Content-Type" content="text/html; utf-8" />
    <meta http-equiv="Cache-Control" content="max-age=0">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="Pragma" content="no-cache">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <!-- Favicon -->
    <link rel="shortcut icon" href="../img/favicon.ico">

    <!-- Template -->
    <link rel="stylesheet" href="../css/graindashboard.css">
</head>

<c:if test="${!accountForm.newAccount}">
	<%@ include file="IncludeMypageSide.jsp" %>
</c:if>
<c:if test="${accountForm.newAccount}">
	<main class="main">
</c:if>
