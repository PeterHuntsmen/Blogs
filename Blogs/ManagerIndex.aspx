<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>
<%string user_id = Session["user"].ToString();
    BlogsDB db = new BlogsDB();
    List<Blogs> b = db.Display(user_id);
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>Admin</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<!-- STYLESHEETS --><!--[if lt IE 9]><script src="js/flot/excanvas.min.js"></script><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->
	<link rel="stylesheet" type="text/css" href="css/cloud-admin.css" >
	<link rel="stylesheet" type="text/css"  href="css/themes/default.css" id="skin-switcher" >
	<link rel="stylesheet" type="text/css"  href="css/responsive.css" >
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- ANIMATE -->
	<link rel="stylesheet" type="text/css" href="css/animatecss/animate.min.css" />
	<!-- DATE RANGE PICKER -->
	<link rel="stylesheet" type="text/css" href="js/bootstrap-daterangepicker/daterangepicker-bs3.css" />
	<!-- TODO -->
	<link rel="stylesheet" type="text/css" href="js/jquery-todo/css/styles.css" />
	<!-- FULL CALENDAR -->
	<link rel="stylesheet" type="text/css" href="js/fullcalendar/fullcalendar.min.css" />
	<!-- GRITTER -->
	<link rel="stylesheet" type="text/css" href="js/gritter/css/jquery.gritter.css" />
	<!-- FONTS -->
	<link href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- DATE RANGE PICKER -->
	<link rel="stylesheet" type="text/css" href="js/bootstrap-daterangepicker/daterangepicker-bs3.css" />
	<!-- UNIFORM -->
	<link rel="stylesheet" type="text/css" href="js/uniform/css/uniform.default.min.css" />
	<!-- INBOX CSS -->
	<link rel="stylesheet" href="css/inbox.css">
	<!-- FONTS -->
	<link href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
    </head>
<body>
	<form id="form1" runat="server">
	<!-- HEADER -->
    <header class="navbar clearfix" id="header">
        <div class="container">
            <div class="navbar-brand">
                <!-- COMPANY LOGO -->
                <a href="Index.aspx">
                    <img src="" alt="Cloud Admin Logo" class="img-responsive" height="30" width="120">
                </a>
                <!-- /COMPANY LOGO -->
                <!-- SIDEBAR COLLAPSE -->
                <div id="sidebar-collapse" class="sidebar-collapse btn">
                    <i class="fa fa-bars"
                       data-icon1="fa fa-bars"
                       data-icon2="fa fa-bars"></i>
                </div>
                <!-- /SIDEBAR COLLAPSE -->
            </div>
            <!-- NAVBAR LEFT -->
            <ul class="nav navbar-nav pull-left hidden-xs" id="navbar-left">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-cog"></i>
                        <span class="name">Skins</span>
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu skins">
                        <li class="dropdown-title">
                            <span><i class="fa fa-leaf"></i> Theme Skins</span>
                        </li>
                        <li><a href="#" data-skin="default">Subtle (default)</a></li>
                        <li><a href="#" data-skin="night">Night</a></li>
                        <li><a href="#" data-skin="earth">Earth</a></li>
                        <li><a href="#" data-skin="utopia">Utopia</a></li>
                        <li><a href="#" data-skin="nature">Nature</a></li>
                        <li><a href="#" data-skin="graphite">Graphite</a></li>
                    </ul>
                </li>
            </ul>
            <!-- /NAVBAR LEFT -->
            <!-- BEGIN TOP NAVIGATION MENU -->
            <ul class="nav navbar-nav pull-right">
                <!-- BEGIN NOTIFICATION DROPDOWN -->
                <li class="dropdown" id="header-notification">

                    <ul class="dropdown-menu notification"></ul>
                </li>
                <!-- END NOTIFICATION DROPDOWN -->
                <!-- BEGIN INBOX DROPDOWN -->
                <li class="dropdown" id="header-message">

                </li>
                <!-- END INBOX DROPDOWN -->
                <!-- BEGIN TODO DROPDOWN -->
                <li class="dropdown" id="header-tasks">


                </li>
                <!-- END TODO DROPDOWN -->
                <!-- BEGIN USER LOGIN DROPDOWN -->
                <li class="dropdown user" id="header-user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img alt="" src="img/avatars/avatar3.jpg" />
                        <span class="username"><%= Session["user"]%></span>
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="Login.aspx"><i class="fa fa-power-off"></i> Log Out</a></li>
                    </ul>
                </li>
                <!-- END USER LOGIN DROPDOWN -->
            </ul>
            <!-- END TOP NAVIGATION MENU -->
        </div>
    </header>
	<!--/HEADER -->
	
	<!-- PAGE -->
	<section id="page">
				<!-- SIDEBAR -->
				<div id="sidebar" class="sidebar">
					<div class="sidebar-menu nav-collapse">
						<div class="divide-20"></div>
						<!-- SIDEBAR MENU -->
						<ul>
							<li class="active">
								<a href="Index.aspx">
								<span class="menu-text">主页</span>
								<span class="selected"></span>
								</a>					
							</li>
							<%--<li><a class="" href="WriteBlog.aspx"><span class="menu-text">新建博客</span></a></li>--%>
						</ul>
						<!-- /SIDEBAR MENU -->
					</div>
				</div>
				<!-- /SIDEBAR -->
		<div id="main-content">
			<div class="container">
				<div class="row">
					<div id="content" class="col-lg-12">
						<!-- PAGE HEADER-->
						<div class="row">
							<div class="col-sm-12">
								<div class="page-header">
									<!-- STYLER -->
									
									<!-- /STYLER -->
									<!-- BREADCRUMBS -->
									<!-- /BREADCRUMBS -->
									<div class="clearfix">
										
									</div>
								
								</div>
							</div>
						</div>
						<!-- /PAGE HEADER -->
						<!-- INBOX -->
						<div class="row">
							<div class="col-md-12">
								<!-- BOX -->
								<div class="box border">
									<div class="box-title">
										<h4>Blog</h4>
										<div class="tools">
											<a href="javascript:;" class="reload">
												<i class="fa fa-refresh"></i>
											</a>
											<a href="javascript:;" class="collapse">
												<i class="fa fa-chevron-up"></i>
											</a>
										</div>
									</div>
									<div class="box-body">
										<!-- TOP ROW -->
										<div class="emailHeader row">
											<div class="emailTitle">
											  <div class="col-md-10">
											  <asp:DataList ID="DataList1" runat="server" DataKeyField="blog_id" DataSourceID="SqlDataSource1">
                                            <ItemTemplate>
                                                博客号:
                                                <asp:Label ID="blog_idLabel" runat="server" Text='<%# Eval("blog_id") %>' />
                                                <br />
                                                blog_date:
                                                <asp:Label ID="blog_dateLabel" runat="server" Text='<%# Eval("blog_date") %>' />
                                                <br />
                                                blog_title:
                                                <asp:Label ID="blog_titleLabel" runat="server" Text='<%# Eval("blog_title") %>' />
                                                <br />
                                                blog_body:
                                                <asp:Label ID="blog_bodyLabel" runat="server" Text='<%# Eval("blog_body") %>' />
                                                <br />
                                                user_id:
                                                <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                                                <br />
                                                <br />
                                                <asp:Button ID="Button1" runat="server" Text="删除" />
                                            </ItemTemplate>
                                        </asp:DataList>
                                                  
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BlogsConnectionString %>" SelectCommand="SELECT [blog_id], [blog_date], [blog_title], [blog_body], [user_id] FROM [blogs]"></asp:SqlDataSource>
										<hr>	  
									
											  </div>
                                             
										   </div>
										</div>
										<!-- /TOP ROW -->
										
										<!-- INBOX -->
										<%--<div class="row email">
											<div id="list-toggle" class="col-md-2">
											<ul class="list-unstyled">
												<li class="composeBtn">
													 <a href="javascript:;" data-title="Compose" class="btn btn-danger"> 
														Compose
													 </a>
												 </li>
											</ul>
											   <ul class="emailNav nav nav-pills nav-stacked margin-bottom-10">									
												  <li class="inbox active" >
													 <a href="javascript:;" data-title="Inbox">
														<i class="fa fa-inbox fa-fw"></i> 博客
													 </a>
												  </li>
											   </ul>
											</div>--%>
											<div class="col-md-10">
											   <div class="emailContent"></div>
											</div>
										</div>
										<!-- /INBOX -->
									</div>
								</div>
								<!-- /BOX -->
							</div>
						</div>
						<!-- /INBOX -->
						<div class="footer-tools">
							<span class="go-top">
								<i class="fa fa-chevron-up"></i> Top
							</span>
						</div>
					</div><!-- /CONTENT-->
				</div>
			</div>
		</div>
	</section>
	<!--/PAGE -->
	<!-- JAVASCRIPTS -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- JQUERY -->
	<script src="js/jquery/jquery-2.0.3.min.js"></script>
	<!-- JQUERY UI-->
	<script src="js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
	<!-- BOOTSTRAP -->
	<script src="bootstrap-dist/js/bootstrap.min.js"></script>
	<!-- LESS CSS -->
	<script src="js/lesscss/less-1.4.1.min.js" type="text/javascript"></script>	
	<!-- DATE RANGE PICKER -->
	<script src="js/bootstrap-daterangepicker/moment.min.js"></script>
	<script src="js/bootstrap-daterangepicker/daterangepicker.min.js"></script>
	<!-- SLIMSCROLL -->
	<script type="text/javascript" src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js"></script><script type="text/javascript" src="js/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js"></script>
	<!-- BLOCK UI -->
	<script type="text/javascript" src="js/jQuery-BlockUI/jquery.blockUI.min.js"></script>
	<!-- UNIFORM -->
	<script type="text/javascript" src="js/uniform/jquery.uniform.min.js"></script>
	<!-- BOOTSTRAP WYSIWYG -->
	<script type="text/javascript" src="js/bootstrap-wysiwyg/jquery.hotkeys.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-wysiwyg/bootstrap-wysiwyg.min.js"></script>
	<!-- COOKIE -->
	<script type="text/javascript" src="js/jQuery-Cookie/jquery.cookie.min.js"></script>
	<!-- CUSTOM SCRIPT -->
	<script src="js/script.js"></script>
	<script src="js/inbox.js"></script>
	<script>
		jQuery(document).ready(function() {		
			App.setPage("inbox");  //Set current page
			App.init(); //Initialise plugins and elements
			Inbox.init();
		});
	</script>
	<!-- /JAVASCRIPTS -->
    </form>
</body>
</html>