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
    //$("#start").text("좋은 시작!!");
    $("#regBtn").click(function(){
   		if(confirm("신규 이벤트/제휴 등록 하시겠습니까?")){
   			location.href="${path}/a01_mo/jsp/c02_event2.jsp";
   		} 	
    });
});
function goPage(eno){
	alert(eno);
	location.href="${path}/C03_Event3.do?eno="+eno;
	
}
</script>
</head>
<%-- 
# 시작
1.

--%>
<body>
	<div align="center"><input class="page" type="button" value="제휴/이벤트"></div>
	<br>
	<br>
	<form method="post">
	<table border align="center">
		<tr>
			<th>NO</th>
			<th>종류</th>
			<th>업체</th>
			<th>시작일</th>
			<th>종료일</th>
			<th>현재상황</th>
		</tr>	
		<c:forEach var="event" items="${eilst}">
		<tr ondblclick="goPage(${event.eno})">
		<td>${event.eno}</td>
		<td>${event.etype}</td>
		<td>${event.company}</td>
	<td><fmt:formatDate value="${event.sday}"/></td>
	<td><fmt:formatDate value="${event.eday}"/></td>
		<td>${event.process}</td>
		</tr>
		</c:forEach>
	</table>	
	</form>
	<br>
	<br>
	<div align="center">
		<input type="button" value="등록하기" id="regBtn">
		<input type="button" value="수정/삭제">
	</div>
</body>
</html>