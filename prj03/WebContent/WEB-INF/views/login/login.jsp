<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Page Title - SB Admin</title>
        <link href="${path}/a00_com/css/styles.css" rel="stylesheet" />
        <script src="${path}/a00_com/a00_cc/jquery.min.js"></script>
		<script src="${path}/a00_com/a00_cc/popper.min.js"></script>
		<script src="${path}/a00_com/a00_cc/bootstrap.min.js"></script>
		<script src="${path}/a00_com/a00_cc/jquery-ui.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
        
        <style>
        	input[type="number"]::-webkit-outer-spin-button,
			input[type="number"]::-webkit-inner-spin-button {
			    -webkit-appearance: none;
			    margin: 0;
			}
			select {
				width: 200px;
				height:30px;
				border: 1px solid #999;
				font-family: inherit;
				border-radius: 0px;
				-webkit-appearance: none;
				-moz-appearance: none;
				appearance: none;
				font-size:15px;
			}
			select::-ms-expand{display:none;}
        </style>
        
        <script type="text/javascript">
        	$(document).ready(function(){
        		var inputEmpno="${param.empno}";
        		var pmsEname="${sessEmp.ename}";
        		var rankname="${sessEmp.rankname}";
        		$("#loginBtn").click(function(){
        			var empno=$("#inputEmpno").val();
        			if(empno!=""){
        				// 정상
        				$("#loginFrm").submit();
        			}else{
        				// 비정상
        				alert("사원번호를 입력해주세요.");
        			}
        		});
        		
        		

        		$('#inputEmpno').on('keypress', function(e){
        			if(e.keyCode == '13'){
        			$('#loginBtn').click();
        			}
        			});
        		
        		

	

        		$('#inputPass').on('keypress', function(e){
        			if(e.keyCode == '13'){
        			$('#loginBtn').click();
        			}
        			});


        		if(inputEmpno!=""){
        			if(pmsEname!=""){
        				alert(pmsEname+" "+rankname+"님 안녕하세요");
        				$(location).attr("href","${path}/ps.do?method=main");
        			}
        			else {
        				alert("사원번호 혹은 비밀번호를 확인해주세요.");
        			}
        		}
        	
        		// 다국어
	        	$("[name=lang]").val('${param.lang}').on("change",function(){
	        		$("#chLang").attr("action","${path}/pmslogin.do?method=chLang");
	        		$("#chLang").submit();
	        	});

        	});
        	
        	function logincheck(){
        		var empno="${param.empno}";
        		
        		if(empno.value == ""){
            		alert("사원번호를 입력해주세요.");
            		return false;
            	}
        	}
        	
        	function popup(){
                var url = "${path}/pmslogin.do?method=chatting";
                var name = "popup test";
                var option = "width = 500, height = 500, top = 100, left = 200, location = no"
                window.open(url, name, option);
            }

        </script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4"><spring:message code='login'/></h3></div>
                                    <div class="card-body">
                                        <form id="loginFrm">
                                        <input type = "hidden" name = "method" value = "pmslogin">
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputPassword" value="<spring:message code='empno'/>"></label>
                                                <input class="form-control py-4" id="inputEmpno" type="number" name="empno" placeholder="<spring:message code='placeholder1'/>" />
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress" value="<spring:message code='pass'/>"></label>
                                                <input class="form-control py-4" id="inputPass" name="pass" type="password" placeholder="<spring:message code='placeholder2'/>" />
                                            </div>
                                            <div class="form-group">
                                                <div class="custom-control custom-checkbox">
                                                    <input class="custom-control-input" id="rememberPasswordCheck" type="checkbox" />
                                                    <label class="custom-control-label" for="rememberPasswordCheck"><spring:message code='chk'/></label>
                                                </div>
                                            </div>
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="${path}/pmslogin.do?method=findpass"><spring:message code='findpass'/></a>
                                                <input class="btn btn-primary"  value="<spring:message code='login'/>" id="loginBtn" type="button">
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center">
                                     		<form id="chLang" method="post">
                                        	<select name="lang" style="vertical-align:middle;text-align-last:center;">
                                        		<option value="" selected disabled hidden><spring:message code='chlang'/></option>
                                        		<option value="" disabled>--------------------------------</option>
										    	<option value="ko"><spring:message code='ko'/></option>
										    	<option value="en"><spring:message code='en'/></option>
										    	<option value="ch"><spring:message code='ch'/></option>
										    	<option value="th"><spring:message code='th'/></option>
                                        	</select>
                                        	</form>
                                       		<input class="btn btn-primary" value="chatting" type="button" 
                                       		onclick="window.open('${path}/pmslogin.do?method=chatting','chatting','width=430,height=800,location=no,status=no,scrollbars=yes')"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Premium Solution 2020</div>
                            <div>
                                <a href="#">개인 정보 보호 정책</a>
                                &middot;
                                <a href="#">이용 &amp; 약관</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    </body>
</html>
