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
<title>새로운 비밀번호</title>  
<style>
	table{width:410px; }
   .bt{ width:100%; height:40px; font-size:25px; background-color:#1EA4FF; border:0;outline:0; cursor:pointer; }
   .bt2{ width:130px; height:40px; font-size:20px; background-color:#1EA4FF; border:0;outline:0; cursor:pointer; }
   .text{width:98%; height:40px;}
   #lo{position:absolute; left:700px; top:150px;}
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>

</head>
<%-- 
# 시작
1.

--%>
<%

	
%>
<script>
   $(document).ready(function(){
     	var proc = "${param.proc}";
     	if(proc=="upt"){ 
     		location.href="${path}/com_update.do";
     	}
        $("#min").click(function(){ 
        	$("form").attr("action","${path}/uptPassProc.do")
        	$("form").submit();
        });
        
   });

</script>
<body>
   <div id="lo">
   <a href="login.jsp"><img src="${path}/Whatsup/sign_login_find/logo.png" style="width:450px;"></a>
   	<h3 align="center">새로운 비밀번호를 입력해 주세요</h3>
   	<form method="post" >
   		<input type="hidden" name="proc" value="upt" />
   		<input type="hidden" name="id" value="${param.id}" />
   	<table align="center">
   		<tr><td><input type="password" placeholder="비밀번호" name="pass" class="text"></td></tr>
   		<tr></tr>
   		<tr></tr>
   		<tr></tr>
   		<tr></tr>
   		<tr></tr>
   		<tr></tr>
   		<tr><td><input type="button"
   		 value="변경하기" class="bt" id="min"></td></tr>
   	</table>
   	</form>
   </div>
</body>
</html>