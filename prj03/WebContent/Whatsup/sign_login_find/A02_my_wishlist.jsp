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
<title>말은 마음의 초상이다.-레이</title>

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
		width:230px;
		padding: .8em .5em;
		border:none;
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
	#wish01{
		margin-left:30%;
		width:70%;
		align:left;
		margin-left:0;
		height:100px;
		border:1px solid #BDBDBD;
		border-radius:10px;
		padding:10px;
		box-sizing:border-box;
		display:inline-block;
	}
/* tab */
	
	.tabmenu label {
    display: inline-block;
    font-size: 14px;
    padding: 10px;
    text-align: center;
    width: 10%;
    line-height: 20px;
    font-weight: bold;
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 3px 3px 0 0;
    color:#777;
    border-width:1px 1px 0 1px;
    cursor:pointer;
    
	}
	#tab21{
		margin-top:50px;
		margin-left:20%;
		align:center;
	}
	.tabmenu input:nth-of-type(1):checked ~ label:nth-of-type(1) {
	    background-color:#5882FA;
	    color:#fff;
	}
	.tabmenu input:nth-of-type(2):checked ~ label:nth-of-type(2) {
	    background-color:#5882FA;
	    color:#fff;
	}
	.tabmenu input:nth-of-type(3):checked ~ label:nth-of-type(3) {
	    background-color:#5882FA;
	    color:#fff;
	}
	.tabmenu input:nth-of-type(4):checked ~ label:nth-of-type(4) {
	    background-color:#5882FA;
	    color:#fff;
	}
	
	.tabmenu > * {
	    display:none;
	}
	.tabmenu input:nth-child(1):checked ~ .tab1_content,.tabmenu input:nth-child(2):checked ~ .tab2_content,.tabmenu input:nth-child(3):checked ~ .tab3_content,.tabmenu input:nth-child(4):checked ~ .tab4_content{
	    display: block;
	}
	.tabmenu .tab1_content,
	.tabmenu .tab2_content,
	.tabmenu .tab3_content,
	.tabmenu .tab4_content {
	    padding: 32px;
	    border: 1px solid #ddd;
	    width: 65%;
	    height: 100%;
	}
	.tabmenu label:nth-of-type(1):hover{
	    background-color:#5882FA;
	}
	.tabmenu label:nth-of-type(2):hover{
	    background-color:#5882FA;
	}
	.tabmenu label:nth-of-type(3):hover{
	    background-color:#5882FA;
	}
	.tabmenu label:nth-of-type(4):hover{
	    background-color:#5882FA;
	}
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<script>
	$(document).ready(function(){
        $("#start").text("좋은 시작!!");
	});
	function scroll_follow(scroll){
		$(window).scroll(function(){
			var position=$(window).scrollTop();
			$(scroll).stop().animate({top:position+"px"},1000);
		});
	};
	$(document).ready(function(){
	      $("#spreadBtn").click(function(){
	         if($("#hiddenList").is(":visible")){
	            $("hiddenList").slideUp();
	         }else{
	            $("#hiddenList").slideDown();
	         }
	      });
	   });
	   
	   function showPopup(){
	      window.open("${path}/wishList_detail_View.do","a","width=800, height=1600, left=100, top=50");
	   }
</script>
</head>
<%-- 
# 시작
1.

--%>
<%
Member m = (Member)session.getAttribute("mem");
%>
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
			<td>&nbsp;<%=m.getName() %>님 로그인</td>
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
	
	 <div class="tabmenu" id="tab21">
        <input type="radio" name="tab" id="tab1">
        <input type="radio" name="tab" id="tab2">
        <input type="radio" name="tab" id="tab3">
        <input type="radio" name="tab" id="tab4">
        <label for="tab1">그룹1</label>
        <label for="tab2">그룹2</label>
        <label for="tab3">그룹3</label>
        <label for="tab4">+</label><br>
        <div class="tab1_content">
            <div style="border:none;width:220px;height:20px;background:url('arrow.jpg') no-repeat 95% 50%;">
            	<font size="4" style="font-weight:bold;">우리가 담은 위시 2</font>
            </div><hr style="width:20%;margin-left:0;">
            	<div id="wish01" align="left">
					<font size="1">여행</font>
					<hr>
					<font size="3">부산 여행가기</font><br>
					<font size="2" color="grey">재밌었는디</font>
				</div><br><br>
				<div id="wish01" align="left">
					<font size="1">여행</font>
					<hr>
					<font size="3" onclick="showPopup();">부산 여행가기</font><br>
					<font size="2" color="grey">재밌었는디</font>
				</div><br><br><br>
			<div style="border:none;width:220px;height:20px;background:url('arrow.jpg') no-repeat 95% 50%;">
            	<font size="4" style="font-weight:bold;">달성한 위시</font>
            </div><hr style="width:20%;margin-left:0;">
				<div id="wish01" align="left">
					<font size="1">여행</font>
					<hr>
					<font size="3">부산 여행가기</font><br>
					<font size="2" color="grey">재밌었는디</font>
				</div>
        </div>
        <div class="tab2_content">
            <div style="border:none;width:220px;height:20px;background:url('arrow.jpg') no-repeat 95% 50%;">
            	<font size="4" style="font-weight:bold;">우리가 담은 위시 1</font>
            </div>
            	<hr style="width:20%;margin-left:0;">
            	<div id="wish01" align="left">
					<font size="1">여행</font>
					<hr>
					<font size="3">부산 여행가기</font><br>
					<font size="2" color="grey">재밌었는디</font>
				</div><br><br><br>
			<div style="border:none;width:220px;height:20px;background:url('arrow.jpg') no-repeat 95% 50%;">
            	<font size="4" style="font-weight:bold;">달성한 위시</font>
            </div>
            <hr style="width:20%;margin-left:0;">
        </div>
        <div class="tab3_content">
            <div style="border:none;width:220px;height:20px;background:url('arrow.jpg') no-repeat 95% 50%;">
            	<font size="4" style="font-weight:bold;">우리가 담은 위시 1</font>
            </div><hr style="width:20%;margin-left:0;">
            	<div id="wish01" align="left">
					<font size="1">여행</font>
					<hr>
					<font size="3">부산 여행가기</font><br>
					<font size="2" color="grey">재밌었는디</font>
				</div><br><br><br>
			<div style="border:none;width:220px;height:20px;background:url('arrow.jpg') no-repeat 95% 50%;">
            	<font size="4" style="font-weight:bold;">달성한 위시</font>
            </div><hr style="width:20%;margin-left:0;">
        </div>
        <div class="tab4_content">
			
        </div>
    </div>
</body>
</html>