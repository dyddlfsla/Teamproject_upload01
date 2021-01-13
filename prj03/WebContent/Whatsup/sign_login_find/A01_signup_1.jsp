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

<style>
	#im{position:absolute;left:40%;}
   #up{position:absolute;left:45%;top:250px;}
    td{font-size:20px; }
   .input{width:420px; height:40px;}
   #sign{position:absolute; left:37%; top:350px;}
   #chbtn{background-color:#1EA4FF; border:0;outline:0; cursor:pointer;}
   #btns2{background-color:#1EA4FF; border:0;outline:0; cursor:pointer;}
   #btns3{background-color:#1EA4FF; border:0;outline:0; cursor:pointer;}
   #btns4{background-color:#1EA4FF; border:0;outline:0; cursor:pointer;}
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>

</head>
<%

%>
<script>

$(document).ready(function(){
	//회원가입
	var isInsSuss = "${isInsSuss}"=="true";
	if(isInsSuss){ 
		location.href="${path}/signup2.do";	
	}
});

window.onload=function(){
	 //아이디 중복 체크!
     // 1. 비동기 객체 생성.     
    var ch = new XMLHttpRequest();
    var chbtn = document.querySelector("#chbtn");
    chbtn.onclick=function(){
       var idVal = document.querySelector("[name=id]").value;
     	//alert(idVal);
       // 2. open()
       ch.open("get","${path}/Whatsup/sign_login_find/A01_checkid.jsp?id="+idVal,true);
       // 3. onreadystatechange()
       ch.onreadystatechange=function(){ 
    	   if(ch.readyState==4 && ch.status==200){ 
    		   //alert(ch.responseText);
    			var ck = eval("("+ch.responseText+")");
    			
    			if(ck.chId){ 
    				alert("중복된 아이디입니다");
    				document.querySelector("[name=id]").value="";
                    document.querySelector("[name=id]").focus();
    			}else{ 
    				alert(idVal+"는(은) 사용 가능합니다");
    			}

    	   }
       };
    	// 4. send()
       ch.send();
    }
    
    //인증번호!!!
    var cnum = document.querySelector("[name=cnum]");
    var telS = document.querySelector("[name=telS]");
    var innum = 0;
    
	    $("#btns2").click(function(){ 
	    	if(telS.value == null){
	    		alert("휴대폰 번호를 번호를입력해주세요");
	    	}else{
	    		var num = Math.floor((Math.random()*899999)+100000);
		    	innum = num ;
		    	alert("인증번호:"+innum);
	    	}
	    });
	    $("#btns3").click(function(){ 
	    	if (cnum == innum){
	    		alert("인증되었습니다");
	    	
	    	}else {
	    		alert("인증번호를 입력해 주세요");
	    	}	
    	});
  	
  	
};		
</script>
<body>
	<div id="im">
		<a href="${path}/frist.do"><img src="${path}/Whatsup/sign_login_find/logo.png" style="width:300px;"></a>
	</div>
   <div id="up">
  		 <b style="font-size:40px;">회원가입</b>
   </div>
   <div id="sign">
   
   		<form method="post">
   		<table>
   			<tr>
   			<!-- contorller단 호출 -->
			<td><input type="text" placeholder="아이디를입력해 주세요" class="input" name="id">
   				<input type="button" value="중복확인" Style="height:45px; " id="chbtn" name="ckbt">
   			</td></tr>
   			<tr><td><span class="result" ></span></td></tr>
   			<tr><td><input type="password" placeholder="비밀번호를 입력해 주세요" class="input" name="pass"></td></tr>
   			<tr><td></td></tr>
   			<tr><td><input type="password" placeholder="한번더 입력해 주세요" class="input"></td></tr>
   			<tr><td></td></tr>
   			<tr><td><input type="text" placeholder="이름"  class="input" name="name"></td></tr>
   			<tr><td></td></tr>
   			<tr><td><input type="text" placeholder="'-'제외하고입력  ex)01012345678" class="input" name="telS">
   					<input type="button" value="인증번호" Style="height:45px; " id="btns2"></td></tr>
   			<tr><td><input type="text" placeholder="인증번호입력"  class="input" name="cnum">
   					<input type="button" value="인증확인" Style="height:45px; " id="btns3"></td></tr>
   			<tr><td></td></tr>
   			<tr><td></td></tr>
   			<tr><td></td></tr>
   			<tr><td></td></tr>
   			<tr><td><input type="submit" value="가입하기" style="width:430px; height:45px;" id="btns4"></td></tr>
   		</table>
   		</form>
   		
   </div>
</body>
</html>