<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WriteBlog.aspx.cs" Inherits="WriteBlog" %>

<!DOCTYPE html>
<html lang="en"><head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>Blog</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<!-- STYLESHEETS --><!--[if lt IE 9]><script src="js/flot/excanvas.min.js"></script><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->
	<link rel="stylesheet" type="text/css" href="css/cloud-admin.css">
	<link rel="stylesheet" type="text/css" href="css/themes/default.css" id="skin-switcher">
	<link rel="stylesheet" type="text/css" href="css/responsive.css">
	
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- DATE RANGE PICKER -->
	<link rel="stylesheet" type="text/css" href="js/bootstrap-daterangepicker/daterangepicker-bs3.css">
	<!-- CKEDITOR -->
	<!-- <link rel="stylesheet" type="text/css" href="js/ckeditor/css/sample.css"> -->
	<!-- MARKDOWN -->
	<link rel="stylesheet" type="text/css" href="js/bootstrap-markdown/css/bootstrap-markdown.min.css">
	<!-- FONTS -->
	<link href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" type="text/css">
<style>.cke{visibility:hidden;}</style><script type="text/javascript" src="http://localhost:49537/js/ckeditor/config.js?t=D8AD"></script><link rel="stylesheet" type="text/css" href="http://localhost:49537/js/ckeditor/skins/moono/editor.css?t=D8AD"><script type="text/javascript" src="http://localhost:49537/js/ckeditor/lang/zh-cn.js?t=D8AD"></script><script type="text/javascript" src="http://localhost:49537/js/ckeditor/styles.js?t=D8AD"></script></head>
<body>
	<!-- HEADER -->
	<header class="navbar clearfix" id="header">
        <div class="container">
            <div class="navbar-brand">
                <!-- COMPANY LOGO -->
                <a href="Index.aspx">
                    <img src="img/logo/logo.png" alt="Cloud Admin Logo" class="img-responsive" height="30" width="120">
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
                        <span class="username"><%=Session["user"] %></span>
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
							<li><a class="" href="Index.aspx"><span class="menu-text">主页</span></a></li>
							<li class="active">
                                <a href="WriteBlog.aspx">
                                <span class="menu-text">新建博客</span>
                                <span class="selected"></span>
                                </a>
							</li>
                            <li><a class="" href="Delete.aspx"><span class="menu-text">删除微博</span></a></li>
						</ul>
						<!-- /SIDEBAR MENU -->
					</div>
				</div>
				<!-- /SIDEBAR -->
		<div id="main-content">
			<!-- SAMPLE BOX CONFIGURATION MODAL FORM-->
			<div class="modal fade" id="box-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
				  <div class="modal-content">
					<div class="modal-header">
					  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					  <h4 class="modal-title">Box Settings</h4>
					</div>
					<div class="modal-body">
					  Here goes box setting content.
					</div>
					<div class="modal-footer">
					  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					  <button type="button" class="btn btn-primary">Save changes</button>
					</div>
				  </div>
				</div>
			  </div>
			<!-- /SAMPLE BOX CONFIGURATION MODAL FORM-->
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
									<ul class="breadcrumb">
									</ul>
									<!-- /BREADCRUMBS -->
									<div class="clearfix">
										<h3 class="content-title pull-left">新建博客</h3>
									</div>
								</div>
							</div>
						</div>
						<!-- /PAGE HEADER -->
                        <div>

                        </div>
						<!-- BOOTSTRAP WYSIWYG -->
						<div class="row">
							<div class="col-md-12">
								<!-- BOX -->
                                <div class="box-body">
								    <form runat="server" runat="server" method="post">
                                        <div class="form-group">
		                                    <div class="col-xs-12">
		                                        <div class="control-wrapper">
		            	                            <%--<label for="blog_title" class="control-label fa-label"><i class="fa fa-user fa-medium"></i></label>--%>
		            	                            <input type="text" class="form-control" name="blog_title" placeholder="Blog Title">
		                                        </div>		            	            
		                                    </div>              
		                                </div>
								        <div class="box border green">
									<div class="box-title">
										<h4><i class="fa fa-pencil-square-o"></i>新建博客</h4>
										<div class="tools hidden-xs">
											<a href="#box-config" data-toggle="modal" class="config">
												<i class="fa fa-cog"></i>
											</a>
											<a href="javascript:;" class="reload">
												<i class="fa fa-refresh"></i>
											</a>
											<a href="javascript:;" class="collapse">
												<i class="fa fa-chevron-up"></i>
											</a>
											<a href="javascript:;" class="remove">
												<i class="fa fa-times"></i>
											</a>
										</div>
									</div>
									<div class="box-body">
										<div id="alerts"></div>
										<div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">
										  <div class="btn-group">
											<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" title="" data-original-title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
											  <ul class="dropdown-menu">
											  <li><a data-edit="fontName Serif" style="font-family:'Serif'">Serif</a></li><li><a data-edit="fontName Sans" style="font-family:'Sans'">Sans</a></li><li><a data-edit="fontName Arial" style="font-family:'Arial'">Arial</a></li><li><a data-edit="fontName Arial Black" style="font-family:'Arial Black'">Arial Black</a></li><li><a data-edit="fontName Courier" style="font-family:'Courier'">Courier</a></li><li><a data-edit="fontName Courier New" style="font-family:'Courier New'">Courier New</a></li><li><a data-edit="fontName Comic Sans MS" style="font-family:'Comic Sans MS'">Comic Sans MS</a></li><li><a data-edit="fontName Helvetica" style="font-family:'Helvetica'">Helvetica</a></li><li><a data-edit="fontName Impact" style="font-family:'Impact'">Impact</a></li><li><a data-edit="fontName Lucida Grande" style="font-family:'Lucida Grande'">Lucida Grande</a></li><li><a data-edit="fontName Lucida Sans" style="font-family:'Lucida Sans'">Lucida Sans</a></li><li><a data-edit="fontName Tahoma" style="font-family:'Tahoma'">Tahoma</a></li><li><a data-edit="fontName Times" style="font-family:'Times'">Times</a></li><li><a data-edit="fontName Times New Roman" style="font-family:'Times New Roman'">Times New Roman</a></li><li><a data-edit="fontName Verdana" style="font-family:'Verdana'">Verdana</a></li></ul>
											</div>
										  <div class="btn-group">
											<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" title="" data-original-title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
											  <ul class="dropdown-menu">
											  <li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
											  <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
											  <li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
											  </ul>
										  </div>
										  <div class="btn-group">
											<a class="btn btn-default" data-edit="bold" title="" data-original-title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
											<a class="btn btn-default" data-edit="italic" title="" data-original-title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
											<a class="btn btn-default" data-edit="strikethrough" title="" data-original-title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
											<a class="btn btn-default" data-edit="underline" title="" data-original-title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
										  </div>
										  <div class="btn-group">
											<a class="btn btn-default" data-edit="insertunorderedlist" title="" data-original-title="Bullet list"><i class="fa fa-list-ul"></i></a>
											<a class="btn btn-default" data-edit="insertorderedlist" title="" data-original-title="Number list"><i class="fa fa-list-ol"></i></a>
											<a class="btn btn-default" data-edit="outdent" title="" data-original-title="Reduce indent (Shift+Tab)"><i class="fa fa-outdent"></i></a>
											<a class="btn btn-default" data-edit="indent" title="" data-original-title="Indent (Tab)"><i class="fa fa-indent"></i></a>
										  </div>
										  <div class="btn-group">
											<a class="btn btn-default" data-edit="justifyleft" title="" data-original-title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
											<a class="btn btn-default" data-edit="justifycenter" title="" data-original-title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
											<a class="btn btn-default" data-edit="justifyright" title="" data-original-title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
											<a class="btn btn-default" data-edit="justifyfull" title="" data-original-title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
										  </div>
										  <div class="btn-group">
											  <a class="btn btn-default dropdown-toggle" data-toggle="dropdown" title="" data-original-title="Hyperlink"><i class="fa fa-link"></i></a>
												<div class="dropdown-menu input-append">
													<input class="span2" placeholder="URL" type="text" data-edit="createLink">
													<button class="btn btn-default" type="button">Add</button>
											</div>
											<a class="btn btn-default" data-edit="unlink" title="" data-original-title="Remove Hyperlink"><i class="fa fa-scissors"></i></a>

										  </div>
										  
										  <div class="btn-group">
											<a class="btn btn-default" title="" id="pictureBtn" data-original-title="Insert picture (or just drag &amp; drop)"><i class="fa fa-picture-o"></i></a>
											<input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" style="opacity: 0; position: absolute; top: 0px; left: 0px; width: 41px; height: 34px;">
										  </div>
										  <div class="btn-group">
											<a class="btn btn-default" data-edit="undo" title="" data-original-title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
											<a class="btn btn-default" data-edit="redo" title="" data-original-title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
										  </div>
										  <input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="" style="display: none;">
										</div>
										<input id="editor" contenteditable="true" type="text" class="form-control" name="editor" placeholder="Go ahead…"/>
                                        
									</div>
								</div>
								        <hr/>
			    					    <button type="submit" class="btn btn-default">Submit</button>
								    </form> 
								</div>
                                <!-- /BOX -->
							</div>
						</div>
						<!-- BOOTSTRAP WYSIWYG -->
						
						<!-- ROW 2 -->
						
						<!-- /ROW 2 -->
						
						<!-- ROW 3 -->
						
						<!-- /ROW 2 -->
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
	
		
	<!-- DATE RANGE PICKER -->
	<script src="js/bootstrap-daterangepicker/moment.min.js"></script>
	
	<script src="js/bootstrap-daterangepicker/daterangepicker.min.js"></script>
	<!-- SLIMSCROLL -->
	<script type="text/javascript" src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js"></script><script type="text/javascript" src="js/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js"></script>
	<!-- MARKDOWN -->
	<script type="text/javascript" src="js/bootstrap-markdown/js/markdown.js"></script>
	<script type="text/javascript" src="js/bootstrap-markdown/js/to-markdown.js"></script>
	<script type="text/javascript" src="js/bootstrap-markdown/js/bootstrap-markdown.min.js"></script>
	<!-- BLOCK UI -->
	<script type="text/javascript" src="js/jQuery-BlockUI/jquery.blockUI.min.js"></script>
	<!-- BOOTSTRAP WYSIWYG -->
	<script type="text/javascript" src="js/bootstrap-wysiwyg/jquery.hotkeys.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-wysiwyg/bootstrap-wysiwyg.min.js"></script>
	<!-- CKEDITOR -->
	<script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>
	<!-- COOKIE -->
	<script type="text/javascript" src="js/jQuery-Cookie/jquery.cookie.min.js"></script>
	<!-- CUSTOM SCRIPT -->
	<script src="js/script.js"></script>
	<script>
		jQuery(document).ready(function() {		
			App.setPage("rich_text_editors");  //Set current page
			App.init(); //Initialise plugins and elements
		});
	</script>
	<!-- /JAVASCRIPTS -->

</body></html>
