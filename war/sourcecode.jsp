<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8"> 
    <title>CRUD Example</title>
     
    <link href="/css/bootstrap.css" rel="stylesheet"> 
    <style type="text/css"> 
      	
      	html, body {
        	background-color: #eee;
      	}
      	body {
        	padding-top: 40px;
      	}
      	
      	.container > footer p {
        	text-align: center;
      	}
      	
      	.container {
        	width: 820px;
      	}
 
      /* The white background content wrapper */
      .container > .content {
        background-color: #fff;
        padding: 20px;
        margin: 0 -20px; /* negative indent the amount of the padding to maintain the grid system */
        -webkit-border-radius: 0 0 6px 6px;
           -moz-border-radius: 0 0 6px 6px;
                border-radius: 0 0 6px 6px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.15);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.15);
                box-shadow: 0 1px 2px rgba(0,0,0,.15);
      }
 
      /* Page header tweaks */
      .page-header {
        background-color: #f5f5f5;
        padding: 20px 20px 10px;
        margin: -20px -20px 20px;
      }
 
      /* Styles you shouldn't keep as they are for displaying this base example only */
      .content .span10,
      .content .span4 {
        min-height: 200px;
      }
      /* Give a quick and non-cross-browser friendly divider */
      .content .span4 {
        margin-left: 0;
        padding-left: 19px;
        border-left: 1px solid #eee;
      }
 
      .topbar .btn {
        border: 0;
      }
 
    </style>
</head>
<body>
	<div class="topbar"> 
      <div class="fill"> 
        <div class="container"> 
          <a class="brand" href="/">CRUD Example</a> 
          <ul class="nav"> 
            <li class="active"><a href="home.jsp">Home</a></li> 
            <li><a href="customer.jsp">Customer</a></li>  
          </ul>  
        </div> 
      </div> 
    </div> 
 
    <div class="container"> 
 
      <div class="content"> 
        <div class="page-header"> 
          <h1>Home Page</h1> 
        </div> 
        <div class="row"> 
          <div class="span10"> 
            <h2>Source Code</h2>
            
            <br/>
            
          </div> 
        </div> 
      </div> 
 
      <footer> 
        <p> &copy; Hendry Suwanda 2011</p> 
      </footer> 
 
    </div> <!-- /container -->
</body>
</html>