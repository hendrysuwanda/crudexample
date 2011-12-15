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
            <li ><a href="home.jsp">Home</a></li> 
            <li class="active"><a href="/contact">Contacts</a></li>
          </ul>  
        </div> 
      </div> 
    </div> 
 
    <div class="container"> 
 
      <div class="content"> 
        <div class="page-header"> 
          <h1>Delete Contact</h1> 
        </div> 
        <div class="row"> 
          <div class="span10">
          	    <div class="alert-message error">
				    <p><strong>Delete!</strong> Are you sure to delete this data.</p>
			    </div> 
            <form method="post" action="/contact/delete">
            	<input type="hidden" id="code" name="code" value="${contact.code }"/>
		        <fieldset>
		        	<div class="clearfix">
			            <label>First Name</label>
			            <div class="input">
			              	<span class="uneditable-input">${contact.firstName }</span>
			            </div>
			        </div>
          			<div class="clearfix">
			            <label>Last Name</label>
			            <div class="input">
			              	<span class="uneditable-input">${contact.lastName } </span>
			            </div>
			        </div>
          			
          			<div class="clearfix">
			            <label>Sex</label>
			            <div class="input">
			              	<span class="uneditable-input">${contact.sex} </span>
			            </div>
			        </div>
          			
          			<div class="clearfix">
			            <label>Phone</label>
			            <div class="input">
			              	<span class="uneditable-input">${contact.phone }</span>
			            </div>
			        </div>
          			<div class="clearfix">
			            <label>Email</label>
			            <div class="input">
			              	<span class="uneditable-input">${contact.email }</span>
			            </div>
			        </div>
					<div class="well">
						<input type="submit" class="btn danger" value="Delete">&nbsp;<button type="reset" class="btn" onclick="location.href='/contact'">Cancel</button>
					</div>
        		</fieldset>
      		</form>
          </div> 
           
        </div> 
      </div> 
 
      <footer> 
        <p>&copy; Hendry Suwanda 2011</p> 
      </footer> 
 
    </div> <!-- /container --> 
</body>
</html>