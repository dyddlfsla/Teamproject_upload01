<%-- --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.util.*"
    import="jspexp.a01_vo.*"    
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ������ �ʻ��̴�.-����</title>
<link rel="stylesheet" 
   href="${path}/a00_com/a00_com.css">   
<style>
   
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<script>
   $(document).ready(function(){
        $("#start").text("���� ����!!");
   });

</script>
</head>
<%-- 
# ����
1.

--%>
<body>
   <h3>�λ� ���డ��</h3>
   <table width="90%" align="center">
   <tr><td style="height:100px;">img</td></tr>
   <tr><td style="font-size:10px;text-align:left;">category</td></tr>
   <tr><td style="font-weight:bold;font-size:20px;text-align:left;">title</td></tr>
   <tr><td style="text-align:left;">body</td></tr>
   </table>
   
</body>
</html>