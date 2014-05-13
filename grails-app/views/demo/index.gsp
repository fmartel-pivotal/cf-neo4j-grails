<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
	</head>
	<body>
		<h1>This page summarizes the cloud information available from CloudEnvironment()</h1>
		
		<p/>
		<h2>&nbsp;Cloud Details - Version 1:</h2>
		<br/>
			
				<table>
					<tr>
						<td width="50"><h3>server</h3></td><td></td>
					</tr>
					<tr>
						<td></td>
						<td>
							<ul>
								<li>name = ${cloudEnv.name}</li>
								<li>instance id = ${cloudEnv.instanceIndex}</li>
								<li>host = ${cloudEnv.host}</li>
								<li>port = ${cloudEnv.port}</li>
							</ul>
						</td>
					</tr>	
				<tr>
					<td><h3>services</h3></td><td></td>
				</tr>
				<g:each in="${cloudEnv.services}" var="p">
					 <tr>
					 	<td></td>
					 	<td>
					 		<ul>
					 	 		<li><b>${p.name}</b></li>
					 	 	
						 	 	<li>label : ${p.label}</li>
							 	<g:each in="${p.credentials}" var="p1,v1">
							 		<li> ${p1} : ${v1.toString().length() > 80?v1.toString().substring(0,79):v1}</li>
							 	</g:each>
						 	</ul>
						 <td>
					<tr/>
				</g:each>
				</table>
				</body>
</html>