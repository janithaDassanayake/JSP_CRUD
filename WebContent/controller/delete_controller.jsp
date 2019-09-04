<%@page import="model.Delete_values"%>
<%@page import="model.Edit_values"%>
<%@page import="common.User"%>
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
Delete_values obj_Delete_values=new Delete_values();
obj_Delete_values.delete_value(sl_no);

%>

<script type="text/javascript">
window.location.href="http://localhost:8081/JSP_MySQL_CRUD/showData.jsp"
</script>


</body>
</html>