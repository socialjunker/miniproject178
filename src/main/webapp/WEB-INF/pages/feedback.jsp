<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url value="/j_spring_security_logout" var="logoutUrl" />
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath}/resources/assets/img/apple-icon.png" />
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/resources/assets/img/favicon.png" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Material Dashboard by Creative Tim</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />
<meta name="_csrf" content="${_csrf.token}" />
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}" />
<!-- Bootstrap core CSS     -->
<link
	href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css"
	rel="stylesheet" />
<!--  Material Dashboard CSS    -->
<link
	href="${pageContext.request.contextPath}/resources/assets/css/material-dashboard.css?v=1.2.0"
	rel="stylesheet" />
<!--  CSS for Demo Purpose, don't include it in your project     -->
<link
	href="${pageContext.request.contextPath}/resources/assets/css/demo.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/assets/datepicker/dist/datepicker.min.css"
	rel="stylesheet" />
<!--     Fonts and icons     -->
<link
	href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons'
	rel='stylesheet' type='text/css'>
<style>
input.parsley-error {
	color: #B94A48 !important;
	background-color: #F2DEDE !important;
	border: 1px solid #EED3D7 !important;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="sidebar" data-color="purple"
			data-image="${pageContext.request.contextPath}/resources/assets/img/sidebar-1.jpg">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

        Tip 2: you can also add an image using data-image tag
    -->
			<div class="logo">
				<a href="http://www.creative-tim.com" class="simple-text"> Batch 178 </a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li>
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
					<li class="active"><a href="${pageContext.request.contextPath }/feedback">
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
					<li><a href="#" id="logout"> <i class="material-icons">block</i>
							<p>Logout</p>
					</a></li>
					<form action="${logoutUrl}" method="post" id="logoutForm">
						<input type="hidden" name="${_csrf.parameterName}"
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
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#"> Feedback Datatable </a>
					</div>
				</div>
			</nav>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<c:if test="${not empty message}">
								<div class="alert alert-info">
									<c:out value="${message }"></c:out>
								</div>
							</c:if>
							<div class="card">
								<div class="card-header" data-background-color="orange">
									<h4 class="title">Feedback</h4>
								</div>
								<div class="card-content table-responsive">
									<table id="table-user" class="table table-hover">
										<thead class="text-warning">
											<select class="form-control" id="selected" name="test.id">
												<c:forEach items="${tests}" var="t">
													<option value="${t.id }">${t.name }</option>
												</c:forEach>
											</select>
										</thead>
										<tbody id="list-question">
												<c:forEach var="vd" items="${versions.versionDetail }">
														<input type="hidden" value="${versions.id }" id="versionId">
	                                            		<td><c:out value="${vd.question.question }"><label class="txt-question">${vd.question.question }</label></c:out></td>
	                                            	</tr>
	                                            	<tr>
	                                            		<td><textarea cols="135" rows="5" class="answer" id="answer" placeholder="Notes"></textarea></td>
	                                            	</tr>
	                                            </c:forEach>
										</tbody>
									</table>
									<div>
										<button type="submit" id="saveFeedback" class="btn btn-primary">Save</button>
									</div>
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
							<li><a href="#"> Home </a></li>
							<li><a href="#"> Company </a></li>
							<li><a href="#"> Portfolio </a></li>
							<li><a href="#"> Blog </a></li>
						</ul>
					</nav>
					<p class="copyright pull-right">
						&copy;
						<script>
							document.write(new Date().getFullYear())
						</script>
						<a href="http://www.creative-tim.com">Creative Tim</a>, made with
						love for a better web
					</p>
				</div>
			</footer>
		</div>
	</div>
	
</body>
<!--   Core JS Files   -->
<script
	src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.2.1.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/js/material.min.js"
	type="text/javascript"></script>
<!--  Charts Plugin -->
<script
	src="${pageContext.request.contextPath}/resources/assets/js/chartist.min.js"></script>
<!--  Dynamic Elements plugin -->
<script
	src="${pageContext.request.contextPath}/resources/assets/js/arrive.min.js"></script>
<!--  PerfectScrollbar Library -->
<script
	src="${pageContext.request.contextPath}/resources/assets/js/perfect-scrollbar.jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/datepicker/dist/datepicker.js"></script>
<!--  Notifications Plugin    -->
<script
	src="${pageContext.request.contextPath}/resources/assets/js/bootstrap-notify.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/parsley.js/2.8.0/parsley.min.js"></script>
<!-- Material Dashboard javascript methods -->
<script
	src="${pageContext.request.contextPath}/resources/assets/js/material-dashboard.js?v=1.2.0"></script>
<script
	src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" />
<script
	src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js" />
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script
	src="${pageContext.request.contextPath}/resources/assets/js/demo.js"></script>
<script type="text/javascript">
jQuery(document).ready(function() {
/* 	$("#selected").on("change", function(){
		alert('test');
		var testId = $('#selected option:selected').val();
		var testTxt = $('#selected option:selected').text();
		var versionId = $('#versionId').val();
		var date = new Date();
		var feedback : {
			test : {
				id: testId
			},
			version : {
				id: versionId
			}
		};
		
		jQuery.ajax({
			url: '${pageContext.request.contextPath}/feedback/save',
			type: 'post',
			beforeSend: function(){
				console.log(feedback);
				console.log('mau contact server..');
			},
			contentType: 'application/json',
			dataType: "json",
			data: JSON.stringify(feedback),
			success: function(data) {
				console.log('dapat data dari server');
				console.log(data);
				window.location = '${pageContext.request.contextPath}/feedback';
				alert('data berhasil ditambahkan')
			}
		});
	}); */
	$('#saveFeedback').click(function(event) {
		event.preventDefault();
		var testTxt = $('#selected option:selected').text();
		var testId = $('#selected option:selected').val();
		var versionId = $('#versionId').val();
		var jsonFeedback = $('#jsonFeedback').val();
		var date = new Date();
		
		var feedback = {
				test : {
					id: testId
				},
				version : {
					id: versionId
				},
				createdOn: date
		};
		
		/* var oTable = $('#table-user').find('#list-question tr');
		var listQuestion = [];
		$.each(oTable, function(index, value){
				var questions = $(this).find('.txt-question').text();
				var answer = $(this).find('.answer').val();
				
				var questions = {
					question : {
						question : questions
					},
					answer: answer
				}
				feedback.questions.push(feedback);
		}); */
		
		console.log(feedback);
		
 		jQuery.ajax({
			url: '${pageContext.request.contextPath}/feedback/save',
			type: 'post',
			beforeSend: function(){
				console.log(feedback);
				console.log('mau contact server..');
			},
			contentType: 'application/json',
			dataType: "json",
			data: JSON.stringify(feedback),
			success: function(data) {
				console.log('dapat data dari server');
				console.log(data);
				window.location = '${pageContext.request.contextPath}/feedback'
				alert('data berhasil ditambahkan')
			}, error : function(){
				 alert('Masukkan Jenis Test!');
			}
		});
	});
});

$(document).ready(function() {
	
	$('#saveQuestion').click(function(event) {
		event.preventDefault();
		var questiontxt = $('#selected option:selected').text();
		var questionval = $('#selected option:selected').val();
		var oTable = $('#table-user');
		var tbody = oTable.find('tbody');
		var tr = $("<tr>");
		tr.append($('<td><input type="hidden" class="form-control txt-question" value="' + questionval + '"/>' + questiontxt + '</td>'));
		tr.append($('<td><button type="button" href="#" id="btn_Edit" class="btn-delete btn-danger btn-simple btn-xs"><i class="fa fa-times"></i></td>'));
		$('table-user tbody').append(tr);
		$('#selected').val('');
			tbody.append(tr);
			$('#addVersion').modal('show');
			$('#addQuestion').modal('hide');
	});
	
	$(document).on('click', '#btn_Edit', function() {
		  var currentTr = $(this).closest('tr');
		  var indx = $(currentTr).prop('index');
		  var questionval = $(currentTr).find('td').eq(0).attr('val');
		  $('#selected').val(questionval);
		  currentTr.remove();
	});
	
	var button1 = jQuery('.btn-hapus').click(function(event){
		event.preventDefault();
		var id = $(this).attr('id');
		 $.ajax({
			 url : '${pageContext.request.contextPath}/version/get/'+ id,
			 type: 'GET',
			 success : function(data){
				 $('#id-version').val(data.id);
				 $('#created-on').val(data.createdOn);
				 $('input[name="version"]').val(data.version);
				 $('input[name="isDelete"]').val(data.isDelete = true);
			 },
			 dataType: 'json'
		 })
		$('#editVersion').modal();
	 });
	
	var button = jQuery('#deleteVersion').click(function(event){
		event.preventDefault();
		var d = new Date();
		/* var versionss = {
			id : $('#id-version').val(),
			version : $('#versions').val(),
			isDelete :  $('#actives').val(),
			createdOn : $('#created-on').val(),
			deletedOn : d
		} */
		
		var versionss = {
				id : $('#id-version').val(),
				version : $('#versions').val(),
				isDelete :  $('#actives').val(),
				createdOn : $('#created-on').val(),
				deletedOn : d,
				versionDetail: []
		};
		
		var oTable = $('#addVersion').find('#list-question tr');
		var listQuestion = [];
		$.each(oTable, function(index, value){
				var questions = $(this).find('.txt-question').val();
				var date = new Date();
				
				var versionDetail = {
					question : {
						id : questions
					},
					createdOn: date
				}
				versions.versionDetail.push(versionDetail);
		});
			
		jQuery.ajax({
			url : '${pageContext.request.contextPath}/version/update',
			type: 'POST',
			beforeSend: function(){
				console.log(versionss);
				console.log('contact server');
			},
			data: JSON.stringify(versionss),
			headers: {
				'Accept' : 'application/json',
				'Content-Type' : 'application/json'
			},
			success : function(data){
			console.log(data);
			alert('berhasil dihapus');
			window.location = "${pageContext.request.contextPath}/version";
			}
		});
	 });
	
	//setting up datepicker
	$('#birthDate123').datepicker();
	
	function ajaxSetUp() {
		var token = $("meta[name='_csrf']").attr("content");
		var header = $("meta[name='_csrf_header']").attr(
				"content");
		$(document).ajaxSend(function(e, xhr, options) {
			xhr.setRequestHeader(header, token);
		});
	}
	
	//$('#table-version').DataTable();
	//$('#table-question').DataTable();

	//logout event button
	$('#logout').click(function(event) {
		event.preventDefault();
		$('#logoutForm').submit();
	});

	//modal tambah version
	$('#tambahVersion').click(function(event) {
		event.preventDefault();
		$.ajax({
			url: "${pageContext.request.contextPath}/version/generatedversion",
			success: function(data){
				$('#version').val(data);
			}
		})
		$('#addVersion').modal();
	});
	
	//modal tambah question
	$('#tambahQuestion').click(function(event) {
		event.preventDefault();
		$('#addVersion').modal('hide');
		$('#addQuestion').modal('show');
	});
	
	//modal save version
	$('#saveQuestion').click(function(event) {
		event.preventDefault();
		$('#addVersion').modal('show');
		$('#addQuestion').modal('hide');
	});
	
	//modal cancel question
	$('#cancelQuestion').click(function(event) {
		event.preventDefault();
		$('#addVersion').modal('show');
		$('#addQuestion').modal('hide');
	});

});
</script>

</html>