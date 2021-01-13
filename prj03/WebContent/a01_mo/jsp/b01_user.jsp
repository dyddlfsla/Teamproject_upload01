<%-- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
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
function goPage(no){
		alert(no);
		location.href="${path}//A02_Report3.do?no="+no;
		
}

</script>
</head>
<%-- 
# 시작
1.

--%>
<body>

	<div align="center"><input class="page" type="button" value="고객관리"></div>
	<br>
	<br>
	<form method="post">
	<table border align="center">
		<tr>
			<th>NO</th>
			<th>피신고ID</th>
			<th>신고ID</th>
			<th>신고일자</th>
			<th>신고게시글</th>
			<th>신고사유</th>
			<th>처리여부</th>
			<th>처리결과</th>
		</tr>
		<c:forEach var="report" items="${reportlist}">
		<tr ondblclick="goPage(${report.no})">
		<td>${report.no}</td>
		<td>${report.id}</td>
		<td>${report.rid}</td>
<!--  -->		<td><fmt:formatDate value="${report.rday}"/></td>
		<td>${report.post}</td>
		<td>${report.reason}</td>
		<td>${report.process}</td>
		<td>${report.result2}</td>
		</tr>
		</c:forEach>
	</table>	
	</form>
	<br>
	<br>
	<div align="center">
		<input type="button" value="상세확인">
	</div>
</body>
</html>