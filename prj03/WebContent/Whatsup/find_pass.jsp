<%-- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="whatMvc.A03_database.*" 
    import="java.util.*"
    import="whatMvc.vo.*"    
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
  
<style>
	#im{position:absolute;left:40%;}
	#fi{position:absolute;left:37%; top:40%;}
   .input{width:420px; height:40px;}
   .input2{width:345px; height:40px;}
   .btns1{background-color:#1EA4FF; border:0;outline:0; cursor:pointer;}
   .btns3{background-color:#1EA4FF; border:0;outline:0; cursor:pointer;}
   #ids{position:absolute; left:750px; top:350px;}
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<script>
   $(document).ready(function(){
        $("#start").text("아이디찾기");
   });

</script>
</head>
<%-- 
# 시작
1.

--%>
<body>
   <div id="im">
		<a href="login.jsp"><img src="logo.png" style="width:300px;"></a>
	</div>
   <div id="fi">
   <form method="post">
   <table>
   			<tr><td align="center"><b style="font-size:40px;">비밀번호찾기</b></td></tr>
   			<tr><td><input type="text" placeholder="아이디" class="input" id="id"></td></tr>
   			<tr><td><input type="text" placeholder="이름" class="input" id="name"></td></tr>
   			<tr><td><input type="text" placeholder="휴대폰번호" class="input2" id="phone">
   					<input type="button" value="인증번호" Style="height:45px; " class="btns1"></td></tr>
   			<tr><td><input type="text" placeholder="인증번호" class="input" id="cnum"></td></tr>
   			<tr><td></td></tr>
   			<tr><td></td></tr>
   			<tr><td></td></tr>
   			<tr><td><input type="submit" value="비밀번호찾기" style="width:430px; height:45px;" class="btns3"></td></tr>
   	</table>
   </form>
   </div>
</body>
</html>