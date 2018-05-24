<html>

<head><title> Student Confirmation Title</title></head>

<body>

	The Student is confirmed: ${param.firstName} ${param.lastName}
	
	<br/><br/>
	
	The Student's list of favorite languages is:
	
	<ul>
		<%
			String[] langs = request.getParameterValues("favoriteLanguage");	
			
			for (String tempLang: langs) {
				out.println("<li>" + tempLang + "</li>");
			}
		%>
	</ul>

</body>

</html>