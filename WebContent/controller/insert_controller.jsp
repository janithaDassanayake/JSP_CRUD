<%@page import="model.Insert_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert details</title>
</head>
<body>

<%
String sl_no=request.getParameter("sl_no");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String user_name=request.getParameter("user_name");
String address=request.getParameter("address");
String memberType=request.getParameter("memberType");
String gender=request.getParameter("gender");


Insert_Values obj_Insert_Values = new Insert_Values();

obj_Insert_Values.Insert_Values(sl_no, user_name, email, mobile,address,memberType,gender);
%>

<script type="text/javascript">
window.location.href="http://localhost:8081/JSP_MySQL_CRUD/showData.jsp"

</script>



</body>
</html>