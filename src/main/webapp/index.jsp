<html>
<head>
<title>!!!Hello Tomcat!!!!</title>
</head>
<body>
	<h1 style="color: green; font-size: 75px;" align="center"> *** Welcome to MPIT cloud Devops Training *** </h1>
	<h1 style="color: blue; font-size: 50px;">!!!Hello Tomcat!!!</h1>
	<p style="color: grey; font-size: 25px;" align="center>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
	
</body>
