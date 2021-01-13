<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Page Title - SB Admin</title>
        <link href="${path}/a00_com/css/styles.css" rel="stylesheet" />
        <script src="${path}/a00_com/a00_cc/jquery.min.js"></script>
		<script src="${path}/a00_com/a00_cc/jquery-ui.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
        
        <style>
        	input[type="number"]::-webkit-outer-spin-button,
			input[type="number"]::-webkit-inner-spin-button {
			    -webkit-appearance: none;
			    margin: 0;
			}
        </style>
        
        <script type="text/javascript">
        	$(document).ready(function(){
        		
        		$("#inputNewPassChk").keyup(function(){
        			if(event.keyCode==13){
                		var pass = document.querySelector("[name=pass]");
                		if(pass.value=="${sessEmp.pass}"){
    						$(location).attr("href","${path}/pmslogin.do?method=chkpass2");
                		}else{
                			alert("비밀번호가 다릅니다.")
                		}         				
        			}
        		});
        		
        		
        		$("#uptBtn").click(function(){
            		var pass = document.querySelector("[name=pass]");
            		if(pass.value=="${sessEmp.pass}"){
						$(location).attr("href","${path}/pmslogin.do?method=chkpass2");
            		}else{
            			alert("비밀번호가 다릅니다.")
            		} 
    		
            	});
        		/* if(inputPass!=""){
        			if(newPass!=""){
	        			alert("로그인 화면으로 이동합니다.");
    	    			$(location).attr("href","${path}/pmslogin.do?method=pmslogin");
        			}else{
            			alert("비밀번호를 확인해주세요.");
            		}
        		}*/
        	});
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
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">CHANGE PASSWORD</h3></div>
                                    <div class="card-body">
                                    	<div class="small mb-3 text-muted">현재 비밀번호를 입력해주세요.</div>
                                        <form>
                                        <input type="hidden" name="method" value="join">
                                        	<input type="hidden" name="empno" value="0"/>
                                        <input type="hidden" name="method" value="changepass">
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputPassChk">비밀번호 확인</label>
                                                <input class="form-control py-4"
                                                	onkeypress="if(event.keyCode==13){return false;}"
                                                
                                                 id="inputNewPassChk" type="password" name="pass" placeholder="비밀번호를 입력해주세요." />
                                            </div>
                                            
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small"></a>
                                                <a class="btn btn-primary" type="button" id="uptBtn" style="color:#fff;">확인</a>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="small"><a>&nbsp;</a></div>
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
                            <div class="text-muted">Copyright &copy; Your Website 2020</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
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
