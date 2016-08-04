<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">
 
<!-- If IE use the latest rendering engine -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
 
<!-- Set the page to the width of the device and set the zoon level -->

<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
   	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Ugly Library--Edit Account</title>
<style>
.jumbotron{
    background-color:#681A74;
    color:white;
}

</style>

</head>
<body>

<div class="container">

<div class="jumbotron">
<h1><center>Edit Your Account</center></h1>
</div>

<form action="editaccount.html" method="post">
<div class="input-group input-group-lg">
  <span class="input-group-addon">Username</span>
  <input type="text" class="form-control" name="username" placeholder="Username">
</div><br>
<div class="input-group input-group-lg">
  <span class="input-group-addon">Password</span>
  <input type="text" class="form-control" name="password" placeholder="Case Sensative">
</div><br>
<button type="submit" name="submit" class="btn btn-lg btn-default">Submit</button>
</form>

<hr>

<footer>
<div class="row">
<div class="col-lg-12">
<p>Copyright © Zhengxu Li 2016</p>
</div>
<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
</footer>

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


</body>
</html>