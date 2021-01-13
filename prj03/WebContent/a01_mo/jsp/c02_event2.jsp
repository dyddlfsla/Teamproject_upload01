<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="${path}/a01_mo/css/a01_css.css">	
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>

<style>
	#ss{position:absolute; left:25%;}
	#dd{position:absolute; right:17%;}
	#bb{width:100px; height:50px;}
</style>
<script type="text/javascript">
$(document).ready(function(){
    // $("#start").text("좋은 시작!!");
    var isSucc = "${isSucc}"=="true";
    if(isSucc){
 	   if(confirm("등록 성공했습니다?\n조회페이지로 이동하시겠습니까?")){
 		   location.href="${path}/C01_Event.do"; // 조회하는 controller로 이동..
 	   }
    }
    
    $("#lstBtn").click(function(){
    	$(location).attr("href","${path}/C01_Event.do");
    }); 
});
function call(){
	alert( $("[name=sday]").val() );
}
</script>
</head>

<body>
	<div id="ss" align="center" style="width:50%; float:center;">
	<input class="page" type="button" value="제휴/이벤트 등록">
	</div>
	<form method="post" action="${path}/C02_Event2.do">
		<div id="dd" border align="center" style="width:10%; float:right;">
		<table>
		<tr><th>현재상황</th></tr>
		<tr><td><input type="text" name="process"/></td></tr>
		</table>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<table border align="center">
			<tr>
			<th>종류</th>
			<td><input type="text" name="etype"/></td>
			<th>업체</th>
			<td><input type="text" name="company"/></td>
			</tr>
			<tr>
			<th>시작일자</th>
			<td><input type="date" name="insday"/></td>
			<th>종료일자</th>
			<td><input type="date" name="ineday"/></td>
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
			<input type="submit"  value="등록완료">
		</div>
	</form>
</body>
</html>