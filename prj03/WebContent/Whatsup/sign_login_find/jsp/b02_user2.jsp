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
			location.href="${path}/A01_Report2.do";
		}
	}
	
    $("#start").text("상세 정보");
    // uptBtn delBtn lstBtn
    $("#uptBtn").click(function(){
    	$("[name=proc]").val("upt");
    	$("form").submit();
    });
    
    $("#lstBtn").click(function(){
    	$(location).attr("href","${path}/A01_Report2.do");
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
	<input class="page" type="button" value="고객관리">
	</div>
	<form method="post">
	<div id="dd" border align="center" style="width:10%; float:right;">
	<table>
	<tr><th>처리결과</th></tr>
	<tr><td><input type="text" name="result2" value="${report.result2}"/></td></tr>
	</table>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<input type="hidden" name="proc"/>
	<table border align="center" width="40px">
		<tr>
		<th>피신고ID</th>
		<td >${report.id}</td>
		<th>신고ID</th>
		<td>${report.rid}</td>
		</tr>
		<tr>
		<th>신고 위시리스트</th>
		<td>${report.post}</td>
		<th>신고사유</th>
		<td>${report.reason}</td>
		</tr>
		<tr><td colspan="4" style="text-align:center">
			<textarea cols="100" rows="20" name="contents" >${report.contents}</textarea>
		</td></tr>

	</table>	
	</form>
	<br>
	<br>
	<div align="center">
				<input type="button" id="uptBtn" value="수정"/>
				<input type="button" id="lstBtn" value="조회"/>
	</div>
</body>
</html>