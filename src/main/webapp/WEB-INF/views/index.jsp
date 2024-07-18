<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
    <!-- Bootstrap CSS -->
    	
  
  
  
<title>&nbsp &nbsp &nbspjob portal</title>

  


</head>
<header>
<div id="a">

<h1 align="center">Job Portal</h1>

</div>

<div id="b">
<h2 align="center">Have a account?<h2>
<div align="center" id="c">
	<a href="/joblist">Job Manager</a>	
</div>

</div>

</header>

<body>

</div>

<footer id="con2">
<div id="vv">

	<form align="center" action="@{/}">
		Filter: <input type="text" name="keyword" id="keyword" size="50" value="${keyword}" required />
		&nbsp;
		<input type="submit" value="Search" />
		&nbsp;
		<input type="button" value="Clear" id="btnClear" onclick="clearSearch()" />
	</form>
	<br/><br/>
	
		<table align="center" border="1" cellpadding="10">
	
<div align="center" if="${totaljob > 1}">
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
					
				
				<th>Share</th>				
			</tr>
		</thead>
		<tbody>
			<tr each="product : ${listProducts}">
				<td text="${product.applicationid}">Application ID</td>
				<td text="${product.jobdesignation}">jobdesignation</td>
				<td text="${product.department}">department</td>
				<td text="${product.salary}">salary</td>
				<td text="${product.location}">Location</td>
				<td text="${product.noticepriod}">notice priod</td>
				<td text="${product.jobtype}">jobtype</td>
				<td text="${product.jobdescription}">description</td>
				
				<td>

<div class="sharethis-inline-share-buttons"></div>

				</td>
			</tr>
		</tbody>
	</table>
</div>
<script type="text/javascript">
	function clearSearch() {
		window.location = "[[@{/}]]";
	}
</script>


<br>
<div id="sf">


</div>
</footer>
</body>
</html>