<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page import="java.util.Random" %>
<c:url value="/j_spring_security_logout" var="logoutUrl" />
<!doctype html>
<html lang="en">
<%
Random rng = new Random();
String characters = "0123456789";
char[] pattern = new char[6];
pattern[0] = 'R';
pattern[1] = 'O';
for(int i=2;i<pattern.length;i++)
{
	pattern[i] = characters.charAt(rng.nextInt(characters.length()));
}
String RndmCode = new String(pattern);
%>
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
                        <a href="${pageContext.request.contextPath}/user">
                            <i class="material-icons">person</i>
                            <p>User</p>
                        </a>
                    </li>
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/role">
                            <i class="material-icons">person</i>
                            <p>Role</p>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/menu">
                            <i class="material-icons">library_books</i>
                            <p>Menu</p>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/menu_access">
                            <i class="material-icons">library_books</i>
                            <p>Menu Access</p>
                        </a>
                    </li>
                    <li><a href="${pageContext.request.contextPath }/biodata"> 
						<i class="material-icons">person</i>
						<p>Biodata</p>
					</a></li>
					<li><a href="${pageContext.request.contextPath }/monitoring"> 
						<i class="material-icons">work</i>
						<p>Monitoring</p>
					</a></li>
					<li><a href="${pageContext.request.contextPath }/assignment"> 
						<i class="material-icons">work</i>
						<p>Assignment</p>
					</a></li>
					<li>
					<li>
                        <a href="${pageContext.request.contextPath }/office">
                            <i class="material-icons">work</i>
                            <p>Office</p>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/bootcamp">
                            <i class="material-icons">group</i>
                            <p>Bootcamp Test Type</p>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/category">
                            <i class="material-icons">library_books</i>
                            <p>Category</p>
                        </a>
                    </li>
                      <li>
                        <a href="${pageContext.request.contextPath }/idlenews">
                            <i class="material-icons">chat</i>
                            <p>Idle News</p>
                        </a>
                    </li>
					<li><a href="${pageContext.request.contextPath }/question">
							<i class="material-icons">library_books</i>
							<p>Questions</p>
					</a></li>
					<li><a href="${pageContext.request.contextPath }/version">
							<i class="material-icons">library_books</i>
							<p>Versions</p>
					</a></li>
					<li><a href="${pageContext.request.contextPath }/feedback">
							<i class="material-icons">library_books</i>
							<p>Feedback</p>
					</a></li>
					<li><a href="${pageContext.request.contextPath }/technology">
							<i class="material-icons">developer_mode</i>
							<p>Technology</p>
					</a></li>
					<li><a href="${pageContext.request.contextPath }/trainer">
							<i class="material-icons">supervisor_account</i>
							<p>Trainer</p>
					</a></li>
					<li><a href="${pageContext.request.contextPath }/testimony">
							<i class="material-icons">list</i>
							<p>Testimony</p>
					</a></li>
					<li><a href="${pageContext.request.contextPath }/batch">
							<i class="material-icons">list</i>
							<p>Batch</p>
					</a></li>
					<li><a href="${pageContext.request.contextPath }/class">
							<i class="material-icons">list</i>
							<p>Class</p>
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
                        <a class="navbar-brand" href="#"> Role Datatable</a>
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
                                    <h4 class="title">Role</h4>
                                </div>
                                <div class="card-content table-responsive">
                                <form action="${pageContext.request.contextPath}/role/search" method="GET">
	                                <input type="search" id="searchRole" name="srcrole" placeholder="Search by name" />
	                                <button type="submit" class="btn btn-sm btn-default">
	                                		<i class="material-icons"></i>Search
	                               	</button>
	                                <button type="button" id="tambahRole" class="btn btn-sm btn-primary">+</button>
                                </form>
                                    <table id="table-role" class="table table-hover">
                                        <thead class="text-warning">
                                            <th>Code</th>
                                            <th>Name</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="role" items="${roles }">
                                            	<tr>
                                            		<td><c:out value="${role.code }"></c:out></td>
                                            		<td><c:out value="${role.name }"></c:out></td>
                       								<td>
                       									<c:choose>
                       										<c:when test="${role.active == true }">
                       											Active
                       										</c:when>
                       										<c:when test="${role.active == false }">
                       											Not Active
                       										</c:when>
                       									</c:choose>
                       								</td>
                       								<td>
                                            			<a id="${role.id }" class="btn-deactivate btn btn-danger btn-sm">Deactived</a>
                                            			<a id="${role.id }" class="btn-update btn btn-primary btn-sm">Edit</a>
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
        <!-- modal add role-->
        <div class="modal fade" id="addRole" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Role</h5>
				</div>
				<form action="${pageContext.request.contextPath }/role/save" method="POST">
					<div class="modal-body">
						<div class="form-group">
							<input type="text" id="code" value="<%out.print(RndmCode);%>" class="form-control" placeholder="<%out.print(RndmCode);%>" style="background-color: #bcbcbc" readonly/>
						</div>
						<div class="form-group">
							<input type="text" id="name" class="form-control" placeholder="Name"/>
						</div>
						<div class="form-group">
							<textarea rows="4" cols="50" id="description" class="form-control" placeholder="Description"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" id="add-role" class="btn btn-primary">Add</button>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancel</button>
					</div>
				</form>
			</div>
			</div>
		</div>
		<!-- modal deactivate role-->
        <div class="modal fade" id="deactivate-role" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title">Are You Sure to Deactivate this Role?</h3>
				</div>
				<form action="${pageContext.request.contextPath }/role/deactivate" method="POST">
					<div class="modal-body">
						<input type="hidden" id="id-role"/>
						<input type="hidden" id="name-role"/>
						<input type="hidden" id="code-role"/>
						<input type="hidden" id="description-role"/>
						<input type="hidden" id="createdOn-role"/>
						<input type="hidden" id="createdBy-role"/>
					</div>
					<div class="modal-footer">
						<button type="submit" id="deactivate-btn" class="btn btn-primary">Deactivate</button>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancel</button>
					</div>
				</form>
			</div>
			</div>
		</div>
		<!-- modal edit role-->
        <div class="modal fade" id="update-role" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title">Edit Role</h3>
				</div>
				<form action="${pageContext.request.contextPath }/role/update" method="POST">
					<div class="modal-body">
						<input type="hidden" id="id-role2"/>
						<input type="hidden" id="createdBy-role2"/>
						<div class="form-group">
							<input type="text" id="code-role2" class="form-control" readonly/>
						</div>
						<div class="form-group">
							<input type="text" id="name-role2" class="form-control"/>
						</div>
						<div class="form-group">
							<textarea rows="4" cols="50" id="description-role2" class="form-control"></textarea>
						</div>
						<input type="hidden" id="createdOn-role2"/>
					</div>
					<div class="modal-footer">
						<button type="submit" id="update-btn" class="btn btn-primary">Update</button>
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
    	 
    	 $('#table-role').DataTable();
    	 
    	//logout event button
    	 $('#logout').click(function(event){
    		 event.preventDefault();
    		$('#logoutForm').submit();
    	 });
    	
    	//modal tambah role
 	    $('#tambahRole').click(function(event) {
 			event.preventDefault();
 			$('#addRole').modal();
 		});
    	
 		//tambah role
   	    var button = jQuery('#add-role').click(function(event){
   								event.preventDefault();
   								var code = jQuery('#code').val();
   								var name = jQuery('#name').val();
   								var description = jQuery('#description').val();
   								var active = 1;
   								var role = {
   										code:code,
   										name:name,
   										description:description,
   										active:active
   								}
   								jQuery.ajax({
   									url : '${pageContext.request.contextPath}/role/save',
   									type:'POST',
   										beforeSend:function(){
   											console.log(role);
   											console.log('mau contact server');
   										},
   									contentType: 'application/json',
   									data: JSON.stringify(role),
   									success : function(data){
   										console.log('data dari server');
   										console.log(data);
   										window.location='${pageContext.request.contextPath}/role'
   										alert("Berhasil menambahkan Role")
   									},
   									error : function(data){
   										alert("data tidak boleh kosong")
   									}
   								});
   								
   			});
 		
   		//deactivate-confirm
 		$(".btn-deactivate").on('click', function(){
    		 var id = $(this).attr('id');
    		 $.ajax({
    			 url : '${pageContext.request.contextPath}/role/get/'+ id,
    			 type: 'GET',
    			 success : function(data){
    				 $('#id-role').val(data.id);
    				 $('#name-role').val(data.name);
    				 $('#code-role').val(data.code);
    				 $('#createdOn-role').val(data.createdOn);
    				 $('#description-role').val(data.description);
    				 $('#createdBy-role').val(data.createdBy);
    			 },
    			 dataType: 'json'
    		 })
    		 
    		$('#deactivate-role').modal();
    	 });
   	
   		//deactivate role
   	    var button = jQuery('#deactivate-btn').click(function(event){
   								event.preventDefault();
   								var active = 0;
   								var modifiedOn = new Date();
   								var id = jQuery('#id-role').val();
   								var name = jQuery('#name-role').val();
   								var code = jQuery('#code-role').val();
   								var createdOn = jQuery('#createdOn-role').val();
   								var description = jQuery('#description-role').val();
   								var createdBy = jQuery('#createdBy-role').val();
   								var role = {
   										id:id,
   										code:code,
   										name:name,
   										description:description,
   										modifiedOn:modifiedOn,
   										createdOn:createdOn,
   										createdBy:createdBy,
   										active:active
   								}
   								jQuery.ajax({
   									url : '${pageContext.request.contextPath}/role/deactivate',
   									type:'POST',
   										beforeSend:function(){
   											console.log(role);
   											console.log('mau contact server');
   										},
   									contentType: 'application/json',
   									data: JSON.stringify(role),
   									success : function(data){
   										console.log('data dari server');
   										console.log(data);
   										window.location='${pageContext.request.contextPath}/role'
   										alert("Role berhasil deactivate")
   									}
   								});
   								
   			});
   		
   		//update-confirm
 		$(".btn-update").on('click', function(){
    		 var id = $(this).attr('id');
    		 $.ajax({
    			 url : '${pageContext.request.contextPath}/role/get/'+ id,
    			 type: 'GET',
    			 success : function(data){
    				 $('#id-role2').val(data.id);
    				 $('#name-role2').val(data.name);
    				 $('#code-role2').val(data.code);
    				 $('#createdOn-role2').val(data.createdOn);
    				 $('#description-role2').val(data.description);
    				 $('#createdBy-role2').val(data.createdBy);
    			 },
    			 dataType: 'json'
    		 })
    		 
    		$('#update-role').modal();
    	 });
   	
   		//update role
   	    var button = jQuery('#update-btn').click(function(event){
   								event.preventDefault();
   								var active = 1;
   								var modifiedOn = new Date();
   								var id = jQuery('#id-role2').val();
   								var name = jQuery('#name-role2').val();
   								var code = jQuery('#code-role2').val();
   								var createdOn = jQuery('#createdOn-role2').val();
   								var description = jQuery('#description-role2').val();
   								var createdBy = jQuery('#createdBy-role2').val();
   								var role = {
   										id:id,
   										code:code,
   										name:name,
   										description:description,
   										createdOn:createdOn,
   										modifiedOn:modifiedOn,
   										createdBy:createdBy,
   										active:active
   								}
   								jQuery.ajax({
   									url : '${pageContext.request.contextPath}/role/update',
   									type:'POST',
   										beforeSend:function(){
   											console.log(role);
   											console.log('mau contact server');
   										},
   									contentType: 'application/json',
   									data: JSON.stringify(role),
   									success : function(data){
   										console.log('data dari server');
   										console.log(data);
   										window.location='${pageContext.request.contextPath}/role'
   										alert("Role berhasil update")
   									},
   									error : function(data){
   										alert("data tidak boleh kosong")
   									}
   								});
   								
   			});
    });
    
</script>

</html>