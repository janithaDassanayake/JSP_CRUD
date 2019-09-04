<%@page import="java.util.Iterator"%>
<%@page import="common.User"%>
<%@page import="java.util.List"%>
<%@page import="model.Read_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

<meta charset="ISO-8859-1">
<title>Show users</title>
 <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    
    
    
</head>
<body>



<%

	Read_Values obj_Read_Values =new Read_Values(); 

	List<User>list= obj_Read_Values.get_values();

	Iterator<User>It_list=list.iterator();
	
%>


	 <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Members</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Register Member List
                        </div>
 						<div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                    	<th>Member ID</th>
                                        <th>User name</th>
                                        <th>Email</th>
                                        <th>Mobile No</th>
                                        <th>Address</th>
                                        <th>Member Type</th>
                                        <th>gender </th>
                                    </tr>
                                </thead>


<% 
	while(It_list.hasNext()){
	
		User obj_user=new User();
	 obj_user=It_list.next();

%>
	 <tr>
	      	 <tbody>
	           
                     <tr class="odd gradeX">
                            <td><%=obj_user.getSl_no()%></td>
                             <td><%=obj_user.getUser_name()%></td>
                             <td><%=obj_user.getEmail()%></td>
                             <td><%=obj_user.getMobile()%></td>
                              <td><%=obj_user.getAddress()%></td>
                              <td><%=obj_user.getMemberType()%></td>
                                <td><%=obj_user.getGender()%></td>
                                <td> 
                                
                                <a href ="edit.jsp?sl_no=<%=obj_user.getSl_no() %>">update</a>
                                </td>
                                
                                 <td> 
                                
                                <a href ="controller/delete_controller.jsp?sl_no=<%=obj_user.getSl_no() %>" style="color: #cc0000">Remove</a>
                                </td>
					 </tr>
                     <tr class="even gradeC">
                           
                                        
                     </tr>
                     
          </tbody>

<% 	 
}
%>
 </table>
      <!-- /.table-responsive -->
                          <div class="well">
                                
                                 <a href="insert_values.jsp"  class="btn btn-default btn-lg btn-block" target="_blank">Add Users</a>
                                 
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
           
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->


<jsp:include page="header_footer_nav/footer.jsp"></jsp:include>


    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    
    </script>
 <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="js/mdb.min.js"></script>






</body>

</html>