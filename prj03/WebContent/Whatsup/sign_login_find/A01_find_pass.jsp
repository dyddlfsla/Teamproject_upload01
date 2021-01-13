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
	#fi{position:absolute;left:37%; top:40%;}
   .input{width:420px; height:40px;}
   .input2{width:345px; height:40px;}
   .btns1{background-color:#1EA4FF; border:0;outline:0; cursor:pointer;}
   .btns3{background-color:#1EA4FF; border:0;outline:0; cursor:pointer;}
   #ids{position:absolute; left:750px; top:350px;}
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<%

%>
<script>
   $(document).ready(function(){
        $("#findPass").click(function(){ 
        	var id = $('[name=id]').val();
        	var name = $('[name=name]').val();
        	var telS = $('[name=telS]').val();
        	var xhr = new XMLHttpRequest();
        	var query = "?id="+id+"&name="+name+"&telS="+telS;
        	//alert(query);
        	xhr.open("get","${path}/Whatsup/sign_login_find/A01_find_pass_Action.jsp"+query,true);
        	xhr.onreadystatechange=function(){ 
        		if(xhr.readyState==4 && xhr.status==200){ 
        		//alert(xhr.responseText);
        		var result = eval("("+xhr.responseText+")");
        		if(result.IsTrue){ 
        		//alert(result.pass);
        			$('form').attr("action","${path}/updatepass.do");
        			$("form").submit();
        			//location.href="${path}/updatepass.do?id="+id;
        	  }else{ 
        		  alert("정보가 없습니다.");
        	  }
        	}
          }
        	xhr.send();
        	$('[name=proc]').val('findPass');
        });
   });
   // 인증번호
   window.onload = function(){ 
		var cnum = document.querySelector("[name=cnum]");
	    var innum = 0;
		$("#bt1").click(function(){ 
		    if(cnum==null){
		    	alert("가입시 등록한 번호를입력해주세요");
		    }else{ 
		    	var num = Math.floor((Math.random()*899999)+100000);
			    innum = num ;
			    alert("인증번호:"+innum);
		    }
		});
	    $("#bt2").click(function(){ 
	    	if(cnum.value == innum){
	    		alert("인증되었습니다.");
	    	
	    	}else{
	    		alert("인증번호를 다시 입력해 주세요.");
	    	}
	    });
	 }
</script>
</head>
<%-- 
# 시작
1.

--%>
<body>
   <div id="im">
		<a href="login.jsp"><img src="${path}/Whatsup/sign_login_find/logo.png" style="width:300px;"></a>
	</div>
   <div id="fi">
   <form method="post">
   <input type="hidden" name="proc">
   <table>
   			<tr><td align="center"><b style="font-size:40px;">비밀번호찾기</b></td></tr>
   			<tr><td><input type="text" placeholder="아이디" class="input" name="id"></td></tr>
   			<tr><td><input type="text" placeholder="이름" class="input" name="name"></td></tr>
   			<tr><td><input type="text" placeholder="휴대폰번호" class="input2" name="telS">
   					<input type="button" value="인증번호" Style="height:45px; " class="btns1" id="bt1"></td></tr>
   			<tr><td><input type="text" placeholder="인증번호" class="input2" name="cnum">
   					<input type="button" value="번호확인" Style="height:45px; " class="btns1" id="bt2"></td></tr>
   			<tr><td></td></tr>
   			<tr><td></td></tr>
   			<tr><td></td></tr>
   			<tr><td><input type="button" value="비밀번호찾기" style="width:430px; height:45px;" class="btns3" id="findPass"></td></tr>
   	</table>
   </form>
   </div>
</body>
</html>