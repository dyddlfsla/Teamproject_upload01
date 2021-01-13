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
<script src="${path}/a00_com/a00_cc/jquery.min.js"></script>
<script src="${path}/a00_com/a00_cc/popper.min.js"></script>
<script src="${path}/a00_com/a00_cc/bootstrap.min.js"></script>
<script src="${path}/a00_com/a00_cc/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>
		var win;
		$("h2").text("시작");
		$("#regBtn").click(function(){
			
			win=window.open("z02.jsp","","width=100,heigh=100");
		});
		$("#schBtn").click(function(){
			$("h2").text("검색 처리");
			// $("form").submit();
			win.close();
		});		
		
		
	});
</script>
</head>

<body>
<div class="jumbotron">
  <h2 align='center'></h2>
</div>
<div class="container">
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	<!-- emp.do?method=list -->
	  <form class="form-inline" method="post"
	  	action="">
	    <input class="form-control mr-sm-2" type="text" 
	    	name="" placeholder="" 
	    	value="">
	    <input class="form-control mr-sm-2" type="text" 
	    	name=""  placeholder=""  
	    	value="">
	    <button class="btn btn-success" type="submit">Search</button>
	    &nbsp;
	    <input  class="btn btn-info" type="button" 
	    	id="regBtn" value="등록"/>
	    <input  class="btn btn-info" type="button" 
	    	id="schBtn" value="검색"/>	    	
	    
	  </form>
	</nav>	

    
    <table class="table table-hover">
    	<thead>
    		<tr class="table-success text-center">
    			<th></th>
    			<th></th>
    			<th></th>
    			<th></th>
    			<th></th>
    			<th></th>
    			<th></th>
    			<th></th>
    		</tr>
    	</thead>
    	<tbody>
    		<c:forEach var="emp" items="${empList}">
    		<tr class="text-center" 
    			ondblclick="goPage(${emp})">
    			<td>${emp}</td>
    			<td>${emp}</td>
    			<td>${emp}</td>
    			<td>${emp}</td>
    			<td><fmt:formatDate value="${emp}"/> </td>
    			<td><fmt:formatNumber value="${emp}"/></td>
    			<td>${emp}</td>
    			<td>${emp}</td>
    		</tr>
    		</c:forEach>
    	</tbody>
    </table>
</div>
</body>
</html>