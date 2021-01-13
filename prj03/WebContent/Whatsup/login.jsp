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
<style>
	table{width:410px; }
   .bt{ width:100%; height:40px; font-size:25px; background-color:#1EA4FF; border:0;outline:0; cursor:pointer; }
   .bt2{ width:130px; height:40px; font-size:20px; background-color:#1EA4FF; border:0;outline:0; cursor:pointer; }
   .text{width:98%; height:40px;}
   #lo{position:absolute; left:700px; top:150px;}
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<script>
   $(document).ready(function(){
        $("#fid").click(function(){ 
        	location.href="${path}/findid.do";
        });
        $("#fpas").click(function(){ 
        	location.href="${path}/findpass.do";
        });
        $("#sign").click(function(){ 
        	location.href="${path}/signup1.do";
        });
   });

</script>
</head>
<%-- 
# 시작
1.

--%>
<%

String id = request.getParameter("id"); if(id==null) id="";
String pass = request.getParameter("pass"); if(pass==null) pass="";
	if(!id.equals("")){ 
		signup db = new signup();
		Member m = db.login(id, pass);
		if(m!=null){	 // 데이터가 있는경우 
		
			session.setAttribute("mem", m);
		
			RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
		      // request에 있는 모델을 넘기기 위해서 forward 처리.
		      rd.forward(request, response);	
		}
	}
%>
<body>
   <div id="lo">
   <a href="login.jsp"><img src="${path}/whatsup/logo.png" style="width:450px;"></a>
   	<form method="post" >
   	<table align="center">
   		<tr><td><input type="text" placeholder="아이디" name="id" class="text"></td></tr>
   		<tr><td><input type="password" placeholder="비밀번호" name="pass" class="text"></td></tr>
   		<tr><td><input type="submit" value="로그인" class="bt"></td></tr>
   	</table>
   	</form>
   	<br>
   	<table align="center">
   		<tr><td>
   		<input type="button" value="아이디찾기" class="bt2" id="fid">
   		<input type="button" value="비밀번호찾기" class="bt2" id="fpas">
   		<input type="button" value="회원가입" class="bt2" id="sign">
   		</td></tr>
   	</table>
   </div>
</body>
</html>