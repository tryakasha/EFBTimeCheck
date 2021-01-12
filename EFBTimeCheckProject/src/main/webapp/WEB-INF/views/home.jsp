<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<style type="text/css">
	#mvBtn{
		border: 0;
		background: #000000ab;
		color: white;
		outline: 0;
	}
	#mvBtn:hover{
		cursor: pointer;
	}
	</style>
</head>
<body>
<h1>
	ETimeCheckWeb
</h1>

<P>  현재 시간 : ${serverTime}. </P>

<input id="mvBtn" type="button" value="이동하기">

<script type="text/javascript">
	$('#mvBtn').click(function(){
		location.href="goTCPage.tc"
	});
</script>
</body>
</html>
