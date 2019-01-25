<html>
<head>
<title>Hello World test!</title>
</head>
<body>
	<h1>Hello World test!</h1>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
</body>
