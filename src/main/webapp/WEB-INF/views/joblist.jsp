<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Job Portal</title>


</head>
<body>
<div align="center">	
		
	<h1>Job Manager</h1>
	
	<a href="new">Create New Job</a>	
	    <div class="logout">     	
    </div>
	
	
	<br/><br/>
		<!--  form action="#" th:action="@{/index2}" th:object="${product}" method="post"-->
	<form th:action="@{/joblist}">
		Filter: <input type="text" name="keyword" id="keyword" size="50" th:value="${keyword}" required />
		&nbsp;
		<input type="submit" value="Search" />
		&nbsp;
		<input type="button" value="Clear" id="btnClear" onclick="clearSearch()" />
	</form>
	<br/><br/>
	
	<table border="1" cellpadding="10">
	
		<div th:if="${totaljob > 1}">
		Total Job: [[${totaljob}]]
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
		<thead>
			<tr>
				<th>Application ID</th>
				<th>Jobdesignation</th>
				<th>Department</th>
				<th>Salary</th>
				<th>Location</th>
				<th>Noticepriod</th>	
				<th>Job Type</th>
				<th>Job Description</th>	
					
				
				<th>Actions</th>				
			</tr>
		</thead>
		<tbody>
			<tr th:each="product : ${listProducts}">
				<td th:text="${product.applicationid}">Application ID</td>
				<td th:text="${product.jobdesignation}">jobdesignation</td>
				<td th:text="${product.department}">department</td>
				<td th:text="${product.salary}">salary</td>
				<td th:text="${product.location}">Location</td>
				<td th:text="${product.noticepriod}">notice priod</td>
				<td th:text="${product.jobtype}">jobtype</td>
				<td th:text="${product.jobdescription}">description</td>
				
				<td>
					<a href="@{'/edit/' + ${product.id}}">Edit</a>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="@{'/delete/' + ${product.id}}">Delete</a>
					<br><br>
<div class="sharethis-inline-share-buttons"></div>

				</td>
			</tr>
		</tbody>
	</table>
</div>
<script type="text/javascript">
	function clearSearch() {
		window.location = "[[@{/joblist}]]";
	}
</script>




</body>
</html>