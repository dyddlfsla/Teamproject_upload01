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
<title>취업하자</title>
<link rel="stylesheet" 
	href="${path}/a00_com/a00_com.css">	
<style>
	#im{position:absolute;left:34%; top:10%;}
	#show{position:absolute;left:20%; top:50%; width:45%;}
	<style type="text/css">
   
    *{margin: 0; padding: 0;}
            button{
               background: 0 none; border: 0 none;
            }

            .buttons{
               position: relative; 
               text-align: center; 
               margin-top: 100px;
            }
            .buttons button{
               overflow: hidden; 
               position: relative; 
               display: inline-block; 
               vertical-align: top; 
               width: 200px; 
               height: 100px; 
               line-height: 100px; 
               border: 1px solid #225ea7; 
               transition: all 0.5s;
            }
            .buttons button:hover{color: #fff;}
            .buttons button:before{
               content: ""; 
               z-index: -1; 
               position: absolute; 
               background: #225ea7; 
               transition: all 1s;
            }
            .buttons.buttons2 .button5:before{
            left: 50%; 
            top: 0; 
            transform: translateX(-50%); 
            width: 0; 
            height: 100%;
           }
            .buttons.buttons2 .button5:hover:before{width: 100%;}
            #log #sign{cursor:pointer;}
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<script>
	$(document).ready(function(){
        $("#log").click(function(){ 
        	location.href="${path}/login.do";
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
<body>
	<div id="im">
		<a href="${path}/frist.do"><img src="${path}/Whatsup/sign_login_find/logo.png" style="width:600px;"></a>
	</div>
	<div id="show">
		<div class="buttons buttons2" style="float:left; margin-left:40%;">
            <button type="button" class="button5" id="log" cursor="pointer">LOG IN</button>
     </div>
     <div class="buttons buttons2" style="display:inline-block;margin-left:20px;">
            <button type="button" class="button5" id="sign" cursor="pointer">JOIN</button>
     </div>
	</div>
</body>
</html>