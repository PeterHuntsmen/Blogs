<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManagerLogin.aspx.cs" Inherits="ManagerLogin" %>

<!DOCTYPE html>

<html>
  <head>
	<title>Login</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">
</head>
<body class="templatemo-bg-gray">
	<div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">Manager Login</h1>
			<form class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" runat="server" method="post">				
		        <div class="form-group">
		          <div class="col-xs-12">
		            <div class="control-wrapper">
		            	<label for="username" class="control-label fa-label"><i class="fa fa-user fa-medium"></i></label>
		            	<input type="text" class="form-control" name="username" placeholder="Username">
		            </div>		            	            
		          </div>              
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		            	<label for="password" class="control-label fa-label"><i class="fa fa-lock fa-medium"></i></label>
		            	<input type="password" class="form-control" name="password" placeholder="Password">
		            </div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		          		<input type="submit" value="Login" class="btn btn-info">
		          		<a href="Login.aspx" class="text-right pull-right">User Login</a>
		          	</div>
		          </div>
		        </div>
		      </form>
		</div>
	</div>
</body>
</html>