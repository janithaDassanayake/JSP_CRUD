<%@page import="common.User"%>
<%@page import="model.Edit_values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User Data</title>


<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="css/style.css" rel="stylesheet">


</head>
<body>

<%

String sl_no=(String)request.getParameter("sl_no");

Edit_values obj_Edit_values=new Edit_values();

User obj_user = obj_Edit_values.get_values_of_user(sl_no);

%>




<h1>Edit Values</h1>


<jsp:include page="header_footer_nav/navbar.jsp"></jsp:include>
    <div class="container justify-content-center">
    
      <div class="col-sm-9 col-md-7 col-lg-6 mx-auto">
        <div class="card card-signin my-5">
  <div class="card">

    <h5 class="card-header info-color white-text text-center py-4">
        <strong>ADD User INFO</strong>
    </h5>

    <div class="card-body px-lg-5 pt-0">



<form class="md-form" style="color:#0000A0;" action="controller/edit_controller.jsp">

Sl No :<input type="text" name="sl_no"  class="form-control"   value="<%=sl_no %>" required><br>
User Name :<input type="text" name="user_name" class="form-control"    value="<%=obj_user.getUser_name() %>"required><br>
Mobile:<input type="text" name="mobile" class="form-control"    value="<%=obj_user.getMobile() %>"required ><br>
Email:<input type="text" name="email" class="form-control"   value="<%=obj_user.getEmail() %>"required><br>
Address:<input type="text" name="address"  class="form-control"   value="<%=obj_user.getAddress() %>"required><br>
Member Type:<input type="text" name="memberType"  class="form-control" value="<%=obj_user.getMemberType()%>"required><br>
Gender:
<input type="radio" name="gender" value="male" > Male
<input type="radio" name="gender" value="female"> Female<br>

<div class="text-center">
<br>
<input type="submit" value="Update"  class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0">

<br> 
 <a href="showData.jsp" style="color: #cc0000">show User List</a>

  </div>
</form>


</div>
</div>

       
      </div>
    </div>
  </div>

<jsp:include page="header_footer_nav/footer.jsp"></jsp:include>

  <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="js/mdb.min.js"></script>

</body>
</html>