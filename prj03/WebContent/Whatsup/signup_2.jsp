<%-- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="whatMvc.A03_database.*" 
    import="java.util.*"
    import="whatMvc.A01_vo.*"    
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
   href="${path}/a00_com/a00_com.css">   
<style>
	#im{position:absolute;left:40%;}
   p{font-size:35px;}
   #com{position:absolute; left:37%; top:40%;}
   input{ width:200px; height:40px; font-size:25px; background-color:#1EA4FF; border:0;outline:0; cursor:pointer; }
   #bt{position:absolute; left:42%; top:55%;  }
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<script>
   $(document).ready(function(){
   
   
   $("#log").click(function(){ 
	   location.href="${path}/login.do";
	   
   });
  });

</script>
</head>
<%-- 
# 시작
1.

--%>
<body>
	<div id="im">
		<img src="${path}/whatsup/logo.png" style="width:300px;">
	</div>
	<div id="com">
		<p> 가입이 완료 되었습니다 </p>
	</div>
	<div id="bt">
		<input type="button" value="로그인"  id="log"/>
	</div>
   
</body>
</html>