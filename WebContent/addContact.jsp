<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Contact</title>
<link rel="stylesheet" href="css/bootstrap-min.css">
</head>
<body>
	<div class="container">
		<jsp:include page="header.html" />
		<form class="form-horizontal" action="list" method="post">
        <div class="form-group">
        	<label class="control-label col-sm-2" for="firstname">First Name</label>
        	<div class="col-sm-10">
        		<input type="text" class="form-control" id="firstname" name="firstname" placeholder="Enter Firstname" />
        	</div>
        </div>
        
        <div class="form-group">
        	<label class="control-label col-sm-2" for="lastname">Last Name</label>
        	<div class="col-sm-10">
        		<input type="text" class="form-control" id="lastname" name="lastname" placeholder="Enter lastname" />
        	</div>
        </div>
        
        <div class="form-group">
        	<label class="control-label col-sm-2" for="mobileNumber">Mobile Number</label>
        	<div class="col-sm-10">
        		<input type="number" class="form-control" id="mobileNumber" name="mobileNumber" placeholder="Enter Contact Number" />
        	</div>
        </div>
        
        <div class="form-group">
        	<label class="control-label col-sm-2" for="address">Address</label>
        	<div class="col-sm-10">
        		<input type="text" class="form-control" id="address" name="address" placeholder="Enter Address" />
        	</div>
        </div>
        
        <div class="form-group">
        	<label class="control-label col-sm-2" for="email">Email</label>
        	<div class="col-sm-10">
        		<input type="email" class="form-control" id="email" name="email" placeholder="Enter Email" />
        	</div>
        </div>
        <div class="form-group">
        	<button type="submit" class="btn btn-success pull-right" style="margin-right:15px !important">Add Contact</button>
        </div>
      </form>
    </div>
</body>
</html>