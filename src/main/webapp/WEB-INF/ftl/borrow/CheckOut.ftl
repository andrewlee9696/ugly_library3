<?xml version="1.0" encoding="utf-8" ?>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">

<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
   	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Ugly Library--Check Out</title>
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
<h1><center>Book Check Out</center></h1>
<p><center>Um, You sure you wanna borrow books from us?</center></p>
</div>

<div>

<table class="table">
  
<thead class="thead-inverse">
	<tr><th>BookID</th><th>Title</th><th>Author</th><th>Publisher</th></tr>
 </thead>
  
<tbody>

<#list models["cartBooks"] as entry>
  <tr>
    <td>${entry.bookID}</td>
    <td>${entry.title}</td>
    <td>${entry.author.author}</td>
    <td>${entry.publisher.publisher}</td>
  </tr>
</#list>

</tbody>
</table>

<p><center><a href="SubmitCheckout.html" class="btn btn-lg btn-default" role="button">Submit Check Out</a></center></p>

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