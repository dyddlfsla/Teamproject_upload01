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
	#ss{position:absolute; left:25%;}
	#dd{position:absolute; right:17%;}
	#bb{width:100px; height:50px;}
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<script>
$(document).ready(function(){
	var proc="${param.proc}";
	if(proc=="upt"){
		if(confirm("수정완료!리스트로 이동하시겠습니까?")){
			location.href="${path}/C01_Event.do";
		}
	}
	if(proc=="del"){
		alert("삭제완료!리스트 화면이동");
		location.href="${path}/C01_Event.do";
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
    	$(location).attr("href","${path}/C01_Event.do");
    });       
});

</script>
</head>
<%-- 
# 시작
1.

--%>
<body>
	<div id="ss" align="center" style="width:50%; float:center;">
	<input class="page" type="button" value="제휴/이벤트 수정/삭제">
	</div>
	<form method="post">
	<div id="dd" border align="center" style="width:10%; float:right;">
	<table>
	<tr><th>현재상황</th></tr>
	<tr><td><input type="text" name="process" value="${event.process}"/></td></tr>
	</table>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<input type="hidden" name="proc"/>
	<table border align="center">
		<tr>
				
		<th>종류</th>
		<td><input type="text" name=etype value="${event.etype}"/></td>
		<th>업체</th>
		<td><input type="text" name="company" value="${event.company}"/></td>
		</tr>
		<tr>
		<th>시작일</th>
		<td><input type="date" name="sday" value="${event.sday}"/></td>
		<th>종료일</th>
		<td><input type="date" name="eday" value="${event.eday}"/></td>
		</tr>
		<tr>
		<td colspan="4" style="text-align:center">
			<textarea cols="100" rows="20" name="contents" >${event.contents}</textarea>
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