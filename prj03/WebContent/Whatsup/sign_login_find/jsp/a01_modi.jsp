<%-- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.a01_vo.*"
    import="whatMvc.A01_vo.*" 
    import="whatMvc.A03_database.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var = "path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>말은 마음의 초상이다.-레이</title>
<link rel="stylesheet" 
	href="${path}/a01_mo/css/a01_css.css">	
<style>

</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<script>
	$(document).ready(function(){
       
	});

</script>
</head>
<%-- 
# 시작
1.

--%>

<body>	
	
	<div align="center"><input class="page" type="button" value="회원정보수정"></div>
	
	<h2 id="start" align="center"></h2>
	<h3 align="center">
		회원정보 수정을 위해 <br>
		비밀번호를 다시 한번 <br>
		입력해 주십시오
	</h3>
	
	<div align="center">
	<input  type="password"/>
	</div>
	<br>
	<div align="center">
	<input type="button" value="확인"/>
	</div>

</body>
</html>