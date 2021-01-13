<%-- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.a01_vo.*"    
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
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<script>
	$(document).ready(function(){
        $("#start").text("좋은 시작!!");
	});

</script>
</head>
<%-- 
# 시작
1.

--%>
<body>
	<div class="buttons buttons2" style="float:left; margin-left:40%;">
            <button type="button" class="button5">LOG IN</button>
     </div>
     <div class="buttons buttons2" style="display:inline-block;margin-left:20px;">
            <button type="button" class="button5">JOIN</button>
     </div>
</body>
</html>