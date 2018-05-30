<html>

<head><title>Confirmation</title></head>

<%

	//read form data
	String favlang = request.getParameter("favoriteLanguage");

	//create the cookie
	Cookie theCookie = new Cookie("myApp.favoriteLanguage", favlang);
	
	//set the lifespan of the cookie in secs
	theCookie.setMaxAge(60*60*24*365); //<-- for one year in secs
	
	//send cookie to the browser
	response.addCookie(theCookie);
	
	

%>

<body>

	Thanks we set your favorite language to: ${param.favoriteLanguage}
	
	<br></br>
	
	<a href="cookies-homepage.jsp">Return to Homepage</a>

</body>

</html>