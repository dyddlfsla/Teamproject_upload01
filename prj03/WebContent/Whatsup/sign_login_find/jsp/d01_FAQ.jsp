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
   		if(confirm("FAQ 정보 등록 하시겠습니까?")){
   			location.href="${path}/a01_mo/jsp/d02_FAQ2.jsp";
   		} 	
    });
});
function goPage(no1){
	alert(no1);
	location.href="${path}/D03_Faq3.do?no1="+no1;
	
}
</script>
</head>
<%-- 
# 시작
1.

--%>
<body>
	<div align="center"><input class="page" type="button" value="FAQ"></div>
	<br>
	<br>
	<form method="post">
	<table border align="center">
		<tr><th>번호</th><th>FAQ제목</th><th>작성자</th><th>작성일</th><th>조회수</th><th>만족도</th><th>수정필요</th></tr>
				<c:forEach var="f" items="${filst}">
		<tr ondblclick="goPage(${f.no1})">
		<td>${f.no1}</td>
		<td>${f.name}</td>
		<td>${f.writer}</td>
<!--  -->		<td><fmt:formatDate value="${f.rday}"/></td>
		<td>${f.views}</td>
		<td>${f.satisfaction}</td>
		<td>${f.modifi}</td>
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