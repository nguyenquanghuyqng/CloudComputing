<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage News</title>
<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="Style/HomeAdmin/css/bootstrap.min.css" />
<link rel="stylesheet" href="Style/HomeAdmin/css/font-awesome.min.css" />


<!-- page specific plugin styles -->
<link rel="stylesheet"
	href="Style/HomeAdmin/js/jquery-ui.custom.min.css" />
<link rel="stylesheet" href="Style/HomeAdmin/css/fullcalendar.min.css" />


<!-- text fonts -->
<link rel="stylesheet"
	href="Style/HomeAdmin/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="Style/HomeAdmin/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<link rel="stylesheet" href="Style/HomeAdmin/css/ace-skins.min.css" />
<link rel="stylesheet" href="Style/HomeAdmin/css/ace-rtl.min.css" />

<!-- ace settings handler -->
<script src="Style/HomeAdmin/js/ace-extra.min.js"></script>

<link rel="stylesheet " href="Style/HomeAdmin/css/template.css"
	type="text/css ">

<script src="Style/HomeAdmin/js/jquery-2.1.4.min.js"></script>

<script src="Style/HomeAdmin/js/bootstrap.min.js"></script>

<!-- ace scripts -->
<script src="Style/HomeAdmin/js/ace-elements.min.js"></script>
<script src="Style/HomeAdmin/js/ace.min.js"></script>


</head>

<body class="no-skin" style="font-size: 14px;">
<script src="Style/ckeditor/ckeditor.js"/>

	<div id="navbar"
		class="img-responsive navbar navbar-default ace-save-state">
		<div class="navbar-container ace-save-state" id="navbar-container">
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>
				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<div class="navbar-buttons navbar-header pull-right"
				role="navigation">
				<button style="border: 0 !important;" class="btn btn-primary" 
				onclick="window.location.assign('newshome')">
					<span class="glyphicon glyphicon-log-out"></span>Log out
				</button>
			</div>
		</div>
		<!-- /.navbar-container -->
	</div>
	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
                            try {
                                ace.settings.loadState('main-container')
                            } catch (e) {}

                        </script>

		<div id="sidebar" class="sidebar responsive ace-save-state">
			<script type="text/javascript">
                                try {
                                    ace.settings.loadState('sidebar')
                                } catch (e) {}

                            </script>

			<div class="sidebar-shortcuts" id="sidebar-shortcuts">
				<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
					<button class="btn btn-success">
						<i class="ace-icon fa fa-signal"></i>
					</button>

					<button class="btn btn-info">
						<i class="ace-icon fa fa-pencil"></i>
					</button>

					<button class="btn btn-warning">
						<i class="ace-icon fa fa-users"></i>
					</button>

					<button class="btn btn-danger">
						<i class="ace-icon fa fa-cogs"></i>
					</button>
				</div>

				<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
					<span class="btn btn-success"></span> <span class="btn btn-info"></span>

					<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
				</div>
			</div>
			<!-- /.sidebar-shortcuts -->

			<ul class="nav nav-list">

				<li><a href="home"> <i
						class="menu-icon fa fa-tachometer"></i> <span class="menu-text">Home
							Admin</span>
				</a></li>

				<!-- fa-desktop: là sử dụng font-awesome để lấy các icon -->
				<li class="active"><a href="manage-news"> <i
						class="menu-icon fa fa-file-text"></i> <span class="menu-text">Manage
							News </span>
				</a></li>
				<li><a href="manage-news"> <i class="menu-icon fa fa-users"></i>
						<span class="menu-text">Manage Users </span>
				</a></li>

			</ul>
			<!-- /.nav-list -->

			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i id="sidebar-toggle-icon"
					class="ace-icon fa fa-angle-double-left ace-save-state"
					data-icon1="ace-icon fa fa-angle-double-left"
					data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>
		</div>

		<!--BODY -->
		<c:choose>

			<c:when test="${mode == 'LIST'}">
				<div class="main-content">

					<div class="main-content-inner">
						<div class="breadcrumbs ace-save-state" id="breadcrumbs">
							<ul class="breadcrumb">
								<li><i class="ace-icon fa fa-home home-icon"></i> <a
									href="home">Home</a></li>

								<li><a href="candidate">Manage News</a></li>
							</ul>
						</div>

						<div class="page-content">
							<div class="page-header text-center">
								<b><h1>MANAGE NEWS</h1></b>
							</div>
							<!-- <div class="col-sm-1 col-xs-1"></div>
							<div class="col-sm-5 col-xs-5">
								<h2>NEWS</h2>
							</div>

							<div class="col-sm-1 col-xs-1"></div>

							<div class="col-sm-12 col-xs-12">
								<div class="col-sm-1 col-xs-1"></div>
 -->
								<div class="table-responsive col-sm-12 col-xs-12" Style="height: 600px;">
									<table id="table"
										class="table table-bordered table-striped text-center">
										<thead>
											<tr style="background: skyblue">
												<th class="text-center" >&emsp;&emsp;ID</th>
												<th class="text-center">&emsp;&emsp;HEADDING</th>
												<th class="text-center">&emsp;&emsp;CONTENT</th>
												<th class="text-center">&emsp;&emsp;DATE</th>
												<th class="text-center">&emsp;&emsp;IMAGE</th>
												<th class="text-center">&emsp;&emsp;LINK</th>
												<th class="text-center" style="width: 200px">Action</th>
											</tr>
										</thead>
										<tbody id="myTable">
											<c:forEach var="news" items="${newss}">
												<tr>
													<td>${news.id}</td>
													<td>${news.headding}</td>
													<td>${news.content}</td>
													<td>${news.date}</td>
													<td>${news.image}</td>
													<td>${news.link}</td>
													<td><select style="width: 80px !important; height: 26px !important;" onchange="myFunction(this.value, ${news.id})">
															<option value="0">Option</option>
															<option value="1">Add</option>
															<option value="2">Edit</option>
															<option id="delete" value="3">Delete</option>
													</select></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>

								<div class="col-sm-1 col-xs-1"></div>
								<!-- chọn action -->
								<script type="text/javascript">
                                    function myFunction(val, no) {
                                        if (val == 3) {
                                        	
                                   			var result = confirm("Want to delete news?");
                                   			
                                   			if(result){
                                   				window.location.assign('delete-news?id=' + no)
                                   			}
                                   			else{
                                   				window.location.assign('manage-news')
                                   			}
                                                            
                                        } else if (val == 2) {
                                            window.location.assign('edit-news?id=' + no)
                                        } else if (val == 1) {
                                            window.location.assign('add-news?id=' + no)
                                        }
                                    }

                                </script>
							</div>

						</div>
					</div>
				</div>
			</c:when>


			<c:when test="${mode == 'NEW' ||mode == 'EDIT'}">
				<div class="main-content">

					<div class="main-content-inner">
						<div class="breadcrumbs ace-save-state" id="breadcrumbs">
							<ul class="breadcrumb">
								<li><i class="ace-icon fa fa-home home-icon"></i> <a
									href="home">Home</a></li>

								<li><a href="candidate">Manage NEWS</a></li>
							</ul>
						</div>
					</div>
					<br> <br>
					<div class="page-content">
						<div class="page-header text-center">
							<b><h1>MANAGE NEWS</h1></b>
						</div>
						<div class="col-sm-6 col-xs-6">
							<h2>
								<c:out value="${mode}"></c:out>
								NEWS
							</h2>
						</div>
						<div class="col-sm-5 col-xs-5"></div>
						<div class="col-sm-1 col-xs-1"></div>

						<br> <br> <br> <br> <br>
						<div class="col-sm-12 col-xs-12">
							<form action="save-news" method="POST"
								style="align-items: center;">
								<p>
									<strong>News Information</strong>
								</p>
								<div class="form-group col-sm-6">
									<span>Id:</span><input class="form-control" type="text" name="id" value="${newss.id}" />
								</div>
								
								<div class="form-group col-sm-6">
									<span>Headding:</span> <input style="width: 230px;"
										class="form-control" type="text" name="headding"
										value="${newss.headding }" id="headding" required>
								</div>

							
								<div class="form-group col-sm-12">
									<span>Content:</span>
									
									<textarea style="width: 230px;"
										type="text" name="content" id="content">${newss.content }	</textarea>
								</div>
								<div class="form-group col-sm-6">
									<span>Date:</span> <input style="width: 230px;" type="date"
										class="form-control" name="date" value="${newss.date }"
										id="date" required>
								</div>
								
								<div class="form-group col-sm-6">
									<span>Image:</span> <br> <input style="width: 230px;"
										type="file" name="image" value="${newss.image }" id="image">
								</div>
								
								<div class="form-group col-sm-12">
									<span>Link:</span> <br>
									 <%-- <input style="width: 230px;"
										type="text" name="link" value="${newss.link }" id="link"
										required> --%>
										
									<textarea style="width: 230px;"
										type="text" name="link" value="${newss.link }" id="link"
										required>	</textarea>
								</div>

								<div class="col-sm-4 col-xs-12">
									<button style="border: 0 !important; width: 320px;"
										type="submit" class="btn btn-success btn-block">
										<span class="glyphicon glyphicon-ok"></span> Save
									</button>
								</div>

								<div class="col-sm-4 col-xs-12">
									<button
										style="border: 0 !important; width: 320px;"
										type="reset" class="btn btn-danger btn-block">
										<span class="glyphicon glyphicon-remove"></span> Reset
									</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</c:when>

		</c:choose>

		<!-- /.page-content -->
	</div>


	<!-- /.main-content -->

	<%--          <jsp:include page="Footer.jsp" /> --%>

	<div class="footer">
		<div class="footer-inner">
			<div class="footer-content">
				<span class="bigger-120"> <span class="blue bolder">HCMUTE</span>
					Application &copy; 2016-2017
				</span> &nbsp; &nbsp; <span class="action-buttons"> <a href="#">
						<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
				</a> <a href="#"> <i
						class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
				</a> <a href="#"> <i
						class="ace-icon fa fa-rss-square orange bigger-150"></i>
				</a>
				</span>
			</div>
		</div>
	</div>


	<a href="#" id="btn-scroll-up"
		class="btn-scroll-up btn btn-sm btn-inverse"> <i
		class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
	</a>
	<script>
                // Replace the <textarea id="editor1"> with a CKEditor
                // instance, using default configuration.
                CKEDITOR.replace( 'content' );
                CKEDITOR.replace( 'link' );
            </script>

	<!-- /.main-container -->
</body>

</html>
