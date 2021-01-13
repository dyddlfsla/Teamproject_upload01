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
        $("#start").text("좋은 시작!!");
	});

</script>
</head>
<%-- 
# 시작
1.

--%>
<%
Member m = (Member)session.getAttribute("mem");
%>
<body>
	<div align="center"><input class="page" type="button" value="회원정보수정"></div>
	<br>
	<br>
	<form method="post">
	<table border align="center">
		<tr><th>아이디</th><td><%=m.getId() %></td></tr>
		<tr><th>비밀번호</th><td><input type="password" value=${pass} ></td></tr>
		<tr><th>이름</th><td><%=m.getName() %></td></tr>
		<tr><th>핸드폰번호</th><td><input type="text" value=${no}></td></tr>
	</table>	
	</form>
	<br>
	<br>
	<div align="center">
		<input type="button" value="수정취소">
		<input type="button" value="수정하기">
	</div>
</body>
</html>