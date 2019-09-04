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
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String user_name=request.getParameter("user_name");
String address=request.getParameter("address");
String memberType=request.getParameter("memberType");
String gender=request.getParameter("gender");


User obj_user=new User();

obj_user.setSl_no(sl_no);
obj_user.setEmail(email);
obj_user.setMobile(mobile);
obj_user.setUser_name(user_name);
obj_user.setAddress(address);
obj_user.setMemberType(memberType);
obj_user.setGender(gender);

Edit_values obj_Edit_values =new Edit_values();
obj_Edit_values.edit_user(obj_user);

%>

<script type="text/javascript">
window.location.href="http://localhost:8081/JSP_MySQL_CRUD/showData.jsp"
</script>


</body>
</html>