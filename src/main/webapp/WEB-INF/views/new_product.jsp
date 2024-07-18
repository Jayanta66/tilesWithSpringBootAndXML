<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<title>Create New Product</title>
</head>
<body>
	<div align="center">	
		<h1>Create New Job</h1>
		<br/>
		<form action="@{/save}"  method="post">
		
			<table border="0" cellpadding="10">
			
				<tr>
					<td>Application ID:</td>
					<td><input type="text" field="*{applicationid}" /></td>
				</tr>
				
				<tr>
					<td>Job Designation:</td>
					<td><input type="text" field="*{jobdesignation}" /></td>
				</tr>
				<tr>
					<td>Department:</td>
					<td><input type="text" field="*{department}" /></td>
				</tr>				
				<tr>
					<td>Salary:</td>
					<td><input type="text" field="*{salary}" /></td>
				</tr>				
				<tr>
					<td>Location:</td>
					<td><input type="text" field="*{location}" /></td>
				</tr>
								<tr>
					<td>Notice Priod:</td>
					<td><input type="text" field="*{noticepriod}" /></td>
				</tr>
				<tr>
					<td>Job Type:</td>
					<td><input type="text" field="*{jobtype}" /></td>
				</tr>
				<tr>
					<td>Job Description:</td>
					<td><input type="text" field="*{jobdescription}" /></td>
				</tr>
				
				<tr>
					<td colspan="2"><button type="submit">Save</button></td>
				</tr>
			</table>
</form>
	</div>
</body>
</html>