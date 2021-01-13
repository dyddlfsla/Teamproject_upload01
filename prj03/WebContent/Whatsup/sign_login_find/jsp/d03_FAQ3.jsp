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
	var proc="${param.proc}";
	if(proc=="upt"){
		if(confirm("수정완료!리스트로 이동하시겠습니까?")){
			location.href="${path}/D01_Faq.do";
		}
	}
	if(proc=="del"){
		alert("삭제완료!리스트 화면이동");
		location.href="${path}/D01_Faq.do";
	}
	
	
    $("#start").text("상세 정보");
    // uptBtn delBtn lstBtn
    $("#uptBtn").click(function(){
    	$("[name=proc]").val("upt");
    	$("form").submit();
    });
    $("#delBtn").click(function(){
    	$("[name=proc]").val("del");
    	$("form").submit();
    });
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
	<div align="center"><input class="page" type="button" value="FAQ 수정/삭제"></div>
	<br>
	<br>
	<form method="post" >
	<input type="hidden" name="proc"/>
	<table border align="center">
		<tr>
		<th>번호</th>
		<td><input type="text" name="no1" value="${faq.no1}"/></td>
		<th>제목</th>
		<td><input type="text" name="name" value="${faq.name}"/></td>
		</tr>
		<tr>
		<th>작성자</th>
		<td><input type="text" name="writer" value="${faq.writer}"/></td>
		<th>카테고리</th>
		<td><input type="text" name="category" value="${faq.category}"/></td>
		</tr>
		<tr>
		<td colspan="4" style="text-align:center">
			<textarea cols="100" rows="20" name="contents" >${faq.contents}</textarea>
		</td>
		</tr>	
	</table>	
	</form>
	<br>
	<br>
	<div align="center">
				<input type="button" id="uptBtn" value="수정"/>
				<input type="button" id="delBtn" value="삭제"/>
				<input type="button" id="lstBtn" value="조회"/>
	</div>
</body>
</html>