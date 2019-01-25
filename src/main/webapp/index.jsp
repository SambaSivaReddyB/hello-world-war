<html>
<head>
<title>Hello SambaSiva!</title>
</head>
<body>
	<h1>Hello SambaSiva!</h1>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
	<p> 
            <%
            String hostname, serverAddress;
            hostname = "error";
            serverAddress = "error";
            try {
                InetAddress inetAddress;
                inetAddress = InetAddress.getLocalHost();
                hostname = inetAddress.getHostName();
                serverAddress = inetAddress.toString();
            } catch (UnknownHostException e) {

                e.printStackTrace();
            }
            %>
            <li>InetAddress: <%=serverAddress %>
		<li>InetAddress.hostname: <%=hostname %></p>
</body>
