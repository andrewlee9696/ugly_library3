<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">
 
<!-- If IE use the latest rendering engine -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
 
<!-- Set the page to the width of the device and set the zoon level -->

<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
   	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Ugly Library--Book List</title>
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
<h1><center>Book List</center></h1>
<p><center>Oh yeah! We have very limited quantity of books!</center></p>
</div>

<div>

<table class="table">
  
<thead class="thead-inverse">
  <tr><th>BookID</th><th>Title</th><th>Author</th><th>Publisher</th><th>Catagory</th><th>Available</th><th>Type</th><th>Operations</th></tr>
</thead>
  
<tbody>
<c:forEach items="${books}" var="entry">
  <tr>
    <td>${entry.bookID}</td>
    <td>${entry.title}</td>
    <td>${entry.author.author}</td>
    <td>${entry.publisher.publisher}</td>
    <td>${entry.catagory.catagory}</td>
    <td>${entry.remaining_number}</td>
    <td>${entry.type}</td>
    <td><a href="AddToCart.html?bookID=${entry.bookID}">Add To Cart</a></td>
  </tr>
</c:forEach>
</tbody>
</table>

<p><center><a href="Checkout.html" class="btn btn-lg btn-default" role="button">Check Out</a></center></p>

</div>

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