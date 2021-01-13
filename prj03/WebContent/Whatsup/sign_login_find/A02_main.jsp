<%-- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.a01_vo.*"
    import="whatMvc.A01_vo.*" 
    import="whatMvc.A03_database.*"
     
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
<c:set var = "path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>

<style>
	html, body{
  font-family: 'Roboto', sans-serif;
}
	#menu{
		background:#5882FA;
		color:#fff;
		width:14%;
		height:80%;
		float:left;
		position:fixed;
	}
	#mainmenu{
		margin-top:60%;
		border-collapse:separate;
		border-spacing:30px;
	}
	 #scroll{
      position:absolute;
      right:0;
      border:1px solid #5882FA;
      color:#000;
      width:15%;
      height:300px;
      display:inline-block;
      margin-right:10px;
      margin-top:10%;
      position:fixed;
   }
   select{
		width:100px;
		padding: .8em .5em;
		border:1px solid #999;
		border-radius:7px;
		background:url('arrow.jpg') no-repeat 95% 50%;
		-webkid-appearance:none;
		-moz-appearance:none;
		appearance:none;
	}
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
	a:link{color:#fff;text-decoration:none;}
	a:visited{color:#fff;text-decoration:none;}
	a:hover{color:#fff;text-decoration:none;}
	.div{
		margin:auto;
		width:40%;
		margin-left:30%;
		display:inline-box;
		margin-top:50px;
		border-radius:10px;
	}
	.div01{
		margin:auto;
		width:40%;
		margin-left:30%;
		display:inline-box;
		margin-top:50px;
		border-radius:10px;
	}
	#wish01{
		margin-left:30%;
		align:center;
		width:20%;
		height:120px;
		border:1px solid #BDBDBD;
		border-radius:10px;
		padding:10px;
		box-sizing:border-box;
		display:inline-block;
	}
	#wish02{
		margin-left:20px;
		align:center;
		width:20%;
		height:120px;
		border:1px solid #BDBDBD;
		border-radius:10px;
		padding:10px;
		box-sizing:border-box;
		display:inline-block;
		position:absolute;
	}
	#wish03{
		margin-left:30%;
		align:center;
		width:20%;
		height:120px;
		border:1px solid #BDBDBD;
		border-radius:10px;
		padding:10px;
		box-sizing:border-box;
		display:inline-block;
	}
	#wish_adv{
		margin-left:20px;
		align:center;
		width:20%;
		height:300px;
		border:1px solid #BDBDBD;
		border-radius:10px;
		padding:10px;
		box-sizing:border-box;
		display:inline-block;
		position:absolute;
	}
	.photo{
		width:90px;
		height:90px;
		border-radius:10px;
		box-sizing:border-box;
		display:inline-block;
	}
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<script>
	$(document).ready(function(){
        $("#up").click(function(){ 
        	$(location).attr("href","${path}/a01_modi.do");
        });
	});
	
	function scroll_follow(scroll){
		$(window).scroll(function(){
			var position=$(window).scrollTop();
			$(scroll).stop().animate({top:position+"px"},1000);
		});
	};
</script>
</head>
<%-- 
# 시작
1.

--%>
<%
Member m = (Member)session.getAttribute("mem");
%>
<body>
	<table id="header" align="center" width="100%">
		<colgroup>
		<col width="10%">
		<col width="80%">
		<col width="10%">
		<tr>
			<td align="center"><img alt="" src="${path}/Whatsup/sign_login_find/img/icon-menu-512.png" 
					style="width:50px; height:50px;"></td>
			<td align="center"><img alt="" src="${path}/Whatsup/sign_login_find/img/logo.png" 
					style="width:250px;height:auto;margin-left:30px;"></td>
			<td>&nbsp;<%=m.getName() %>님 로그인
			</td>
		</tr>
	</table>
	<hr>
	<div id="menu" >
		<div>
		</div>
		<table id="mainmenu">
			<tr><td><img alt="" src="${path}/Whatsup/sign_login_find/img/home.png" 
					style="width:20px;height:20px;align:center;"></td><td><a href="${path}/main.do">HOME</td></tr>
			<tr><td><img alt="" src="${path}/Whatsup/sign_login_find/img/group.png" 
					style="width:20px;height:20px;align:center;"></td><td><a href="${path}/groups.do"/>GROUPS</a></td></tr>
			<tr><td><img alt="" src="${path}/Whatsup/sign_login_find/img/cal.png" 
					style="width:20px;height:20px;align:center;"></td><td><a href="${path}/cal01.do"/>CALENDAR</td></tr>
			<tr><td><img alt="" src="${path}/Whatsup/sign_login_find/img/list.png" 
					style="width:20px;height:20px;align:center;"></td><td><a href="${path}/my_wishlist.do"/>BUCKET LIST</td></tr>
			<tr><td><img alt="" src="${path}/Whatsup/sign_login_find/img/wish.png" 
					style="width:20px;height:20px;align:center;"></td><td><a href="${path}/popular_wishlist.do"/>FIND WISHES</td></tr>
		</table>
	</div>
	<div id="scroll">
		<img alt="" src="${path}/Whatsup/sign_login_find/img/adv.png" width="100%" height="100%">
	</div>
	<div class="div">
		<ul>
			<li>
				<font size="4">내 위시</font>
			</li>
		</ul>
	</div>
	<div id="wish01">
		<font size="1">여행</font>
		<hr>
		<font size="3">부산 여행가기</font><br>
		<font size="2" color="grey">재밌었는디</font>
	</div>
	<div id="wish02">
		<font size="1">맛집</font>
		<hr>
		<font size="3">야탑 두루치기 맛집</font><br>
		<font size="2" color="grey">맛있겠다</font>
	</div><br><br>
	<div id="wish03">
		<font size="1">여행</font>
		<hr>
		<font size="3">런던</font><br>
		<font size="2" color="grey">가고싶다</font>
	</div>
	<div class="div01">
		<ul>
			<li>
				<font size="4">추천 위시</font>
			</li>
		</ul>
	</div>
	<div id="wish01">
		<table width="100%">
		<colgroup>
		<col width="20%">
		<col width="2%">
		<col width="78%">
			<tr><td rowspan="5"><div class="photo"><img alt="" src="${path}/Whatsup/sign_login_find/img/hawaii.png" style="height:100%;width:100%;border-radius:10px;"></div></td></tr>
			<tr><td>&nbsp;</td><td><font size="1">여행</font></td></tr>
			<tr><td colspan="2"><hr></td></tr>
			<tr><td>&nbsp;</td><td><font size="3">하와이</font></td></tr>
			<tr><td>&nbsp;</td><td><font size="2" color="grey">가고싶다</font></td></tr>
		</table>
	</div>
	<div id="wish_adv">
		<font size="1">여행</font>
		<hr>
		<img alt="" src="${path}/Whatsup/sign_login_find/img/wish_adv.png" style="height:200px;display:block;margin:auto;"><br>
		<font size="3">울산 간절곶</font><br>
	</div><br><br>
	<div id="wish03">
		<font size="1">여행</font>
		<hr>
		<font size="3">런던</font><br>
		<font size="2" color="grey">가고싶다</font>
	</div>
</body>
</html>