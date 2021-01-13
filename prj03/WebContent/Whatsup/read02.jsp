<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>리스크 등록</title>
<link rel="stylesheet" href="${path}/a00_com/a00_cc/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/a00_cc/jquery-ui.css" >
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<script src="${path}/a00_com/a00_cc/jquery.min.js"></script>
<script src="${path}/a00_com/a00_cc/popper.min.js"></script>
<script src="${path}/a00_com/a00_cc/bootstrap.min.js"></script>
<script src="${path}/a00_com/a00_cc/jquery-ui.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$("#regBtn").click(function(){ 
		alert("등록이 완료");
		//$('form').attr("action","${path}/work.do?method=insert");
		//alert( $('form').attr("action") );
		//alert("${empno}")
		//alert("등록이 완료2");
		$('form').submit();
		
		
	});
	var proc = "${proc}";
	if(proc=="insert"){ 
		opener.parent.location.reload();
		window.close()
	}
});
</script>
</head>

<body>
<br>
<h2 align="center">상세 조회</h2>
<h4 align="center">리스크 제목</h4>
<br>
<div class="container">
	<form>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text bg-dark text-white" style="width:120px;text-align:center;">프로젝트 이름</span>
		</div>		
		<input class="form-control" readonly/>	
	</div>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text bg-dark text-white" style="width:120px;text-align:center;">업무 이름</span>
		</div>		
		<input class="form-control" readonly/>
	</div>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text bg-dark text-white" style="width:120px;text-align:center;">대응 전략</span>
		</div>		
		<input class="form-control" readonly/>
	</div>
	
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text bg-dark text-white" style="width:120px;text-align:center;">리스크 내용</span>
		</div>
		<textarea rows="5" cols="170" style="resize:none;" readonly></textarea>
	</div>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text bg-dark text-white" style="width:120px;text-align:center;">조치사항</span>
		</div>
		<textarea rows="5" cols="170" style="resize:none;" readonly></textarea>
	</div>
		
	<div class="input-group-prepend">
			<span class="input-group-text bg-dark text-white" style="width:120px;text-align:center;">첨부파일</span>
		</div>
	<div class="input-group-prepend">
		<input type="file" id="risk_file" name="risk_file" class="form-control"/>
	</div>
	<br><br>
	<div style="text-align:center;">
		<button id="register-btn" class="btn btn-info" style="margin-right:50px">수정</button>
		<button id="register-btn01" class="btn btn-info">삭제</button>
	</div>
	</form>
 </div>	
</body>
</html>