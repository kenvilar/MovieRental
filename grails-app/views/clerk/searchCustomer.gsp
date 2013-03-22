<html>
<head>
	<title>Search Customer</title>
</head>
<body>
	
	<div>
		<g:form controller="clerk" action="searchForCustomerRecord">
			<input type="text" placeholder="Search" name="parameter" value="${parameter}">
			<input type="submit" value="Search">
		</g:form>
	</div>
	
	<div>
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
			</tr>
			
			<g:each in="${infos}" var="${info}">
				<tr>
					<td>${info.first_name}</td>
					<td>${info.last_name}</td>
					<td>
						<g:form controller="clerk" action="viewCustomerRecord">
							<input type="hidden" name="id" value="${info.id}">
							<input type="submit" value="View">
						</g:form>
					</td>
				</tr>
			</g:each>
		</table>
	</div>
	
	<div>
		<g:form controller="clerk" action="index">
			<input type="submit" value="Back">
		</g:form>		
	</div>

</body>
</html>