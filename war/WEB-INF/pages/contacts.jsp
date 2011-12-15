<%@page import="com.hendrysuwanda.simplecrud.domain.Contact"%>
<%@page import="java.util.List"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        	width: 900px;
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
      .content .span10{
        min-height: 100px;
        width: 100%;
      }
      
      .row{
      	padding-right: 20px;
      	overflow:auto;
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
            <li class="active"><a href="contact">Contacts</a></li>
          </ul>  
        </div> 
      </div> 
    </div> 
 
    <div class="container"> 
 
      <div class="content"> 
        <div class="page-header"> 
          <h1>List of Contacts</h1> 
        </div>
        
        <div class="well">
			<button type="reset" class="btn  success" onclick="location.href='contact/add'">Add</button>
		</div>
         
        <div class="row"> 
          <div class="span10">
             <table class="bordered-table zebra-striped" width="100%">
             	<thead>
		          <tr>
		            <th>Code</th>
		            <th>First Name</th>
		            <th>Last Name</th>
		            <th>Sex</th>
		            <th>Handphone</th>
		            <th>Email</th>
		            <th>Action</th>
		          </tr>
		        </thead>
		        <tbody>
		        	<c:forEach var="dt" items="${data }">
		        		<tr>
		          			<td>${dt.code }</td>
		          			<td>${dt.firstName }</td>
		          			<td>${dt.lastName }</td>
		          			<td>${dt.sex }</td>
		          			<td>${dt.phone }</td>
		          			<td>${dt.email }</td>
		          			<td><a href="<%request.getContextPath(); %>/contact/update?code=${dt.code}">Update</a>/<a href="<%request.getContextPath(); %>/contact/delete?code=${dt.code}">Delete</a></td>
		          		</tr>
		        	</c:forEach>
		          		          		          
		        </tbody>
             </table>
           
          	</div> 
        </div> 
      </div> 
 
      <footer> 
        <p>&copy; Hendry Suwanda 2011</p> 
      </footer> 
 
    </div> <!-- /container --> 
</body>
</html>