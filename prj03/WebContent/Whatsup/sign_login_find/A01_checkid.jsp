<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="whatMvc.A03_database.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String id = request.getParameter("id"); if(id==null) id="";
System.out.println("아이디값:"+id);
signup m = new signup();
%>
{"chId":<%=m.checkId(id)%>}