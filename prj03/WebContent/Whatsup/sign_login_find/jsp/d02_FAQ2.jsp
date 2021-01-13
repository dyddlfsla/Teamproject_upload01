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
    // $("#start").text("좋은 시작!!");
    var isSucc = "${isSucc}"=="true";
    if(isSucc){
 	   if(confirm("등록 성공했습니다?\n조회페이지로 이동하시겠습니까?")){
 		   location.href="${path}/D01_Faq.do"; // 조회하는 controller로 이동..
 	   }
    }
    $("#lstBtn").click(function(){
    	$(location).attr("href","${path}/D01_Faq.do");
    }); 
	});

</script>
</head>
<%-- 
# 시작
1.

--%>
<body>
	<div align="center"><input class="page" type="button" value="FAQ 등록"></div>
	<br>
	<br>
	<form method="post" action="${path}/D02_Faq2.do">
	<table border align="center">
		<tr>
		<th>번호</th>
		<td><input type="text" name="no1"/></td>
		<th>제목</th>
		<td><input type="text" name="name"/></td>
		</tr>
		<tr>
		<th>작성자</th>
		<td><input type="text" name="writer"/></td>
		<th>카테고리</th>
		<td><input type="text" name="category"/></td>
		</tr>
		<tr>
		<td colspan="4" style="text-align:center">
			<textarea cols="100" rows="20" name="contents">
			</textarea>
		</td>
		</tr>	
	</table>	
	
	<br>
	<br>
	<div align="center">
		<input type="button" id="lstBtn" value="등록취소">
		<input type="submit" value="등록완료">
	</div>
	</form>
</body>
</html>