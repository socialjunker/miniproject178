<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url value="/j_spring_security_logout" var="logoutUrl" />
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/resources/assets/img/apple-icon.png" />
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/assets/img/favicon.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Material Dashboard by Creative Tim</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <meta name="_csrf" content="${_csrf.token}"/>
    <!-- default header name is X-CSRF-TOKEN -->
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <!-- Bootstrap core CSS     -->
    <link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css" rel="stylesheet" />
    <!--  Material Dashboard CSS    -->
    <link href="${pageContext.request.contextPath}/resources/assets/css/material-dashboard.css?v=1.2.0" rel="stylesheet" />
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="${pageContext.request.contextPath}/resources/assets/css/demo.css" rel="stylesheet" />
    <!--     Fonts and icons     -->
    <link href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
	<style>
		input.parsley-error
		{
		  color: #B94A48 !important;
		  background-color: #F2DEDE !important;
		  border: 1px solid #EED3D7 !important;
		}
		
	</style>
</head>
<body>
    <div class="wrapper">
        <div class="sidebar" data-color="purple" data-image="${pageContext.request.contextPath}/resources/assets/img/sidebar-1.jpg">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

        Tip 2: you can also add an image using data-image tag
    -->
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text">
                    Batch 178
                </a>
            </div>
            <div class="sidebar-wrapper">
                <ul class="nav">
                    <li>
                        <a href="dashboard.html">
                            <i class="material-icons">dashboard</i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                     <li>
                        <a href="${pageContext.request.contextPath}/department">
                            <i class="material-icons">library_books</i>
                            <p>Department</p>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/employee">
                             <i class="material-icons">bubble_chart</i>
                            <p>Employee</p>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/account">
                            <i class="material-icons">person</i>
                            <p>User Account</p>
                        </a>
                    </li>
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/user">
                            <i class="material-icons">person</i>
                            <p>User</p>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/role">
                            <i class="material-icons">person</i>
                            <p>Role</p>
                        </a>
                    </li>
                    <li><a href="${pageContext.request.contextPath }/biodata"> 
						<i class="material-icons">person</i>
						<p>Biodata</p>
					</a></li>
					<li>
                        <a href="${pageContext.request.contextPath }/office">
                            <i class="material-icons">work</i>
                            <p>Office</p>
                        </a>
                    </li>
					<li><a href="${pageContext.request.contextPath }/question">
							<i class="material-icons">library_books</i>
							<p>Questions</p>
					</a></li>
					<li><a href="${pageContext.request.contextPath }/technology">
							<i class="material-icons">library_books</i>
							<p>Technology</p>
					</a></li>
                    <li>
                        <a href="#" id="logout">
                            <i class="material-icons">block</i>
                            <p>Logout</p>
                        </a>
                    </li>
                    <form action="${logoutUrl}" method="post" id="logoutForm">
					  <input type="hidden"
						name="${_csrf.parameterName}"
						value="${_csrf.token}" />
					</form>
                </ul>
            </div>
        </div>
        <div class="main-panel">
            <nav class="navbar navbar-primary navbar-absolute">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"> User Datatable</a>
                    </div>
                    <div class="collapse navbar-collapse">
                        
                        <form class="navbar-form navbar-right" role="search">
                            <div class="form-group  is-empty">
                                <input type="text" class="form-control" placeholder="Search">
                                <span class="material-input"></span>
                            </div>
                            <button type="submit" class="btn btn-white btn-round btn-just-icon">
                                <i class="material-icons">search</i>
                                <div class="ripple-container"></div>
                            </button>
                        </form>
                    </div>
                </div>
            </nav>
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                    <div class="col-lg-12 col-md-12">
                            <div class="card">
                                <div class="card-header" data-background-color="orange">
                                    <h4 class="title">List User</h4>
                                </div>
                                <div class="card-content table-responsive">
                                <input type="search" name="search" placeholder="Search by User" />
                                <button type="button" id="tambahUser" class="btn btn-sm btn-primary">+</button>
                                    <table id="table-user" class="table table-hover">
                                        <thead class="text-warning">
                                            <th>Username</th>
                                            <th>Role</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="user" items="${users }">
                                            	<tr>
                                            		<td><c:out value="${user.username }"></c:out></td>
                                            		<td><c:out value="${user.roleId.name }"></c:out></td>
                       								<td>
                       									<c:choose>
                       										<c:when test="${user.active == true }">
                       											Active
                       										</c:when>
                       										<c:when test="${user.active == false }">
                       											Not Active
                       										</c:when>
                       									</c:choose>
                       								</td>
                       								<td>
                                            			<a id="${user.id }" href="#" class="btn-hapus btn btn-danger btn-sm">Deactived</a>
                                            			<a id="${user.id }" href="#" class="btn btn-primary btn-sm">Edit</a>
                       								</td>
                                            	</tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer">
                <div class="container-fluid">
                    <nav class="pull-left">
                        <ul>
                            <li>
                                <a href="#">
                                    Home
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Company
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Portfolio
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Blog
                                </a>
                            </li>
                        </ul>
                    </nav>
                    <p class="copyright pull-right">
                        &copy;
                        <script>
                            document.write(new Date().getFullYear())
                        </script>
                        <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web
                    </p>
                </div>
            </footer>
        </div>
        <!-- modal -->
        <div class="modal fade" id="addUser" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">User</h5>
				</div>
				<form action="${pageContext.request.contextPath }/user/save" method="POST">
					<div class="modal-body">
						<div class="form-group">
							<select id="roles.id" class="form-control">
							  <option>--Select Role--</option>
							  <c:forEach items="${roles}" var="rol">
							  			<option value="${rol.id}">${rol.name}</option>
							  </c:forEach>
							</select>
						</div>
						<div class="form-group">
							<input type="text" id="username" class="form-control" placeholder="Username"/>
						</div>
						<div class="form-group">
							<input type="password" id="password" class="form-control" placeholder="Password"/>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="Retype Password"/>
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" id="add-user" class="btn btn-primary">Add</button>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancel</button>
					</div>
				</form>
			</div>
		</div>
    </div>
</body>
<!--   Core JS Files   -->
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/material.min.js" type="text/javascript"></script>
<!--  Charts Plugin -->
<script src="${pageContext.request.contextPath}/resources/assets/js/chartist.min.js"></script>
<!--  Dynamic Elements plugin -->
<script src="${pageContext.request.contextPath}/resources/assets/js/arrive.min.js"></script>
<!--  PerfectScrollbar Library -->
<script src="${pageContext.request.contextPath}/resources/assets/js/perfect-scrollbar.jquery.min.js"></script>
<!--  Notifications Plugin    -->
<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap-notify.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/parsley.js/2.8.0/parsley.min.js"></script>
<!-- Material Dashboard javascript methods -->
<script src="${pageContext.request.contextPath}/resources/assets/js/material-dashboard.js?v=1.2.0"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" />
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js" />
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="${pageContext.request.contextPath}/resources/assets/js/demo.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
    	
    	 function ajaxSetUp(){
    		 var token = $("meta[name='_csrf']").attr("content");
    		  var header = $("meta[name='_csrf_header']").attr("content");
    		  $(document).ajaxSend(function(e, xhr, options) {
    		    xhr.setRequestHeader(header, token);
    		  });
    	 }
    	 
    	 $('#table-user').DataTable();
     
    	 // Javascript method's body can be found in assets/js/demos.js
    	 $('.view-detail').on('click', function(){
    		 var id = $(this).attr('id');
    		 $(this).removeAttr("checked");	 
    		 $.ajax({
    			 url: 'account/user/'+id,
    			 type: 'GET',
    			 beforeSend: function(){
    				ajaxSetUp(); 
    			 },
    			 success: function(data){
    				 console.log(data);
    				 $("select[name='roles'] option:selected").prop("selected", false)
    				 $('#idEdit').val(data.id);
    				 $('input[name="user.username"]').val(data.username);
    				 $('input[name="user.email"]').val(data.email);
    				 
    				 if(data.enabled == 1){
    					$('#statusUser').attr("checked","");	 
    				 } 
    				 
    				 $.each(data.roles, function(index, value){ 
    					  $("select[name='roles'] option[value='" + value.id + "']").prop("selected", true);
    				 });
    			 }
    		 });
         	$('#modal-edit-account-view-detail').modal();
         });
    	 
    	 $("#statusUser").on("click", function(){
    		 var attr = $(this).attr('checked');
    		 if (typeof attr !== typeof undefined && attr !== false) {
    			 $(this).removeAttr("checked");	    
    		 } else {
    			 $(this).attr("checked", "");
    		 }
    	 });
    	 
    	 $("#add-statusUser").on("click", function(){
    		 var attr = $(this).attr('checked');
    		 if (typeof attr !== typeof undefined && attr !== false) {
    			 $(this).removeAttr("checked");	    
    		 } else {
    			 $(this).attr("checked", "");
    		 }
    	 });
    	 
    	 $('#btn-edit').on('click', function(){
    		 var attr = $("#statusUser").attr('checked');
    		 var enable = 0;
    		 if (typeof attr !== typeof undefined && attr !== false) {
    			 enable = 1;
    		 }
    		 var user = {
    				id : $('#idEdit').val(),
    				username : $('input[name="user.username"]').val(),
    				email : $('input[name="user.email"]').val(),
    				enabled : enable,
    				roles : []
    		 }
    		 
    		 $.each($('#listRoles').val(), function(index, val){
    			 var role = {
    				id : val
    			 }
    			 user.roles.push(role);
    		 });
    		
			$.ajax({
				 url : 'account/updaterole',
				 type: 'PUT', 
				 contentType: 'application/json',
				 data : JSON.stringify(user),
				 success: function(data){
					 window.location = "account";
				 }
			 });
    	 });
    	 
    	 
    	 
    	 $('#btn-add-role').on('click', function(){
    		 $('#add-role-modal').modal();
    	 });
    	 
    	 $('#btn-add-role-submit').on('click', function(){
    		 var validate = $('#form-add-role').parsley();
    		 if(validate.validate()){
    			var role = {
    				roleName : $('#role-name').val(),
    			}
    			ajaxSetUp();
    			$.ajax({
    				url: 'account/addrole',
    				type: 'POST',
    				data: JSON.stringify(role),
    				contentType: 'application/json',
    				success: function(data){
    					console.log(data);
    				}
    			});
    		 }	 
    	 });
    	 
    	//logout event button
    	 $('#logout').click(function(event){
    		 event.preventDefault();
    		$('#logoutForm').submit();
    	 });
    	
    	//modal tambah user
 	    $('#tambahUser').click(function(event) {
 			event.preventDefault();
 			$('#addUser').modal();
 		});
    	
 		//tambah user
   	    var button = jQuery('#add-user').click(function(event){
   								event.preventDefault();
   								var username = jQuery('#username').val();
   								var password = jQuery('#password').val();
   								var active = 1;
   								var user = {
   										username:username,
   										password:password,
   										active:active
   								}
   								jQuery.ajax({
   									url : '${pageContext.request.contextPath}/user/save',
   									type:'POST',
   										beforeSend:function(){
   											console.log(user);
   											console.log('mau contact server');
   										},
   									contentType: 'application/json',
   									data: JSON.stringify(user),
   									success : function(data){
   										console.log('data dari server');
   										console.log(data);
   										window.location='${pageContext.request.contextPath}/user'
   									}
   								});
   								
   			});
    });
    
</script>

</html>