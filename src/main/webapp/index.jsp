<html>
<head>
<title>Hello Samba!</title>
</head>
<body>
	<h1>Hello Samba!</h1>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
</body>
