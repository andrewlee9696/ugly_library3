<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">

<title>Ugly Library--Main Page</title>
<style>
.jumbotron{
    background-color:#681A74;
    color:white;
}
.block--50 {
    float: left;
    padding-right: 15px;
    margin:5px
}
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
 }
 #myCarousel {
  height: 500px;
  width: 570px;
  overflow: hidden;
}
</style>

<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>  	

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<body>

<div class="container">

<div class="jumbotron">
<h1><center>Ugly Library</center></h1>
<p><center>Sure! We are UGLY!</center></p>

</div>

<div>
<section class="block-container">
<div class="block--50">
<div class="dropdown">
  <button class="btn btn-primary dropdown-toggle btn-lg" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Resources&Research
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
 
    <li class="dropdown-header">Resources</li>
    <li><a href="#">Articles&Databases</a></li>
    <li><a href="#">Multimedia</a></li>
    <li><a href="#">Image</a></li>
    <li><a href="#">Journals</a></li>
    <!-- Seperates content in menu -->
    <li role="separator" class="divider"></li>
    <li class="dropdown-header">Research</li>
    <li><a href="#">Ask a Librarian</a></li>
    <li><a href="#">Citation Tool</a></li>
    <li><a href="#">Data Services</a></li>
  </ul>
</div>
</div>

<div class="block--50">
<div class="dropdown">
  <button class="btn btn-primary dropdown-toggle btn-lg" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Services
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
 
    <li class="dropdown-header">Services</li>
    <li><a href="#">Data Services</a></li>
    <li><a href="#">Student Services</a></li>
    <li><a href="#">Faculty Services</a></li>
    <li><a href="#">Global Services</a></li>
  </ul>
</div>
</div>

<div class="block--50">
<div class="dropdown">
  <button class="btn btn-primary dropdown-toggle btn-lg" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Help
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
 
    <li class="dropdown-header">Help</li>
    <li><a href="#">Ask a Librarian</a></li>
    <li><a href="#">F&Q</a></li>
    <li><a href="#">Library Classes</a></li>
    <li><a href="#">Contact</a></li>
  </ul>
</div>
</div>

<div class="block--50">
<div class="dropdown">
  <button class="btn btn-primary dropdown-toggle btn-lg" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    About
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
 
    <li class="dropdown-header">About</li>
    <li><a href="#">Brief Introduction</a></li>
    <li><a href="#">History of NYU Libraries</a></li>
    <li><a href="#">Staff</a></li>
    <li><a href="#">Hours&Acess</a></li>
  </ul>
</div>
</div>

<div class="block--50">
<div class="dropdown">
  <button class="btn btn-primary dropdown-toggle btn-lg" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Contact Us
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
 
    <li class="dropdown-header">Services</li>
    <li><a href="#">Data Services</a></li>
    <li><a href="#">Student Services</a></li>
    <li><a href="#">Faculty Services</a></li>
    <li><a href="#">Global Services</a></li>
  </ul>
</div>
</div>

<div class="block--50">
<div class="dropdown">
  <button class="btn btn-primary dropdown-toggle btn-lg" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    More
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
 
    <li class="dropdown-header">Services</li>
    <li><a href="#">Data Services</a></li>
    <li><a href="#">Student Services</a></li>
    <li><a href="#">Faculty Services</a></li>
    <li><a href="#">Global Services</a></li>
  </ul>
</div>
</div>

</section>
</div><br/><br/><br/>


<div class="row">

<div class="col-md-8">
	
  <div class="well">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="http://www.exorcising-ghosts.co.uk/images/HM%20-%201Q84%20(1&2)%20UK%202011.jpg" alt="1Q84" >
      </div>

      <div class="item">
        <img src="https://images-na.ssl-images-amazon.com/images/I/51k6n6ma-NL.jpg" alt="Chania">
      </div>
    
      <div class="item">
        <img src="http://news.xinhuanet.com/book/2006-08/30/xinsrc_5820803301048390493512.jpg" alt="Flower">
      </div>

      <div class="item">
        <img src="http://gingkopress.com/wp/wp-content/uploads/product_images/mcluhan-on-the-nature-of-media/c01.jpg" alt="Flower">
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>


</div>

<!-- Blog Sidebar Widgets Column -->
<div class="col-md-4">

<div class="well">
<h4>Search</h4>
<div class="input-group">
<input type="text" class="form-control">
<span class="input-group-btn">
<button class="btn btn-default" type="button">
<span class="glyphicon glyphicon-search"></span>
</button>
</span>
</div>
 <!-- /.input-group -->
 </div>

<!-- Blog Categories Well -->
<div class="well">
<h4>My Workspace</h4>
<div class="row">
<div class="col-lg-6">

<div class="btn-group-vertical">
  <a href="/ugly_library3/borrow/list.html" class="btn btn-lg btn-default" role="button">Borrow Books</a>
  <a href="/ugly_library3/return/returnBooks.html" class="btn btn-lg btn-default" role="button">Return Books</a>
  <a href="editaccount.html" class="btn btn-lg btn-default" role="button">Edit Account</a>
  <a href="signout.html" class="btn btn-lg btn-default" role="button">Sign Out</a>
</div>
</div>
</div>
</div>

<div class="well">
<div class="wrapper">

<div id="accordion">
<h4>1Q84
</h4>
<div>
1Q84 is a novel by Haruki Murakami, first published in three volumes in Japan in 2009–10.[1] The novel quickly became a sensation, with its first printing selling out the day it was released, and reaching sales of one million within a month
</div>
<h4>A Dream of Red Mansions</h4>
<div>Dream of the Red Chamber, also called The Story of the Stone, composed by Cao Xueqin, is one of China's Four Great Classical Novels. It was written sometime in the middle of the 18th century during the Qing Dynasty.
</div>
<h4>Orientalism</h4>
<div>
Orientalism is a 1978 book by Edward W. Said, in which Said studies the cultural representations that are the bases of Orientalism, the West's patronizing perceptions and fictional depictions of "The East" — the societies and peoples who inhabit the places of Asia, North Africa, and the Middle East. </div>
</div>
</div>
<script type="text/javascript">

$(document).ready(function() {

  $("#accordion").accordion({
    // Slide animation or not or length
    animate: 1500,
    // Starting tab
    active: 1,
    // Collapsible if same tab is clicked
    collapsible: true,
    // Event that triggers
    event: "click",
    // Height based on content (content) or largest (auto)
    heightStyle: "content"
  }); 

});
</script>
</div>
</div>
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

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>
</html>