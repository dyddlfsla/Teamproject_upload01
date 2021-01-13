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
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/a00_cc/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/a00_cc/jquery-ui.css" >
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		//$("h2").text("사원등록");
	
	});
</script>
</head>

<body>
<div class="jumbotron">
  <h2 align="center"></h2>
</div>
<div class="container">
	<form method="post">
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">이름</span>
		</div>
		<input name="title" class="form-control"  placeholder="이름입력" value="" />	
	</div>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">입사일</span>
		</div>
		<input type="date"class="form-control"/>	
	</div>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">사원번호</span>
		</div>
		<input name="empno" class="form-control"  placeholder="사원번호입력" value="" />	
	</div>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">휴대폰</span>
		</div>
		<input name="empno" class="form-control"  placeholder="휴대폰번호입력" value="" />	
	</div>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">이메일</span>
		</div>
		<input name="empno" class="form-control"  placeholder="이메일입력" value="" />	
	</div>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">부서명</span>
		</div>
			<select>
			<option>선택하세요</option>
			<option>회계</option>
			<option>개발팀</option>
			<option>웹디자인</option>
			<option>경영지원</option>
		</select>
		<div class="input-group-prepend">
			<span class="input-group-text">직급</span>
		</div>
		<select>
			<option>선택하세요</option>
			<option>사원</option>
			<option>대리</option>
			<option>과장</option>
			<option>차장</option>
			<option>부장</option>
			<option>임원</option>
			<option>CEO</option>
		</select>
		<div class="input-group-prepend">
			<span class="input-group-text">권한</span>
		</div>
		<select>
			<option>선택하세요</option>
			<option>사원</option>
			<option>CEO</option>
			<option>P.M</option>
			<option>Member</option>
		</select>
	</div>
	<div style="text-align:center;">
		<input type="button" class="btn btn-info"
			value="등록" id="regBtn"/>
	</div>
	</form>
 </div>	
</body>
</html>